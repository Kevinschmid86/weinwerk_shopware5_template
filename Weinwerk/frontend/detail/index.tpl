{extends file="parent:frontend/detail/index.tpl"}


{*Zusatz an Produktnamen ranbringen falls vorhanden *}
{* Product name *}
{block name='frontend_detail_index_name'}
    <h1 class="product--title" itemprop="name">
        {if $sArticle.attr4}
            {$sArticle.articleName} ({$sArticle.attr4})
        {else}
            {$sArticle.articleName}
        {/if}
    </h1>
{/block}

{* Erweiterung der Auflistung der Zusatzattribute unterhalb des Warenkorbs und den ausgebenden Attributen *}
{block name="frontend_detail_data_attributes_attr2" append}
    {if $sArticle.supplierName && $sArticle.supplierName != "Default"}
        <li class="base-info--entry entry-attribute">
            <strong class="entry--label">
                {s name="wwolffDetailErzeugerLabel"}Erzeuger:{/s}
            </strong>
            <span class="entry--content">
                {$sArticle.attr2|escape}
                <a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
                   class="content--link link--supplier"
                   title="{"{s namespace="frontend/detail/description" name="DetailDescriptionLinkInformation"}{/s}"|escape}">
                   {$sArticle.supplierName|escape}
                </a>
            </span>
        </li>
    {/if}
{/block}