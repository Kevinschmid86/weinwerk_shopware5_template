
{extends file="parent:frontend/detail/tabs/description.tpl"}
{namespace name="frontend/detail"}

{block name="frontend_detail_description"}
    <div class="content--description">
        <div class="content--title">
            {$sArticle.supplierName}
        </div>
        <div class="content-description">
            {if $sArticle.supplierDescription != ""}
                <div class="product--description">
                    {$sArticle.supplierDescription}
                </div>
            {/if}

            {* Ausgabe der Geschmacksrichtung, Laune und Produktart *}
            {if $sArticle.sProperties}
                <div class="product--properties panel vendor--properties">
                    <table class="product--properties-table product--properties-table-vendor">
                        {foreach $sArticle.sProperties as $sProperty}
                            {if $sProperty.name == "Land" || $sProperty.name == "Gebiet"}
                                <tr class="product--properties-row">
                                    {* Property label *}
                                    <td class="product--properties-label is--bold">{$sProperty.name|escape}:</td>
                                    <td class="product--properties-value">{$sProperty.value|escape}</td>
                                </tr>
                            {/if}
                        {/foreach}

                        {if $sArticle.supplier_attributes.core->get("supplieraddress")}
                            <tr class="product--properties-row">
                                <td class="product--properties-label is--bold"> {s name='wwolffTabSonstigesErzeugerAdresse'}Erzeuger Adresse:{/s}</td>
                                <td class="product--properties-value">{$sArticle.supplier_attributes.core->get("supplieraddress")|escape}</td>
                            </tr>
                        {/if}
                    </table>

                    {* Sofern ein Herstellerbild existiert soll dieses hier ausgegeben werden *}
                    {if $kschmidManufacturerImage}
                        <div class="vendor--image--container">
                            {if isset($kschmidManufacturerImage.thumbnails[1].sourceSet)}
                                <img class ="vendor--image" srcset="{$kschmidManufacturerImage.thumbnails[1].sourceSet}"
                                     alt="{$kschmidManufacturerImage.description|escape}"
                                     title="{$sArticle.supplierName|truncate:160}" />
                            {else}
                                <img class="vendor--image" src="{link file=$kschmidManufacturerImage.source}"
                                     alt="{$kschmidManufacturerImage.description|escape}"
                                     title="{$sArticle.supplierName|truncate:160}" />
                            {/if}
                        </div>
                    {/if}

                </div>
            {/if}

        </div>
    </div>
{/block}

