{extends file="parent:frontend/listing/text.tpl"}

{* Erweiterung Kategorie Top Bereich damit das Kategoriebild hier nun auch im Frontend ausgegeben wird *}
{block name="frontend_listing_text_headline" prepend}
    {* Check if thumbnails exists *}
    {if isset($sCategoryContent.media.thumbnails)}
        <div class="hero--mediafile">
            <img srcset="{$sCategoryContent.media.thumbnails[1].sourceSet}"
                 alt="{$sCategoryContent.media.description}"
                 title="{$sCategoryContent.media.description|truncate:160}" />
        </div>
    {/if}
{/block}