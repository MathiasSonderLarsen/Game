//
//  Deck.swift
//  Game V2
//
//  Created by Mathias Larsen on 25/08/2021.
//

import Foundation

class TruthDeck {
    var truthDeck = [Card]()
    let erotikDecriptionArray = ["Hvad kan virkelig tænde dig?", "Hvor mange seksuelle partnere har du haft?", "Tænder du på tanken om, at andre ser jer have sex?", "Når du har en periode, hvor du ikke har så meget lyst til sex, hvad er så hyppigst grunden?", "Er der en god måde at tænde dig på, når du ikke umiddelbart er i humør til sex?", "Hvad tænder du virkelig af på?", "Har du en fantasi, som du tror, at din partner ville sige nej til at udleve? Måske kan du stadig blive overrasket!", "Har du nogensinde fortrudt at have sex? Hvorfor?", "Hvem af jer har størst erfaring i sengen?", "Hvornår på dagen har du mest lyst til sex?", "Fantaserer du om din partner i løbet af dagen? Hvad tænker du på?", "Akavet, ubehagelig eller helt fantastisk? Beskriv din første seksuelle oplevelse", "Hvem af jer har det højeste sexdrive?", "Hvem af jer er allermest kinky i sengen?", "Hvordan har du det med video/billeder af egne intime/seksuelle situationer?", "Hvad er det højeste antal af orgasmer, du har fået på én dag?", "Tør du svare? Hvad er din mest forbudte fantasi?", "Er der noget seksuelt, du godt kunne tænke dig at prøve?", "Har du nogensinde udlevet en fantasi, der viste sig ikke at være lige så fræk i virkeligheden, som du havde forestillet dig?", "Hvad er det vildeste, du nogensinde har prøvet seksuelt?", "Er der noget, du tidligere har sagt nej til at prøve, men som du nu er blevet nysgerrig på?", "Hvis du måtte vælge én sexstilling resten af livet, hvad ville du så vælge?", "Hvor mange forskellige partnere har du haft analsex med?", "Hvordan ville du have det med at have flere partnere med i sengen?", "Har du prøvet at have en trekant eller firkant?", "Har du nogensinde været en ekskæreste utro?", "Hvordan ville du have det med at se porno sammen med din partner?", "Hvilke kendisser har du onaneret til?", "Nævn nogle af de typer porno, du ser allermest, når du ser porno", "Go og no-go.. Fortæl om nogle af dine hårde grænser i sengen", "Man skal vel prøve alting én gang. Hvilke seksuelle oplevelser har du på din bucket list?", "Bange for at blive opdaget? Hvis du skulle have sex på et offentligt sted, hvor ville det så være?", "Er der noget seksuelt, du godt kunne tænke dig at være bedre til?", "Er der noget seksuelt, du ville ønske var mere normalt, at flere dyrkede/at man kunne tale mere åbent om?", "Hvad er det frækkeste, I har gjort sammen?", "Har du nogensinde taget penge eller gaver for sex? Og har du nogensinde betalt for sex?", "Kunne du finde på at sælge dit brugte, beskidte undertøj?", "Hvad er den sjoveste seksuelle oplevelse, du har haft?", "Er du nogensinde blevet opdaget i at have sex?", "Er du nogensinde blevet opdaget i at onanere?", "Har du nogensinde haft madvarer med i sengen? Alene eller sammen med andre?", "Hvad er det sjoveste porno, du nogensinde har set?", "Hvad er det vildeste, du kender nogen, der har prøvet?", "Dickpics - Ja eller nej?", "Hvad er du mest usikker på ved dig selv?", "Hvad er du mest usikker på i forhold til dine seksuelle evner?", "Hvad er du mest selvsikker omkring, når det kommer til dig selv og dine seksuelle evner?", "Hvordan har du det med at sluge sæd?", "Hvilken seksuel fantasi har du oftest?", "Hvordan gør du, når du onanerer? Bruger du porno? Fantasi? Snapper frækt? Frække noveller eller andet?", "Hvem var den første du scorede, og hvordan gjorde du?", "Er der noget, du aldrig nogensinde kunne finde på at prøve i sengen? Hvad og hvorfor?", "Hvor køber du helst dit sexlegetøj? På nettet eller i fysiske butikker? Hvorfor?", "Hvor meget ved dine venner om, hvad du er til seksuelt? Tror du, at de ville blive overraskede?", "Hvad er dit yndlings sexlegetøj?", "Er der noget, der fungerer særligt godt for dig under oralsex?", "Hvor mange gange i dit liv har du faket en orgasme?", "Hvilke former for tease virker allerbedst for dig? Hvad kan drive dig til absolut vanvid, og hvordan nyder du at tease andre?", "Er der noget sexløgetøj, du går rundt og ønsker dig? Hvilket?", "Hvordan kan du godt lide at flirte og blive flirtet med?", "Hvad er din mest grænseoverskridende fantasi, som du ikke er klar til at prøve endnu?", "Fortæl om en fræk fantasi, som du godt kunne tænke dig at prøve med din partner", "Er der noget, du ikke kan/vil tale om i forhold til sex?", "Har du nogensinde set noget porno, som du ville ønske, du ikke havde set?", "Hvad er din sidste søgning på din foretrukne porno-side?", "Hvad er det største, du nogensinde har haft oppe i dig?", "Hvor ofte havde I sex, hvis du kunne bestemme?", "Hvilken del af en seksuel akt, sætter du mest pris på? Forspil, oralsex, penetration, orgasmen, efter sex eller andet?", "Forestil dig et rollespilsscenarie - Hvad synes du, kunne være frækt?", "Dirty talk! Er der noget, du tænder på, at din partner siger eller kalder dig i sengen?", "Hvad er det frækkeste ved din partner?"]

