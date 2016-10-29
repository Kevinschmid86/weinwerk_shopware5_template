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

{block name='frontend_detail_description_title'}
    <div class="content--title">
       {$sArticle.articleName}
    </div>
{/block}

{* Properties Nur Land, Gebiet und Jahrgang*}
{block name='frontend_detail_description_properties'}
    {if $sArticle.sProperties}
        <div class="product--properties panel has--border">
            <table class="product--properties-table">
                {* Jahrgang ausgeben vor der eigentlichen Tabelle *}
                {if $sArticle.attr6}
                    <tr class="product--properties-row">
                        <td class="product--properties-label is--bold">
                            {s name="wwolffDetailJahrgangLabel"}Jahrgang:{/s}
                        </td>
                        <td class="product--properties-value">
                            {$sArticle.attr6}
                        </td>
                    </tr>
                {/if}
                {foreach $sArticle.sProperties as $sProperty}
                    {if $sProperty.name != "Land" && $sProperty.name != "Gebiet"}
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