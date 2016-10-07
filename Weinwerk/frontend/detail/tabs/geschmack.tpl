{extends file="parent:frontend/detail/tabs/description.tpl"}
{namespace name="frontend/detail"}

{block name="frontend_detail_description"}
    <div class="content--description">
        <div class="content--title">
            {if $sGeschmack != ""}
                {s name='wwolffDetailGeschmackContentTitle'}Geschmacksbeschreibung{/s}
            {/if}
        </div>
        <div class="content-description">
            {if $sGeschmack != ""}
                {if $sGeschmack == "Weißweine leicht, trocken"}
                    {s name='wwolffDetailGeschmackWeißweinLeichtTrocken'}Trocken, leichte Fruchtigkeit, oft spürbare Säure, feine Art. Dieser Typ eignet sich i.d.R. hervorragend als Aperitif, passt zu Speisen wie Fisch, Meeresfrüchte, Gemüse, Pilze sowie zu allen Speisen die nicht zu würzig sind.{/s}
                {elseif $sGeschmack == "Weißweine mittelkräftig, trocken"}
                    {s name='wwolffDetailGeschmackWeißweinMittelKräftigTrocken'}Trocken, mittlere bis kräftige Fruchtigkeit, leicht würzige Art, oft elegant. Dieser Typ eignet sich i.d.R. als Begleiter vieler Speisen, so z.B. Suppen, Kartoffelgerichten, Alles mit Lauch und Zwiebeln, einige Käsesorten und Speisen mit Tomatensaucen.{/s}
                {elseif $sGeschmack == "Weißweine kräftig/würzig, trocken"}
                    {s name='wwolffDetailGeschmackWeißweinKräftigWürzigTrocken'}Trocken, manchmal leicht liebliche Erscheinung (insbesondere durch natürlich höheren Alkohol und Glyzeringehalt), meist würzig, intensive Fruchtigkeit, evtl. Holztöne bei Barrique-Ausbau. Dieser Typ eignet sich zu kräftigeren Speisen, so zu hellem Wild, Geflügel, kräftige Käsesorten, bedingt zu Salaten und hervorragend solo zum geniessen.{/s}
                {elseif $sGeschmack == "Rotweine kraftvoll, trocken, Barriqueausbau"}
                    {s name='wwolffDetailGeschmackRotweinKraftvollTrockenBarriqueausbau'}Trocken, kräftige Gerbstoffe, oft reife Fruchtnoten, vielschichtig, je nach Art kraftvoll bis wuchtig, jedoch mit zusätzlichen, mehr oder weniger intensiven Holztönen durch den Ausbau in Barriquefässern aus französischem und/oder amerikanischem Eichenholz. Die Reife spielt bei diesen Weinen eine erhebliche Rolle für den Genuß.{/s}
                {elseif $sGeschmack == "Rotweine mittelkräftig, trocken"}
                    {s name='wwolffDetailGeschmackRotweinMittelkräftigTrocken'}Trocken, mittlere bis kräftige Fruchtigkeit, oft mit spürbaren Gerbstoffen, feine Würzigkeit, elegant. Dieser Typ verkörpert viele Rotweine, die sich zu mittelkräftigen Speisen eignen, z.B. Pasta, Rindfleischgerichte, Aufläufe, viele südländische Gerichte.{/s}
                {elseif $sGeschmack == "Schaumweine"}
                    {s name='wwolffDetailGeschmackSchaumweine'}Beschreibung Schaumweine.{/s}
                {elseif $sGeschmack == "Roséweine, trocken"}
                    {s name='wwolffDetailGeschmackRoseweineTrocken'}Eher leichterer Weinstil, trocken, mit spürbarer Säure und wenig Gerbstoffen. Häufig nicht so fruchtig wie die Farbe assoziieren lässt. Idealer Durstlöscher (nicht abwertend gemeint), gut als Aperitif und zu leichten Vorspeisen oder leichte Fischgerichte.{/s}
                {elseif $sGeschmack == "Weißweine, halbtrocken"}
                    {s name='wwolffDetailGeschmackWeißweinHalbtrocken'}Wein mit spürbarer Restsüße, oft sehr fruchtig, mit feiner Säure, pikant. Dieser Typ eignet sich zu würzigen Speisen aus dem fernen Osten (Curry, Chinesische Gerichte), zu sehr salzigen Speisen, auch salzige Käsesorten und als Aperitif oder Solo.{/s}
                {elseif $sGeschmack == "Weißweine, edelsüß"}
                    {s name='wwolffDetailGeschmackWeißweinedelsüß'}Wein mit edler Süße aus überreifen (oder getrockneten) Trauben. Je nach Herkunft mit kräftiger Säure, sehr fruchtig, oft phantastische Geruchs- und Geschmacksnuancen. Dieser Typ eignet sich als Begleiter zu Desserts, Blauschimmelkäse, Nüssen oder als Degustif (statt Höher-%-igem).{/s}
                {elseif $sGeschmack == "Rotweine kraftvoll, trocken, ohne Barrique"}
                    {s name='wwolffDetailGeschmackRotweinKraftvollTrocken'}Trockene Rotweine mit kräftigen Gerbstoffen, oft reife Fruchtnoten, vielschichtig, je nach Art elegant bis wuchtig. Ein Ausbau in Barriquefässern ist nicht ausgeschlossen, aber die Holzaromen haben bei diesen Weinen eine sehr untergeordnete Rolle. Die Reife spielt bei diesen Weinen eine erhebliche Rolle für den Genuss. Besonders gut zu Rind, Wild, Käse und kräftigeren Speisen.{/s}
                {elseif $sGeschmack == "Rotweine, halbtrocken"}
                    {s name='wwolffDetailGeschmackRotweinHalbtrocken'}Rotwein mit deutlich spürbarer Restsüße. Ein eher seltener Weintyp. In Deutschland noch am häufigsten anzutreffen. Vereinzelt in Südeuropa aufgrund von hohem Mostgewicht, der nicht komplett in Alkohol umgewandelt werden kann. Am besten solo zu geniessen, oder als Dessertwein.{/s}
                {elseif $sGeschmack == "Weine für wahre Kenner"}
                    {s name='wwolffDetailGeschmackWeineFürWahreKenner'}Beschreibung Weine für wahre Kenner{/s}
                {elseif $sGeschmack == "Rotweine leicht, trocken"}
                    {s name='wwolffDetailGeschmackRotweineLeichtTrocken'}Trocken, oft recht fruchtig mit wenig Gerbstoffen, mittlere bis gute Säure. Dieser Typ ist oft gefällig und eher leicht mit weniger Alkohol und sollte i.d.R. innerhalb 2-3 Jahren nach der Lese getrunken werden.{/s}
                {elseif $sGeschmack == "Portwein"}
                    {s name='wwolffDetailGeschmackPortwein'}Beschreibung Portwein{/s}
                {/if}
            {/if}


            {* Ausgabe der Geschmacksrichtung, Laune und Produktart *}
            {if $sArticle.sProperties}
                <div class="product--properties panel has--border">
                    <table class="product--properties-table">
                        {foreach $sArticle.sProperties as $sProperty}
                            {if $sProperty.name == "Geschmack" || $sProperty.name == "Laune" || $sProperty.name == "Produktart"}
                                <tr class="product--properties-row">
                                    {* Property label *}
                                    <td class="product--properties-label is--bold">{$sProperty.name|escape}:</td>
                                    <td class="product--properties-value">{$sProperty.value|escape}</td>
                                </tr>
                            {/if}
                        {/foreach}
                    </table>
                </div>
            {/if}
        </div>
    </div>
{/block}

