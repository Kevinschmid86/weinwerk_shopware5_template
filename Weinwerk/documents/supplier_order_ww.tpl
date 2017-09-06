{namespace name=backend/viison_pickware_erp_supplier_orders/document}
{extends file="parent:documents/supplier_order.tpl"}

{block name="document_index_table_head_nr"}
    {* Supplier and suppliernumber, instead of number only *}
    {block name="document_index_head_articlenumber"}<td width="15%" class="head"><strong>{s name=articleNumber}{/s}</strong></td>{/block}
    {block name="document_index_head_frabricatornumber"}<td width="20%" class="head"><strong>{s name=fabricatorNumber}{/s}</strong></td>{/block}
    {block name="document_index_head_frabricator"}<td width="20%" class="head"><strong>{s name=fabricator}{/s}</strong></td>{/block}
{/block}
{block name="document_index_table_head_name"}
    {* Article information (name, number, unit), instead of name only *}
    {block name="document_index_head_articlename"}
        <td width="25%" class="head"> <strong>{s name=articleName}{/s}</strong></td>
        <td width="10%" class="head"><strong>Jahrgang</strong></td>
    {/block}
    {block name="document_index_head_unit"}<td width="12%" class="head"><strong>{s name=unit}{/s}</strong></td>{/block}
    {block name="document_index_head_amount"}<td align="right" width="8%" class="head"><strong>{s name=quantity}{/s}</strong></td>{/block}
{/block}

{* Table content *}
{block name="document_index_table_each"}
    <tr>
        {block name="document_index_table_each_articlenumber"}<td>{$position.articlenumber}</td>{/block}
        {block name="document_index_table_each_ordernumber"}<td>{$position.article->getArticleDetail()->getSupplierNumber()}</td>{/block}
        {block name="document_index_table_each_fabricator"}<td>{$position.fabricator}</td>{/block}
        {block name="document_index_table_each_name"}
            <td>{$position.name}</td>
            <td>{$position.article->getArticleDetail()->getAttribute()->getAttr6()}</td>
        {/block}
        {block name="document_index_table_each_unit"}<td>{$position.unit}</td>{/block}
        {block name="document_index_table_each_orderAmount"}<td align="right">{$position.orderAmount}</td>{/block}
    </tr>
{/block}