{extends file="parent:documents/index_ls.tpl"}

{block name="document_index_head_bottom"}

    {if $Order._order.attributes.attribute1}
        <h3>{$Order._order.attributes.attribute1}</h3>
    {/if}

    <h1>{s name="DocumentIndexShippingNumber"}{/s} {$Document.id}</h1>
    {s name="DocumentIndexPageCounter"}{/s}
{/block}