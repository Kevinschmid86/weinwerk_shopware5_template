{extends file="parent:documents/index.tpl"}

{* Abteilung noch mit in die Rechnung mitaufgenommen*}
{block name="document_index_address_base"}
    {$User.$address.company}<br />
    {$User.$address.salutation|salutation}
    {if {config name="displayprofiletitle"}}
        {$User.$address.title}<br/>
    {/if}
    {$User.$address.firstname} {$User.$address.lastname}<br />
    {* Neu die Abteilung hier miteingebaut *}
    {if $User.$address.department}
        {$User.$address.department}<br/>
    {/if}
    {$User.$address.street}<br />
{/block}

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

{* Kommentarfeld über den Betreff mitauswerten *}
{block name="document_index_head_bottom"}

    <h1>{s name="DocumentIndexInvoiceNumber"}Rechnung Nr. {$Document.id}{/s}</h1>

    {if $Order._order.attributes.attribute1}
        <h3>{$Order._order.attributes.attribute1}</h3>
    {/if}

    {s name="DocumentIndexPageCounter"}Seite {$page+1} von {$Pages|@count}{/s}

{/block}