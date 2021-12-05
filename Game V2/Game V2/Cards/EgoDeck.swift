//
//  RewardDeck.swift
//  Game V2
//
//  Created by Mathias Larsen on 25/08/2021.
//

import Foundation
class EgoDeck {
    var EgoDeckPlayer1 = [GenderCard]()
    var EgoDeckPlayer2 = [GenderCard]()
    var maleDecriptionArray = ["Har spillet fået noget til at rumstere? Det er tid til, at du er i fokus. Tag plads, gør dig det behageligt og luk øjnene, for de næste 5 minutter bliver du forkælet med guddommelig oralsex. Men hold dig gerne tilbage, hvis du kan - Spillet er jo ikke slut endnu!", "Du kan allerede begynde at fantasere nu. Næste gang I har det lidt lummert, må du bestemme, hvor dine dyrebare dråber skal lande og pryde din partner. Du giver bare kommandoen.", "Behøver du en god grund til snart at invitere din partner ud? Næste gang I skal på en date, skal hun tage sit frækkeste undertøj på. Findes der noget bedre?", "Drøm søde drømme i nat, og bliv ikke forskrækket, når du i morgen (eller næste gang I sover sammen) bliver vækket af en varm og våd mund, der bare gerne vil forkæle dig og din morgenrejsning.", "‘Sesam, sesam luk dig op’... De næste 5 dage er dit kodeord ‘Jeg vil have dig’. Hvisk det i din partners øre, og du skal få, hvad du vil have."]

    var femaleDecriptionArray = ["Trænger du også nogle gange til, at det bare er dig, og din nydelse, der er i centrum? Hvor tit sker det? Læg dig til rette og gør dig det behageligt. De næste 8 minutter skal du ikke fokusere på andet end din partners tunge og fingre mod dit køn. De eksisterer KUN for din skyld.", "Hvad har du allermest lyst til lige nu? De næste 10 minutter er det dig, der styrer showet og dig, der kan få lige hvad du vil have", "Din partner skal indenfor den næste uge gøre sig umage og skrive et kærligt brev til dig, der handler om alt dét, han elsker ved dig og jeres liv sammen", "Er der gået lidt for meget hverdag i aftenerne derhjemme? TV-serier, madpakker og opvaskemaskine-tømning? Nu får du en aften, hvor du slipper for alle de ting. Din partner skal planlægge en romantisk hjemmeaften, hvor du er i fokus"]

    var allDecriptionArray = ["Er skuldrene lidt ømme? Find massageolien frem og få en 10 minutters uforglemmelig skuldermassage af din partner", "Lidt afspænding har aldrig gjort noget dårligt for nogen. Få en 10 minutters rygmassage af din partner - Og husk at slappe af og nyde det. Før du ved af det, er det slut!", "Hvordan har du det med at give helt slip? Din partner skal give dig 10 minutters erotisk massage, der pirrer alle de dejligste steder og giver dig et ordentligt skud endorfiner. Spillet er langt fra slut endnu, så drop fokus på at jage en orgasme og nyd berøringerne i sig selv.", "Er nakken lidt stiv i det efter at have siddet dér med telefonen i hånden? Få 5 minutters nakkemassage af din partner.", "Giv slip på al den stress, du har opbygget i kroppen hen over den seneste tid. En 5 minutters hovedbundsmassage er på vej!", "Mange af os undervurderer hvor intim, afstressende og lækker en massage af hænderne kan være. Find olien frem, sæt jer tæt og lad din partner massere dine hænder imens I bevarer øjenkontakten. 5 minutter.", "Vælg hvilken en af dine huslige pligter, du gerne vil slippe for næste gang, den skal udføres. Den er hermed overdraget til din partner ;-)", "Det er kun dig, der ved, hvad du har mest brug for og lyst til lige nu. Du har fortjent en belønning, men hvilken? Vælg selv. Hylderne er fyldt med alt dét, du drømmer om, og din partner er klar til at udføre din mindste ordre ;-)", "Det er kun dig, der ved, hvad du har mest brug for og lyst til lige nu. Du har fortjent en belønning, men hvilken? Vælg selv. Hylderne er fyldt med alt dét, du drømmer om, og din partner er klar til at udføre din mindste ordre ;-)", "Din partner skal planlægge en romantisk date for dig, og der er ikke noget med at udskyde og glemme det. I skal finde en dato med det samme og sætte den i kalenderen. Så er der lidt at glæde sig til!", "Trænger du til lidt tid, der bare handler om jer? Din partner skal planlægge en dejlig dag som står i romantikkens tegn. Det behøver ikke at være dyrt eller ekstravagant - bare hyggeligt og med udgangspunkt i, hvad I godt kan lide at lave sammen. Sæt en dato i kalenderen med det samme.", "Drømmer du nogle gange om at have kontrollen? Værsgo: Du får lov til at styre fjernbetjeningen og musikken hele næste weekend ;-)", "Dopamin, Serotonin, Oxytocin - Du kender nok til disse såkaldte kærlighedshormoner. Men har du hørt om Vasopressin? Din krop har. Det minder om oxytocin og udløses ved kropskontakt. Styrk jeres bånd ved at ligge tæt, og gerne med hud mod hud, i 5 minutter. Du er et nyt menneske bagefter!", "Alle kan få brug for en hyggelig aften ude med vennerne/veninder, men tit kommer hverdagen i vejen. Hermed får du en 'friaften' og en kop kaffe i sengen dagen efter!", "Hvad er bedre end en morgen under dynerne? Din partner skylder hermed en gang morgenmad i sengen"]

    let type = "Ego"
    
    func BuildEgoDeck(player1Gender: String, player2Gender: String ) {
        if player1Gender == "male" {
            for item in maleDecriptionArray {
                EgoDeckPlayer1.append(GenderCard(type: type, decription: item, gender: "male"))
            }
        }else if player1Gender == "female"{
            for item in femaleDecriptionArray {
                EgoDeckPlayer1.append(GenderCard(type: type, decription: item, gender: "female"))
            }
        }
        
        if player2Gender == "male" {
            for item in maleDecriptionArray {
                EgoDeckPlayer1.append(GenderCard(type: type, decription: item, gender: "male"))
            }
        }else if player2Gender == "female"{
            for item in femaleDecriptionArray {
                EgoDeckPlayer1.append(GenderCard(type: type, decription: item, gender: "female"))
            }
        }
        
        for item in allDecriptionArray {
            EgoDeckPlayer1.append(GenderCard(type: type, decription: item, gender: "all"))
            EgoDeckPlayer2.append(GenderCard(type: type, decription: item, gender: "all"))
        }
        EgoDeckPlayer1.shuffle()
        EgoDeckPlayer2.shuffle()
    }
    
    func DrawCard(player: Int) -> GenderCard {
        var card: GenderCard
        if player == 1 {
            card = EgoDeckPlayer1[0]
            EgoDeckPlayer1.remove(at: 0)
        }else{
            card = EgoDeckPlayer2[0]
            EgoDeckPlayer2.remove(at: 0)
        }
        return card
    }
    
}
