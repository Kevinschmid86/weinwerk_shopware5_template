{namespace name=backend/viison_pickware_erp_supplier_orders/document}
{extends file="parent:documents/supplier_order.tpl"}

{block name="document_index_head_articlename"}
    {$smarty.block.parent}
    <td width="10%" class="head">
        <strong>Jahrgang</strong>
    </td>
{/block}

{block name="document_index_table_each_name"}
    {$smarty.block.parent}

    <td>
        {$position.article->getArticleDetail()->getAttribute()->getAttr6()}
    </td>
{/block}