{extends file='parent:frontend/listing/manufacturer.tpl'}

{* Actual listing *}
{block name="frontend_listing_list_inline"}
    {$productBoxLayout = 'customWeinwerk'}
    <div class="custom-listing--listing">
        {foreach $sArticles as $sArticle}
            {include file='frontend/listing/product-box/box-weinwerk.tpl'}
        {/foreach}
    </div>
{/block}