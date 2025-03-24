# clt-teaching

Tässä säiliössä on materiaalit liittyen opetusnäytteeseen, jonka aihe on
"Keskeinen raja-arvolause ja sen sovellukset liiketoiminnassa". Alla kuvataan
ensin oppimistavoitteet, minkä jälkeen tärkeimmät tiedostot listataan
kansioittain.

## Opetustavoitteet

Luennon jälkeen osaamme

1. approksimoida todennäköisyyksiä klassisen keskeisen raja-arvolauseen avulla
   ja

2. muodostaa likiarvoisen luottamusvälin odotusarvolle perustuen keskeiseen
   raja-arvolauseeseen.

## Diaesitys

Kansio `presentation/` sisältää diaesitykseen liittyvät tiedostot. Voit ladata
tiedoston `presentation.pdf`, jos haluat selailla dioja omalla tietokoneellasi.

## R koodit ja data

Kaikki R koodit ovat kansiossa `R/`. Alla kuvaan eri skriptien tarkoituksen.

- `clt.R`: Simuloimme odotusarvon jakaumaa, kun otoskoko on 1, 5 tai 100. Simulaatiot suoritetaan sekä tasajakaumalle että exponenttijakaumalle.

- `normal.R`: Piirretään kahden eri normaalijakauman tiheysfunktiot.

- `credit.R`: Lasketaan likiarvoisia luottamusvälejä liittyen
  luottokorttipetoksen todennäköisyyteen.

- `prob-approx.R`: Approksimoidaan luottokorttipetoksien määrien
  todennäköisyyttä, kun tiedämme perustana olevan mallin.

Skriptissä `credit.R` käytetty data löytyy
[Kagglesta](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud?resource=download).
Datajoukko oli liian suuri tallennettavaksi tähän säiliöön.