{extends file="parent:widgets/listing/get_category.tpl"}
{namespace name="frontend/listing/get_category"}

{block name="widgets_listing_get_category_categories"}
    <ul class="sidebar--navigation categories--sublevel navigation--list" role="menu">

        {* Go back button *}
        {block name="widgets_listing_get_category_categories_back"}
            <li class="navigation--entry" role="menuitem">
                {block name="widgets_listing_get_category_categories_back_link"}
                    <a href="{url module=widgets controller=listing action=getCategory categoryId={$category.parentId}}" data-parentId="{$category.parentId}" class="navigation--link is--back-button link--go-back" title="{s name="ButtonBack"}{/s}">
                        {block name="widgets_listing_get_category_categories_back_link_arrow_left"}
                            <span class="is--icon-left">
                                        <i class="icon--arrow-left"></i>
                                    </span>
                        {/block}

                        {block name="widgets_listing_get_category_categories_back_link_name"}
                            {s name="ButtonBack"}{/s}
                        {/block}
                    </a>
                {/block}
            </li>
        {/block}

        {* Show this category button *}
        {block name="widgets_listing_get_category_categories_show"}
            <li class="navigation--entry" role="menuitem">
                {block name="widgets_listing_get_category_categories_show_link"}
                    <a href="{$category.link}" title="{s name="ButtonShowPrepend"}{/s} {$category.name|escape} {s name="ButtonShowAppend"}{/s}" class="navigation--link is--display-button">
                        {block name="widgets_listing_get_category_categories_show_link_name"}
                            {s name="ButtonShowPrepend"}{/s} {$category.name} {s name="ButtonShowAppend"}{/s}
                        {/block}
                    </a>
                {/block}
            </li>
        {/block}

        {* sub categories *}
        {* Check if automatic sort is activated *}
        {if $category.attribute.attribute1 == 1}
            {foreach $category.children|@sortby:"name" as $children}
                {block name="widgets_listing_get_category_categories_item"}
                    {if $children.active}
                        <li class="navigation--entry" role="menuitem">
                            {block name="widgets_listing_get_category_categories_item_link"}
                                <a href="{$children.link}" title="{$children.name|escape}"
                                   class="navigation--link{if $children.childrenCount} link--go-forward{/if}"
                                   data-category-id="{$children.id}"
                                   data-fetchUrl="{url module=widgets controller=listing action=getCategory categoryId={$children.id}}">

                                    {block name="widgets_listing_get_category_categories_item_link_name"}
                                        {$children.name}
                                    {/block}

                                    {block name="widgets_listing_get_category_categories_item_link_children"}
                                        {if $children.childrenCount}
                                            <span class="is--icon-right">
                                                    <i class="icon--arrow-right"></i>
                                                </span>
                                        {/if}
                                    {/block}
                                </a>
                            {/block}
                        </li>
                    {/if}
                {/block}
            {/foreach}
        {else}
            {* Default Shopware Category Sorting *}
            {foreach $category.children as $children}
                {block name="widgets_listing_get_category_categories_item"}
                    {if $children.active}
                        <li class="navigation--entry" role="menuitem">
                            {block name="widgets_listing_get_category_categories_item_link"}
                                <a href="{$children.link}" title="{$children.name|escape}"
                                   class="navigation--link{if $children.childrenCount} link--go-forward{/if}"
                                   data-category-id="{$children.id}"
                                   data-fetchUrl="{url module=widgets controller=listing action=getCategory categoryId={$children.id}}">

                                    {block name="widgets_listing_get_category_categories_item_link_name"}
                                        {$children.name}
                                    {/block}

                                    {block name="widgets_listing_get_category_categories_item_link_children"}
                                        {if $children.childrenCount}
                                            <span class="is--icon-right">
                                                    <i class="icon--arrow-right"></i>
                                                </span>
                                        {/if}
                                    {/block}
                                </a>
                            {/block}
                        </li>
                    {/if}
                {/block}
            {/foreach}
        {/if}

    </ul>
{/block}