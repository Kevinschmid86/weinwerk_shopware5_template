{extends file='parent:frontend/listing/index.tpl'}

{* Wrap the content into a new element *}
{block name='frontend_index_content'}
    <div class="custom-listing-weinwerk">
        {$smarty.block.parent}
    </div>
{/block}

{* Exclude the topseller *}
{block name='frontend_listing_index_topseller'}
{/block}

{* Make the listing changes *}
{block name='frontend_listing_list_inline'}
    {$productBoxLayout = 'customWeinwerk'}
    <div class="custom-listing--listing">
        {foreach $sArticles as $sArticle}
            {include file='frontend/listing/product-box/box-weinwerk.tpl'}
        {/foreach}
    </div>
{/block}