    let whoAreYouDecriptionArray = ["Hvis din partner skulle planlægge en hyggelig eller romantisk dag for dig, hvad ville så betyde noget for dig?", "Nævn 3 ting I umiddelbart har tilfælles", "Fortæl hinanden, hvad der kan gøre jer virkelig stolte af den anden? Er der et særligt øjeblik, hvor du har følt dig ekstra stolt?", "Hvad ville jeres soundtrack være, hvis I havde et?", "Fortæl din partner, hvad du sætter allermest pris på ved vedkommende", "Tid til at være ærlige og kærlige. Hvad er din partners dårligste vane? Hvad er den bedste?", "Nu er det tid til at være ærlig - og til at slå ørerne ud. Hvad får dig til at føle dig allermest elsket?", "Hvad elsker du mest ved din partner?", "Vores følelser aktiveres af musik. Er der en sang, der altid minder dig om din partner? Hvilken/hvilke og hvorfor?", "Hvad er dit bedste minde fra den tid, I har kendt hinanden?", "Vi lagrer minder og følelser i vores ting. Hvis din partner døde eller forsvandt i morgen, hvilke 3 ting ville så minde dig mest om vedkommende?", "Stoler du på din partner? Hvad kan øge din tillid yderligere?", "Hvad ville kunne ødelægge din tillid til din partner?", "Minder, der giver sommerfugle i maven. Kan du huske jeres første kys? Hvor, hvordan og hvorfor?", "Hvordan kan din partner muntre dig op, hvis du er i dårligt i humør?", "Vi er ikke altid gode til at give komplimenter direkte til den, de vedrører! Hvad har din familie og dine venner sagt af positive ting om din partner?", "Føler du dig set og hørt, når du er sammen med din partner og din partners familie?", "Er du gået på kompromis med nogle af dine normale krav til en partner i dette forhold? Hvad har du lært af det?", "I hvilke situationer ville du ønske, at din partner kunne læse dine tanker?", "Vi har alle deal breakers, og de siger som regel noget om os selv. Er der nogle holdninger du aldrig ville kunne tolerere hos en partner?", "Er der nogen egenskaber, du aldrig ville kunne tolerere hos en partner?", "Hvor meget betyder det for dig, om din partner husker mærkedage?", "Er der noget, du gerne vil vide om din partner, som du aldrig har turdet spørge om?", "Hvad var det første ved din partners personlighed, du følte dig tiltrukket af?", "Hvornår vidste du første gang, at du elskede din partner? Hvis I ikke har kendt hinanden så længe: Hvornår vidste du, at du var forelsket? Og hvis du ikke er forelsket endnu… Så se at komme i gang!"]

