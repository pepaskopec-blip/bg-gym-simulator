@echo off

chcp 65001 > nul
set money=1500

:start
cls
echo : Právě jsi před vstupem do BG gym Neratovice.
pause
cls
echo : Vidíš na dveřích ceduli s otevírací dobou a ceníkem služeb:
echo : Otevírací doba je od 6:00 do 22:00.
pause
cls
echo : Ceník služeb:
echo : Vstup stojí 120Kč.
pause
echo : Chceš vstoupit do gymu? (ano/ne)
set /p vstup=
if /i "%vstup%"=="ano" goto :bar1
if /i "%vstup%"=="ne" (
    echo : Rozhodl ses nevstoupit do gymu.
    echo : Ještě si to mužeš rozmyslet.
    pause
    cls
    goto :start
)

:bar1
cls
echo : Na baru je obsluha a ptá se tě na jméno a příjmení.
set /p name=Zadej své jméno a příjmení: 
echo : Ahoj, návštěvníku jménem %name%! Vítáme tě v BG gym Neratovice.
pause
cls
echo : Máš %money% Kč.
echo : Chceš si zaplatit vstup za 120Kč? nebo odejít z gymu (odejít/vstup)
set /p platba=
if /i "%platba%"=="vstup" goto :vstup
if /i "%platba%"=="odejít" (
    echo : Odejít z gymu.
    echo : Děkujeme za návštěvu BG gym Neratovice. Nashledanou!
    pause
    exit
)

:bar2
cls
echo : Jsi na baru. Můžeš si zde koupit něco na posilnění, nebo jít zpátky do šatny nebo odejít z gymu. (jídlo/šatna/odejít)
set /p bar_menu=
if /i "%bar_menu%"=="jídlo" goto :jidelni_listek
if /i "%bar_menu%"=="šatna" goto :satna
if /i "%bar_menu%"=="odejít" (
    echo : Odejít z gymu.
    echo : Děkujeme za návštěvu BG gym Neratovice. Nashledanou!
    pause
    exit
)

:jidelni_listek
pause
cls
echo : máš %money% Kč.
echo : Můžeš si koupit, iontový nápoj, proteinovou tyčinku, nakopávač, proteinový nápoj, energetický nápoj nebo jít zpátky do šatny nebo odejít z gymu. (iontový/proteinová/nakopávač/proteinový/energetický)
set /p jidelni_listek=
if /i "%jidelni_listek%"=="iontový" (
    cls
    set /a money=%money%-50
    echo : Koupil jsi si iontový nápoj za 50Kč.
    echo : Zbývá ti %money% Kč.
    pause
    cls
    goto :posl_opacko_bench
)
if /i "%jidelni_listek%"=="proteinová" (
    cls
    set /a money=%money%-80
    echo : Koupil jsi si proteinovou tyčinku za 80Kč.
    echo : Zbývá ti %money% Kč.
    pause
    cls
    goto :posl_opacko_bench
)
if /i "%jidelni_listek%"=="nakopávač" (
    cls
    set /a money=%money%-60
    echo : Koupil jsi si nakopávač za 60Kč.
    echo : Zbývá ti %money% Kč.
    pause
    cls
    goto :posl_opacko_bench
)
if /i "%jidelni_listek%"=="proteinový" (
    cls
    set /a money=%money%-100
    echo : Koupil jsi si proteinový nápoj za 100Kč.
    echo : Zbývá ti %money% Kč.
    pause
    cls
    goto :posl_opacko_bench
)
if /i "%jidelni_listek%"=="energetický" (
    cls
    set /a money=%money%-70
    echo : Koupil jsi si energetický nápoj za 70Kč.
    echo : Zbývá ti %money% Kč.
    pause
    cls
    goto :posl_opacko_bench
)

:vstup
cls
set /a money=%money%-120
echo : Zaplatil jsi 120Kč za vstup.
echo : Zbývá ti %money% Kč.
echo : Užij si svůj trénink, návštěvníku %name%!
pause
cls
echo : Dostal jsi klíček od skříňky ve šatně.
echo : Teď můžeš jít do šatny.
goto :satna
pause

:satna
cls
echo : Vstoupil jsi do šatny. Můžeš si zde odložit věci a převléknout se.
pause
cls
echo : Po převlečení se můžeš vydat do posilovny nebo jít kardio. Nebo odejít z gymu. (posilovna/kardio/odejít)
echo : Kam chceš jít? (posilovna/kardio)
set /p misto=
if /i "%misto%"=="posilovna" goto :posilovna
if /i "%misto%"=="kardio" goto :kardio
if /i "%misto%"=="odejít" (
    echo : Odejít z gymu.
    echo : Děkujeme za návštěvu BG gym Neratovice. Nashledanou!
    pause
    exit
)

