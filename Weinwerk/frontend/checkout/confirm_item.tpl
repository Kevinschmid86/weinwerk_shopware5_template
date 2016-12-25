{extends file="parent:frontend/checkout/confirm_item.tpl"}

{* Additional product relevant information *}
{block name='frontend_checkout_cart_item_details_inline'}
    <div class="product--essential-features">

        {if $sBasketItem.additional_details.attributes.kschmidExtendListing}
            {$sArticleProperties = $sBasketItem.additional_details.attributes.kschmidExtendListing->get('productProperties')}
            {foreach $sArticleProperties as $propertyGroup}
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


                {if $propertyGroup->getname() == "Allergene Stoffe"}
                    {foreach $propertyGroup->getOptions() as $propertyOption}
                        {$sStoffe = $propertyOption->getName()}
                    {/foreach}
                {/if}
            {/foreach}

            {if $sLand}
                    <strong>{s name='wwolffListingHerkunftLabel' namespace="frontend/listing"}Herkunft:{/s} </strong>
                    {if $sLand && $sGebiet}
                        <span class="label--information">{$sLand}, {$sGebiet}</span>
                    {elseif $sLand}
                        <span class="label--information">{$sLand}</span>
                    {elseif $sGebiet}
                        <span class="label--information">{$sGebiet}</span>
                    {/if}
            {/if}

            {if $sBasketItem.additional_details.attr6}
                <br/>
                <strong>{s name='wwolffListingJahrgangLabel' namespace="frontend/listing"}Jahrgang:{/s} </strong>
                <span class="label--information">{$sBasketItem.additional_details.attr6}</span>
            {/if}

            {if $sBasketItem.additional_details.supplierName}
                <br/>
                <strong>{s name='wwolffListingHerstellerLabel' namespace="frontend/listing"}Erzeuger:{/s} </strong>
                <span class="label--information">{$sBasketItem.additional_details.supplierName}</span>
            {/if}

        {elseif $sBasketItem.additional_details.description}
            {$sBasketItem.additional_details.description}
        {else}
            {$sBasketItem.additional_details.description_long|strip_tags|truncate:50}
        {/if}

    </div>
{/block}

