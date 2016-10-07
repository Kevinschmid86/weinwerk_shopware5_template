{extends file="parent:frontend/detail/tabs/description.tpl"}
{namespace name="frontend/detail"}

{* Produktbeschreibung anpassen, wenn Langtext nicht da dann muss der Kurztext ausgegeben werden *}
{* Product description *}
{block name='frontend_detail_description_text'}
    <div class="product--description" itemprop="description">
        {if $sArticle.description_long}
            {$sArticle.description_long}
        {elseif $sArticle.description}
            {$sArticle.description}
        {else}
            {s name="wwolffDetailNoDescription"}Keine Produktbeschreibung verfügbar{/s}
        {/if}
    </div>
{/block}


{block name='frontend_detail_description_properties' prepend}
    {* Erzeugerbeschreibung anfügen wenn vorhanden *}
    {if $sArticle.supplierDescription != ""}
        <div class="content--title">
            {s name="wwolffDetailErzeugerDetailBeschreibungsHeader"}Hintergrundinformationen zu Erzeuger "{$sArticle.supplierName|escape}"{/s}
        </div>
        <div class="product--description">
            {$sArticle.supplierDescription}
        </div>
    {/if}

{/block}

{* Properties Nur Land, Gebiet und Jahrgang*}
{block name='frontend_detail_description_properties'}
    {if $sArticle.sProperties}
        <div class="product--properties panel has--border">
            <table class="product--properties-table">
                {* Zusätzlich noch den Erzeuger hier mit ausgeben *}
                {if $sArticle.supplierName && $sArticle.supplierName != "Default"}
                    <tr class="product--properties-row">
                        <td class="product--properties-label is--bold">{s name="wwolffDetailErzeugerLabel"}Erzeuger:{/s}</td>
                        <td class="product--properties-value">{$sArticle.supplierName|escape}</td>
                    </tr>
                {/if}
                {foreach $sArticle.sProperties as $sProperty}
                    {if $sProperty.name == "Land" || $sProperty.name == "Gebiet" || $sProperty.name == "Jahrgang"}
                        <tr class="product--properties-row">
                            {* Property label *}
                            {block name='frontend_detail_description_properties_label'}
                                <td class="product--properties-label is--bold">{$sProperty.name|escape}:</td>
                            {/block}

                            {* Property content *}
                            {block name='frontend_detail_description_properties_content'}
                                <td class="product--properties-value">{$sProperty.value|escape}</td>
                            {/block}
                        </tr>
                    {/if}
                {/foreach}
            </table>
        </div>
    {/if}
{/block}