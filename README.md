# clt-teaching

Tässä säiliössä on materiaalit liittyen opetusnäytteeseen, jonka aihe on
"Keskeinen raja-arvolause ja sen sovellukset liiketoiminnassa". Alla kuvataan
ensin oppimistavoite, minkä jälkeen tärkeimmät tiedostot listataan kansioittain.

## Oppimistavoitteet

Luennon jälkeen osaamme

1. Kuvata keskeisen raja-arvolauseen intuitiivisesti ja

2. muodostaa likiarvoisen luottamusvälin odotusarvolle perustuen keskeiseen
   raja-arvolauseeseen.

## Diaesitys

Kansio `presentation/` sisältää diaesitykseen liittyvät tiedostot. Voit ladata
tiedoston `presentation.pdf`, jos haluat selailla dioja omalla tietokoneellasi.

## R koodit ja data

Kaikki R koodit ovat kansiossa `R/`. Alla kuvataan eri skriptien tarkoitukset.

- `clt.R`: Simuloimme otoskeskiarvon jakaumaa, kun otoskoko on 1, 5 tai 100.
  Simulaatiot suoritetaan sekä tasajakaumalle että exponenttijakaumalle. Vain
  tulokset eksponentijakaumalle kuvataan diaesityksessä.

- `credit.R`: Lasketaan likiarvoisia luottamusvälejä liittyen
  luottokorttipetoksen todennäköisyyteen.

Skriptissä `credit.R` käytetty data löytyy
[Kagglesta](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud?resource=download).
Datajoukko oli liian suuri tallennettavaksi tähän säiliöön.