:posilovna
echo : Vstoupil jsi do posilovny.
pause
cls
echo : Chceš se před cvičením protáhnout? (ano/ne)
set /p protazeni=
if /i "%protazeni%"=="ano" (
    echo : Protáhl ses a jsi připraven na cvičení!
    pause
    cls
    echo : Začínáš s cvičením na bench pressu.
    pause
    cls
    echo : Začal jsi s warmum up serií na bench pressu. (váha 20kg)
    pause
    cls
    echo : Začínáš s první pracovní serií která obsahuje šest opakování (váha 50kg)
    pause
    cls
    echo : Stiskni enter pro každé opakování.
    pause
    cls
    echo : Dokončil jsi první opakování na bench pressu!
    pause
    cls
    echo : Dokončil jsi deuhé opakování na bench pressu!
    pause
    cls
    echo : Dokončil jsi třetí opakování na bench pressu!
    pause
    cls
    echo : Dokončil jsi čtvrté opakování na bench pressu
    pause
    cls
    echo : Dokončil jsi páté opakování na bench pressu!
    pause
    cls
    echo : Už jsi vyčerpaný, pro dokončení jdi na recipci a kup si něco na posilnění.
    pause
    cls
    goto :bar2
)
if /i "%protazeni%"=="ne" (
    cls
    echo : Chyba! Měl by ses vždy před cvičením protáhnout.
    goto :nemocnice 
)
    
    :posl_opacko_bench
    cls
    echo : Posilnil jsi se na baru a jsi připraven pokračovat v cvičení na bench pressu.
    pause
    cls
    echo : Stiskni enter pro opakování.
    pause
    cls
    echo : Dokončil jsi poslední opakování na bench pressu!
    pause
    cls
    echo : Skvělá práce! Můžeš pokračovat na další cviky nebo odejít z gymu. (další/odejít)
    set /p dalsi_cviky=
    if /i "%dalsi_cviky%"=="další" (
        echo : Pokračuješ na další cviky.
        pause
        cls
        goto :incline_bench
)
    if /i "%dalsi_cviky%"=="odejít" (
        echo : Odejít z gymu.
        echo : Děkujeme za návštěvu BG gym Neratovice. Nashledanou!
        pause
        exit
    )

:incline_bench
cls

:kardio
echo : Vstoupil jsi do kardio zóny.
pause
cls
echo : Začínáš s během na běžeckém pásu.
pause
cls
echo : Zvol rychlost na běžeckém pásu (nízká/střední/vysoká)
set /p rychlost=
if /i "%rychlost%"=="nízká" (
    echo : Rozehřál jsi nohy a pokračuješ v běhu.
    pause
    cls
    goto :vyssi_rychlost
)
if /i "%rychlost%"=="střední" goto :vyssi_rychlost
if /i "%rychlost%"=="vysoká" (
    cls
    echo : Běžíš rychle, ale začínáš s moc vysokou rychlostí bez rozehřátí a ptoto jsi si zranil nohu!
    pause
    cls
    goto :nemocnice
)

:vyssi_rychlost
echo : Nastavuješ rychlost na střední úroveň.
pause
cls
echo : Spálil jsi docela dost kaloriií, ale cítíš se unavený.
pause
cls
echo : Chceš pokračovat na vysokou rychlost? (ano/ne)
set /p pokracovani=
if /i "%pokracovani%"=="ano" (
    cls
    echo : Zvyšuješ rychlost na vysokou úroveň.
    echo : Běžíš rychle, ale byl jsi tak unavený že jsi upadl a zranil se!
    pause
    cls
    goto :nemocnice
)
if /i "%pokracovani%"=="ne" (
    echo : Rozhodl se nepokračovat, můžeš jít do šatny nebo na bar. (šatna/bar)
    set /p misto=
    if /i "%misto%"=="šatna" goto :satna
    if /i "%misto%"=="bar" goto :bar2
)

:nemocnice
cls
echo : Při tréninku jsi utrpěl zranění a musíš jít do nemocnice.
pause
cls
echo : V nemocnici ti lékaři doporučují ošetření.
pause cls
echo : Chceš se nechat ošetřit? (ano/ne)
set /p osetreni=
if /i "%osetreni%"=="ano" (
    goto :osetreni
)
if /i "%osetreni%"=="ne" (
    echo : Nenechal ses ošetřit a kvůli tomu jsi zemřel.
    echo : Konec hry.
    pause
    exit
)

:osetreni
cls
echo : Stojí tě to 500Kč za ošetření.
set /a money=%money%-500
echo : Po ošetření ti zbývá %money% Kč.
pause
cls
echo : Po uzdravení se můžeš vrátit do gymu.
pause
goto :start