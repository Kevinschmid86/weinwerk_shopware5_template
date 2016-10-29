{extends file="parent:frontend/detail/tabs.tpl"}
{namespace name="frontend/detail"}

{* Adding new Link Geschmack und Sonstiges*}
{block name="frontend_detail_tabs_description"}

    {$smarty.block.parent}

    {* Sofern ein Erzeuger vorhanden ist und nicht auf Default steht, soll ein neuer Tab Weinmacher aufgemacht werden *}
    {if $sArticle.supplierName && $sArticle.supplierName != "Default"}
        <a href="#" class="tab--link" title="{s name="wwolffDetailTabLinkWeinmacher"}Weinmacher{/s}" data-tabname="weinmacher">{s name="wwolffDetailTabLinkWeinmacher"}Weinmacher{/s}</a>
    {/if}

{/block}

{*Adding new Content Element tab Geschmack und Sonstiges *}
{block name="frontend_detail_tabs_content_description"}

    {$smarty.block.parent}

    {* Sofern ein Erzeuger vorhanden ist und nicht auf Default steht, soll ein neuer Tab Weinmacher aufgemacht werden *}
    {if $sArticle.supplierName && $sArticle.supplierName != "Default"}
        <div class="tab--container">
            <div class="tab--header">
                <a href="#" class="tab--title" title="{s name='wwolffDetailTabHeaderWeinmacher'}Weinmacher{/s}">{s name='wwolffDetailTabHeaderWeinmacher'}Weinmacher{/s}</a>
            </div>

            <div class="tab--preview">
                {s name='wwolffDetailPreviewMobileWeinmacher'}Hintergrundinformationen zum Erzeuger: {$sArticle.supplierName}{/s}
                <a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">{s name="PreviewTextMore"}{/s}</a>
            </div>

            <div class="tab--content">
                {include file="frontend/detail/tabs/weinmacher.tpl"}
            </div>
        </div>
    {/if}

{/block}