{extends file="parent:frontend/detail/data.tpl"}

{* Die Inhaltsberechnung soll immer ausgegeben werden, auch wenn der Inhalt beispielsweise 1 Liter ist *}
{block name='frontend_detail_data_price'}
    <div class='product--price price--unit'>
        {* Unit price label *}
        {block name='frontend_detail_data_price_unit_label'}
            <span class="price--label label--purchase-unit">
                {s name="DetailDataInfoContent"}{/s}
            </span>
        {/block}

        {* Unit price content *}
        {block name='frontend_detail_data_price_unit_content'}
            {$sArticle.purchaseunit} {$sArticle.sUnit.description}
        {/block}

        {* Unit price is based on a reference unit *}
        {if $sArticle.purchaseunit}
            {* Reference unit price content *}
            {block name='frontend_detail_data_price_unit_reference_content'}
                ({$sArticle.referenceprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}
                / {$sArticle.referenceunit} {$sArticle.sUnit.description})
            {/block}
        {/if}
    </div>
{/block}