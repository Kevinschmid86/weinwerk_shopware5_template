{extends file='parent:frontend/listing/product-box/box-basic.tpl'}

{block name='frontend_listing_box_article_info_container'}
    <div class="product--info">
        <div class="product--image--wrapper">
            {* Product image *}
            {block name='frontend_listing_box_article_picture'}
                {include file="frontend/listing/product-box/product-image.tpl"}

                {*Produktpreis unter das Bild *}
                <div class="product--price-info">

                    {* Product price - Unit price *}
                    {block name='frontend_listing_box_article_unit'}
                        {include file="frontend/listing/product-box/product-price-unit.tpl"}
                    {/block}

                    {* Product price - Default and discount price *}
                    {block name='frontend_listing_box_article_price'}
                        {include file="frontend/listing/product-box/product-price.tpl"}
                    {/block}
                </div>

            {/block}
        </div>

        <div class="product--info--wrapper">
            {* Customer rating for the product *}
            {block name='frontend_listing_box_article_rating'}
                <div class="product--rating-container">
                    {if $sArticle.sVoteAverage.average}
                        {include file='frontend/_includes/rating.tpl' points=$sArticle.sVoteAverage.average type="aggregated" label=false microData=false}
                    {/if}
                </div>
            {/block}

            {* Product name *}
            {block name='frontend_listing_box_article_name'}
                <a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}"
                   class="product--title"
                   title="{$sArticle.articleName|escapeHtml}">
                    {if $sArticle.attr4}
                        {$sArticle.articleName|truncate:50|escapeHtml} ({$sArticle.attr4})
                    {else}
                        {$sArticle.articleName|truncate:50|escapeHtml}
                    {/if}
                </a>
            {/block}

            {* Product description *}
            {block name='frontend_listing_box_article_description'}
                <div class="product--description">
                    <a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}"
                       class="product--title"
                       title="{$sArticle.articleName|escapeHtml}">

                        {if $sArticle.description_long}
                            {$sArticle.description_long|strip_tags|truncate:240}
                        {elseif $sArticle.description_long}
                            {$sArticle.description|strip_tags|truncate:240}
                        {else}
                            {s name='wwolffDetailNoDescription' namespace='frontend/detail'}{/s}
                        {/if}
                    </a>
                </div>
                <div class="product--additional--information">
                    {if $sArticle.attributes.kschmidExtendListing}
                        {$sArticleProperties = $sArticle.attributes.kschmidExtendListing->get('productProperties')}
                        {foreach $sArticleProperties as $propertyGroup}
                            {if $propertyGroup->getname() == "Alkoholgehalt"}
                                {foreach $propertyGroup->getOptions() as $propertyOption}
                                    {$sAlkohol = $propertyOption->getName()}
                                {/foreach}
                            {/if}

                            {if $propertyGroup->getname() == "Land"}
                                {foreach $propertyGroup->getOptions() as $propertyOption}
                                    {$sLand = $propertyOption->getName()}
                                {/foreach}
                            {/if}

                            {if $propertyGroup->getname() == "Gebiet"}
                                {foreach $propertyGroup->getOptions() as $propertyOption}
                                    {$sGebiet = $propertyOption->getName()}
                                {/foreach}
                            {/if}

                            {if $propertyGroup->getname() == "Jahrgang"}
                                {foreach $propertyGroup->getOptions() as $propertyOption}
                                    {$sJahrgang = $propertyOption->getName()}
                                {/foreach}
                            {/if}

                            {if $propertyGroup->getname() == "Traube"}
                                {foreach $propertyGroup->getOptions() as $propertyOption}
                                    {$myOptions = $myOptions|cat: $propertyOption->getName()|cat:","}
                                {/foreach}
                                {$lengthOpt = $myOptions|count_characters - 1}
                                {$sTraube = {$myOptions|substr:0:$lengthOpt}}
                            {/if}

                            {if $propertyGroup->getname() == "Geschmack"}
                                {foreach $propertyGroup->getOptions() as $propertyOption}
                                    {$sGeschmack = $propertyOption->getName()}
                                {/foreach}
                            {/if}
                        {/foreach}

                        {if $sArticle.supplierName && $sArticle.supplierName != "Default"}
                            <div class="row">
                                <label>Erzeuger:</label>
                                <span class="label--information">
                                    <a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
                                       class="content--link link--supplier"
                                       title="{"{s namespace="frontend/detail/description" name="DetailDescriptionLinkInformation"}{/s}"|escape}">
                                        {$sArticle.supplierName|escape}
                                    </a>
                                </span>
                            </div>
                        {/if}

                        {if $sJahrgang}
                            <div class="row">
                                <label>Jahrgang: </label>
                                <span class="label--information">{$sJahrgang}</span>
                            </div>
                        {/if}

                        {if $sLand}
                            <div class="row">
                                <label>Herkunft: </label>
                                <span class="label--information">{$sLand}, {$sGebiet}</span>
                            </div>
                        {/if}

                        {if $sGeschmack}
                            <div class="row">
                                <label>Geschmack: </label>
                                <span class="label--information">{$sGeschmack}</span>
                            </div>
                        {/if}

                        {if $sTraube}
                            <div class="row">
                                <label>Traube: </label>
                                <span class="label--information">{$sTraube}</span>
                            </div>
                        {/if}

                        {if $sAlkohol}
                            <div class="row">
                                <label>Alkoholgehalt: </label>
                                <span class="label--information">{$sAlkohol}%</span>
                            </div>
                        {/if}

                    {/if}
                </div>
            {/block}

            {block name='frontend_listing_box_article_price_info'}
            {/block}

            <div class="buying--box">
                {include file="frontend/detail/buy.tpl"}
            </div>

            {* Product actions - Compare product, more information, buy now *}
            {block name='frontend_listing_box_article_actions'}
                {include file="frontend/listing/product-box/product-actions.tpl"}
            {/block}
        </div>
    </div>
{/block}