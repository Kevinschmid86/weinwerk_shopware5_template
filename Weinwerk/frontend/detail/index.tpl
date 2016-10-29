{extends file="parent:frontend/detail/index.tpl"}


{*Zusatz an Produktnamen ranbringen falls vorhanden *}
{* Product name *}
{block name='frontend_detail_index_name'}
    <h1 class="product--title" itemprop="name">
        {if $sArticle.attr4}
            {$sArticle.articleName} ({$sArticle.attr4})

            {if $sArticle.attr6}
                - {$sArticle.attr6}
            {/if}

        {else}
            {$sArticle.articleName}

            {if $sArticle.attr6}
                - {$sArticle.attr6}
            {/if}

        {/if}
    </h1>
{/block}

{* Erweiterung der Auflistung der Zusatzattribute unterhalb des Warenkorbs und den ausgebenden Attributen *}
{block name="frontend_detail_data_attributes_attr2"}

    {$smarty.block.parent}

    {if $sArticle.supplierName && $sArticle.supplierName != "Default"}
        <li class="base-info--entry entry-attribute">
            <strong class="entry--label">
                {s name="wwolffDetailErzeugerLabel"}Erzeuger:{/s}
            </strong>
            <span class="entry--content">
                <a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
                   class="content--link link--supplier"
                   title="{"{s namespace="frontend/detail/description" name="DetailDescriptionLinkInformation"}{/s}"|escape}">
                   {$sArticle.supplierName|escape}
                </a>
            </span>
        </li>
    {/if}

    {foreach $sArticle.sProperties as $sProperty}
        {if $sProperty.name == "Land" || $sProperty.name == "Gebiet"}
            <li class="base-info--entry entry-attribute">
                <strong class="entry--label">
                    {$sProperty.name|escape}:
                </strong>
                <span class="entry--content">
                    {$sProperty.value|escape}
                </span>
            </li>
        {/if}
    {/foreach}

{/block}