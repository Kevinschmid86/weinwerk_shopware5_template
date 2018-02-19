
{extends file="parent:frontend/detail/tabs/description.tpl"}
{namespace name="frontend/detail"}

{block name="frontend_detail_description"}
    <div class="content--description">
        <div class="content--title">
            {s name='wwolffDetailTabHeaderNaehrwerte'}Nährwerte{/s}
        </div>
        <div class="content-description">

            <div class="product--description">
                {s name="wwolffDetailNaehrwerteInfo"}Nährwertdeklaration | Nährwertangaben pro 100 g - lt. Herstellerangabe (Angaben in gram){/s}
            </div>

            {* Ausgabe aller Eigenschaften aus den Nährwerten *}
            {if $sArticle.sProperties}
                <div class="product--properties panel vendor--properties">
                    <table class="product--properties-table product--properties-table-vendor">
                        {foreach $sArticle.sProperties as $sProperty}
                            {if $sProperty.name != "Allergene Stoffe" && $sProperty.name != "Alkoholgehalt in vol.%" && $sProperty.name != "Herkunft"}
                                <tr class="product--properties-row">
                                    {* Property label *}
                                    <td class="product--properties-label is--bold">{$sProperty.name|escape}:</td>
                                    <td class="product--properties-value">{$sProperty.value|escape}</td>
                                </tr>
                            {/if}
                        {/foreach}
                    </table>
                </div>
            {/if}

        </div>
    </div>
{/block}

