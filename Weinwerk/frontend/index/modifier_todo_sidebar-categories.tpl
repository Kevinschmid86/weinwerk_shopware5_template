{extends file="parent:frontend/index/sidebar-categories.tpl"}

{block name="frontend_index_categories_left_entry_subcategories"}
    {if $category.subcategories}
        {if $category.attribute.attribute1 == 1 && $Controller != 'checkout'}
            {call name=categories categories=$category.subcategories|@sortby:"name" level=$level+1}
        {else}
            {call name=categories categories=$category.subcategories level=$level+1}
        {/if}
    {/if}
{/block}