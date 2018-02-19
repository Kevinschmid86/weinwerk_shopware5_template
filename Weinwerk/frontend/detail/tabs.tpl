{extends file="parent:frontend/detail/tabs.tpl"}
{namespace name="frontend/detail"}

{* Adding new Link Geschmack und Sonstiges*}
{block name="frontend_detail_tabs_description"}

    {$smarty.block.parent}

    {* Sofern ein Erzeuger vorhanden ist und nicht auf Default steht, soll ein neuer Tab Weinmacher aufgemacht werden *}
    {if $sArticle.supplierName && $sArticle.supplierName != "Default"}
        <a href="#" class="tab--link" title="{s name="wwolffDetailTabLinkWeinmacher"}Weinmacher{/s}" data-tabname="weinmacher">{s name="wwolffDetailTabLinkWeinmacher"}Weinmacher{/s}</a>
    {/if}

    {* Sofern Nährwerte als Eigenschaft gepflegt sind, diese als eingenen Reiter bereitstellen *}
    {foreach $sArticle.sProperties as $sProperty}
        {if $sProperty.groupName == "Nährwerte"}
            <a href="#" class="tab--link" title="{s name="wwolffDetailTabLinkNährwerte"}Nährwerte{/s}" data-tabname="naehrwerte">{s name="wwolffDetailTabLinkNährwerte"}Nährwerte{/s}</a>
            {break}
        {/if}
    {/foreach}

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
                <a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">mehr{s name="PreviewTextMore"}mehr{/s}</a>
            </div>

            <div class="tab--content">
                {include file="frontend/detail/tabs/weinmacher.tpl"}
            </div>
        </div>
    {/if}

    {* Sofern Nährwerte Eigenschaften gepflegt sind, sind diese in einen eigenen Tab zu bringen *}
    {foreach $sArticle.sProperties as $sProperty}
        {if $sProperty.groupName == "Nährwerte"}
            <div class="tab--container">
                <div class="tab--header">
                    <a href="#" class="tab--title" title="{s name='wwolffDetailTabHeaderNaehrwerte'}Nährwerte{/s}">{s name='wwolffDetailTabHeaderNaehrwerte'}Nährwerte{/s}</a>
                </div>

                <div class="tab--preview">
                    {s name='wwolffDetailPreviewMobileNaehrwerte'}Nährwertinformationen zum Produkt{/s}
                    <a href="#" class="tab--link" title="{s name="PreviewTextMoreNaehrwerte"}weitere Nährwertinformationen{/s}">{s name="PreviewTextMoreNaehrwerte"}mehr{/s}</a>
                </div>

                <div class="tab--content">
                    {include file="frontend/detail/tabs/naehrwerte.tpl"}
                </div>
            </div>
            {break}
        {/if}
    {/foreach}

{/block}