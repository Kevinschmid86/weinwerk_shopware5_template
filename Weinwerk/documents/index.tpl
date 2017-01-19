{extends file="parent:documents/index.tpl"}

{* Anpassung Empfänger - Adresszusatz soll immer ausgegeben werden, auch wenn der nicht im Frontend zur Verfügung steht*}
{block name="document_index_address_additionalAddressLines"}
    {if $User.$address.additional_address_line1}
        {$User.$address.additional_address_line1}<br />
    {/if}

    {if $User.$address.additional_address_line2}
        {$User.$address.additional_address_line2}<br />
    {/if}
{/block}

{block name="document_index_table_head_name"}
    <td align="left" width="12%" class="head">
        <strong>Hersteller</strong>
    </td>
    <td align="left" width="7%" class="head">
        <strong>Jahrgang</strong>
    </td>
    <td align="left" width="32%" class="head">
        <strong>{s name="DocumentIndexHeadName"}{/s}</strong>
    </td>
{/block}

{block name="document_index_table_name"}
    <td align="left" width="12%" valign="top">
        {$position.meta.supplierName}
    </td>

    <td align="left" width="7%" valign="top">
        {$position.attr6}
    </td>
    <td align="left" width="32%" valign="top">
        {if $position.name == 'Versandkosten'}
            {s name="DocumentIndexPositionNameShippingCosts"}{$position.name}{/s}
        {else}
            {s name="DocumentIndexPositionNameDefault"}{$position.name|nl2br}{/s}
        {/if}
    </td>
{/block}