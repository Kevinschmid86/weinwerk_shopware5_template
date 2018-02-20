{extends file='parent:frontend/listing/product-box/product-actions.tpl'}
{namespace name="frontend/listing/box_article"}

{* Note button *}
{block name='frontend_listing_box_article_actions_save'}
    {$smarty.block.parent}

    <form action="{$sArticle.linkDetails}">
        <button type="submit"
                title="{"{s name='DetailLinkFoodInfo'}Info Lebensmittelkennzeichnung{/s}"|escape}"
                class="product--action">
            <i class="icon--info"></i> <span class="action--text">{s name="DetailLinkFoodInfo"}Info Lebensmittelkennzeichnung{/s}</span>
        </button>
    </form>
{/block}