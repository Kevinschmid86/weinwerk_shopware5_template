{extends file="parent:frontend/plugins/advanced_menu/index.tpl"}

{block name="frontend_plugins_advanced_menu"}
    {foreach $sAdvancedMenu as $mainCategory}
        {if !$mainCategory.active || $mainCategory.hideTop}
            {continue}
        {/if}

        {$link = $mainCategory.link}
        {if $mainCategory.external}
            {$link = $mainCategory.external}
        {/if}

        {$hasCategories = $mainCategory.activeCategories > 0  && $columnAmount < 4}
        {$hasTeaser = (!empty($mainCategory.media) || !empty($mainCategory.cmsHeadline) || !empty($mainCategory.cmsText)) && $columnAmount > 0}

        <div class="menu--container margin--menu--{$mainCategory.position}">
            {block name="frontend_plugins_advanced_menu_main_container"}
                <div class="button-container">
                    {block name="frontend_plugins_advanced_menu_button_category"}
                    {/block}

                    {block name="frontend_plugins_advanced_menu_button_close"}
                    {/block}
                </div>

                {if $hasCategories || $hasTeaser}
                    <div class="content--wrapper{if $hasCategories} has--content{/if}{if $hasTeaser} has--teaser{/if}">
                        {if $hasCategories}
                            {block name="frontend_plugins_advanced_menu_sub_categories"}
                                {call name="categories_top" categories=$mainCategory.sub}
                            {/block}
                        {/if}

                        {if $hasTeaser}
                            {block name="frontend_plugins_advanced_menu_teaser"}
                                {if $hasCategories}
                                    <div class="menu--delimiter" style="right: {$columnAmount * 25}%;"></div>
                                {/if}
                                <div class="menu--teaser"{if $hasCategories} style="width: {$columnAmount * 25}%;"{else} style="width: 100%;"{/if}>
                                    {if !empty($mainCategory.media)}
                                        <a href="{$link|escapeHtml}" title="{s name="toCategoryBtn" namespace="frontend/plugins/advanced_menu/advanced_menu"}{/s}{$mainCategory.name|escape:'html'}" class="teaser--image" style="background-image: url({link file={$mainCategory.media.path}});"></a>
                                    {/if}

                                    {if !empty($mainCategory.cmsHeadline)}
                                        <div class="teaser--headline">{$mainCategory.cmsHeadline}</div>
                                    {/if}

                                    {if !empty($mainCategory.cmsText)}
                                        <div class="teaser--text">
                                            {$mainCategory.cmsText|strip_tags|truncate:250:"..."}
                                            <a class="teaser--text-link" href="{$link|escapeHtml}" title="{s name="learnMoreLink" namespace="frontend/plugins/advanced_menu/advanced_menu"}mehr erfahren{/s}">
                                                {s name="learnMoreLink" namespace="frontend/plugins/advanced_menu/advanced_menu"}mehr erfahren{/s}
                                            </a>
                                        </div>
                                    {/if}
                                </div>
                            {/block}
                        {/if}
                    </div>
                {/if}
            {/block}
        </div>
    {/foreach}
{/block}