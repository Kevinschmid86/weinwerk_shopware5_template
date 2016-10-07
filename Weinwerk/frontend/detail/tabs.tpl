{extends file="parent:frontend/detail/tabs.tpl"}
{namespace name="frontend/detail"}

{block name="frontend_detail_tabs_navigation_inner" prepend}
    {* Ermittlug ob ein Geschmack im Artikel hängt, ansonsten wird der Geschmackstab nicht angezeigt *}
    {if $sArticle.sProperties}
        {foreach $sArticle.sProperties as $sProperty}
            {if $sProperty.name == "Geschmack"}
                {$sGeschmack = $sProperty.value}
            {/if}
        {/foreach}
    {/if}
{/block}

{* Adding new Link Geschmack und Sonstiges*}
{block name="frontend_detail_tabs_description" append}
    {if $sGeschmack}
        <a href="#" class="tab--link" title="{s name="wwolffDetailTabLinkGeschmack"}Geschmack{/s}" data-tabname="geschmack">{s name="wwolffDetailTabLinkGeschmack"}Geschmack{/s}</a>
    {/if}

    {* Link Sonstiges *}
    <a href="#" class="tab--link" title="{s name="wwolffDetailTabLinkSonstiges"}Sonstiges{/s}" data-tabname="sonstiges">{s name="wwolffDetailTabLinkSonstiges"}Sonstiges{/s}</a>
{/block}

{*Adding new Content Element tab Geschmack und Sonstiges *}
{block name="frontend_detail_tabs_content_description" append}
    {* Prüfe ob ein Geschmack gesetzt ist und zeige nur dann den Inhalt von Geschmack an *}
    {* Tab Content Geschmack *}
    {if $sGeschmack}
        <div class="tab--container">
            <div class="tab--header">
                <a href="#" class="tab--title" title="{s name='wwolffDetailTabHeaderGeschmack'}Geschmack{/s}">{s name='wwolffDetailTabHeaderGeschmack'}Geschmack{/s}</a>
            </div>

            <div class="tab--preview">
                {s name='wwolffDetailPreviewMobileGeschmack'}Hintergrundinformationen zum Geschmack{/s}
                <a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">{s name="PreviewTextMore"}{/s}</a>
            </div>

            <div class="tab--content">
                {include file="frontend/detail/tabs/geschmack.tpl"}
            </div>
        </div>
    {/if}

    {* Tab Content Sonstiges*}
    <div class="tab--container">
        <div class="tab--header">
            <a href="#" class="tab--title" title="{s name='wwolffDetailTabHeaderSonstiges'}Weitere Informationen{/s}">{s name='wwolffDetailTabHeaderSonstiges'}Weitere Informationen{/s}</a>
        </div>

        <div class="tab--preview">
            {s name='wwolffDetailPreviewMobileSonstiges'}Weiterführende Informationen{/s}
            <a href="#" class="tab--link" title="{s name="PreviewTextMore"}{/s}">{s name="PreviewTextMore"}{/s}</a>
        </div>

        <div class="tab--content">
            {include file="frontend/detail/tabs/sonstige.tpl"}
        </div>
    </div>
{/block}