    let whatAboutUsDecriptionArray = ["Hvad kan gøre dig allermest vred eller ked af det?", "Hvilke personer har betydet allermest for dig i dit liv?", "Hvad har været godt og skidt ved dine tidligere seksuelle relationer (faste partnere)?", "Har du tendens til jalousi? Hvordan kommer det til udtryk - og hvad kan trigge det?", "Opsumér dit liv så detaljeret som muligt på 3 minutter", "Er du romantisk anlagt? Hvornår gjorde du sidst noget romantisk?", "Beskriv den helt perfekte søndag for dig", "Hvis du fik muligheden for at ændre noget i dit liv indtil nu, hvad ville det så være?", "Hvad er dit største traume i livet?", "Er du nogensinde blevet friet til, og har du nogensinde friet til nogen?", "Hvad i dit liv er du allermest taknemmelig for?", "Hvis du kunne ændre én ting i dit liv, her og nu, hvad ville så gøre dig mere lykkelig?", "Hvordan har du det med at vise følelser og affektion i offentligt rum?", "Hvordan har du det med at sige og høre ordene 'Jeg elsker dig'?", "Hvordan lader du din partner vide, at du elsker vedkommende? Gennem ord, handlinger eller andet? Og hvilke?", "Hvordan har du haft det med dine svigerforældre igennem livet?", "Den hypotetiske tidsmaskine… Du kan få de store overskrifter fra et år engang i fremtiden. Hvilket år vælger du?", "Hvad er det største, du har opnået i livet?", "Hvad er det bedste, der er sket for dig inden for de seneste 3 år?", "Hvad er det værste, der er sker for dig indenfor de seneste 3 år?", "Nævn 2 ting på din bucket list", "Fortæl en hemmelighed om dig selv, som de færreste ved", "Er du tilfreds med dit liv, som det er lige nu?", "Hvordan har du det med din familie?", "Hvem i din familie bryder du dig mindst om?", "Hvem i din familie har du det bedst med?", "Hvem i din partners familie, har du det bedst med?", "Hvornår græd du sidst?", "Hvad ville du ønske, at du kunne sige til én, der ikke er blandt os mere?", "Dit hus brænder ned, og du har mulighed for at redde 3 objekter (ingen mennesker er i risiko) - Hvilke vælger du?", "Hvilken bekymring fylder mest for dig for tiden?", "På hvilket område har du ændret dig mest i løbet af de seneste 10 år?", "Hvordan har du det med at få gaver, og hvilken type gave kan gøre dig mest glad?", "Fortiden har det med at påvirke os. Hvordan endte dit seneste forhold?", "Det kan være svært at give slip. Har du nogle afhængigheder?", "Hvem savner du mest?", "Hvilket musik skal spille til din begravelse?", "Hvordan har du det med døden?", "Det kan være svært at give slip. Har du nogle afhængigheder?", "Kan du se indad? Beskriv dine værste vaner", "Hvis du fik 30.000 kroner til at tage på en lækker ferie, hvordan ville du så bruge dem?", "Hvad ville du gøre, hvis du vandt 10 millioner kroner i Lotto?", "Det dér med at være alene… Hvad er den længste periode, du har været single?", "Hvilke hobbyer har du haft i løbet af dit liv?", "Vil du gerne have (flere) børn?", "Hvad er dit mest lykkelige minde?", "Hvis du skulle sælge alle dine ting undtagen 10 genstande, hvad ville du så vælge at gemme?", "Hvad er dine deal breakers, når du leder efter en partner?", "Hvilke egenskaber leder du efter i en partner?", "Hvilken rejse/ferie har været den bedste i dit liv?", "Hvem går du til, når du har brug for at snakke om noget, der går dig på?", "Hvem er den største cheerleader i dit liv (hvis støtte kan du altid regne med)?", "Voksne kan også være bange. Hvad er du bange for?", "Er glasset halvt tomt eller… Med andre ord: Er du optimist, realist eller pessimist?", "Hvordan har dine søskende (eller mangel på samme) påvirket dig og dit liv?", "Tiden læger alle sår. Beskriv første gang dit hjerte blev knust", "Tror du på skæbnen? Hvor stor indflydelse tror du, at vi har på vores eget liv?", "Nogle gange er det på tide at sige farvel. Har du nogensinde 'slået op' med en ven/veninde? Hvad skete der?", "Tro kan flytte bjerge… Siger man. Tror du på nogle højere magter? Er du religiøs eller overtroisk?", "Er penge roden til alt ondt eller får det verden til at køre rundt? Hvad er dit forhold til penge?", "Hvor mange kærester har du haft?", "Du kan lige så godt være ærlig. Hvem/hvad har du flest fordomme omkring?", "Politik kan være et sprængfarligt emne i ægtesengen, men prøv alligevel at være ærlig. Hvem stemte du på ved sidste valg?", "Er du introvert eller ekstrovert (lader du op, når du er alene eller sammen med andre)?", "Hvad er din mest ubehagelige oplevelse i byen?", "Hvor langt vil du gå for retfærdighed?"]

    
    
    
    func BuildTruthDeck(erotic: Bool, whoAreYou: Bool, whatAboutUs: Bool) {

        if erotic {
            for item in erotikDecriptionArray {
                truthDeck.append(Card(type: "Truth", decription: item))
            }
        }
        if whoAreYou {
            for item in whoAreYouDecriptionArray {
                truthDeck.append(Card(type: "Truth", decription: item))
            }
        }
        if whatAboutUs {
            for item in whatAboutUsDecriptionArray {
                truthDeck.append(Card(type: "Truth", decription: item))
            }
        }
        
        truthDeck.shuffle()
        
    }
    
    func DrawTruthCard() -> Card {
        let card = truthDeck[0]
        truthDeck.remove(at: 0)
        return card
    }
}