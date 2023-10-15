//Lecture 11 - KISS, YAGNI, DRY, SOLID

/* PART 1 - SOLID principles
 1. მოდით ჩვენს ხომალდს მივხედოთ SOLID Principle-ბის დაცვით. შევქმნათ Class-ი PirateShip⛴️🏴‍☠️, with properties: როგორციაა name, cannonsCount, crew👫 და cargo🍗🍖🥃🍺. Methods: firingCannons, adding/removing crew, adding/removing cargo. ✅
 2. დავიცვათ Single Responsibility ამისათვის - cargo management და adding/removing crew ფუნქციონალი უნდა განვაცალკევოთ.შესაბამისად მოდი შევქმნათ 2 Manager class-ი (CargoManager, CrewManager), სადაც გავიტანთ crew-ს და cargo-ს და შესაბამის methods გავიტანთ ამ კლასებში. ✅
 3. ამის შემდეგ ჩვენს PirateShip-ში გვრჩება properties: name, cannonsCount და 2 მენეჯერი რომელიც ცალ-ცალკე გააკონტროლებს ჩვენი გემის ფუნქციონალს. Methods გვექნება addCargo, removeCargo, listCargo, addCrew, removeCrew, listCrew, cannonCount, fireCannon(count:) და ამ Method-ებში ჩვენი მენეჯერების შესაბამისი მეთოდები გამოვიყენოთ. ✅
 4. დავიცვათ Open/Closed პრინციპი. ჩვენი მენეჯერები არ უნდა იყოს წვდომადი გარედან და მათი ფუნქციონალის გამოყენება მხოლოდ გემის წევრებს უნდა შეეძლოთ. ✅
 5. დავიცვათ Liskov Substituion, შევქმნათ PirateShip-ის შვილობილი კლასები Frigate და Galleon. დაამატეთ ფუნქციონალი და ცვლადები თქვენი სურვილის მიხედვით, მაგრამ როცა PirateShip-ს Frigate-ით ან Galleon-ით ამოვცვლით ქცევა არ უნდა შეგვეცვალოს. ✅
 6. დავიცვათ Interface Segregation. ყველა გემს არ აქვს საშუალება რომ იქონიონ cannon-ები და აწარმოონ ბრძოლა. ამიტომ შევქმნათ protocol Cannons შესაბამისი მეთოდები და დავაიმპლემენტიროთ PirateShip-ში. ✅
 7. დავიცვათ Dependency Inversion პრინციპი, ამიტომ ჩვენს manager კლასებს გავუკეთოთ პროტოკოლები CargoManaging და CrewManaging სადაც მეთოდებს ავღწერთ რომლებიც აქამდე კლასებში გვქონდა, ხოლო PirateShip-ში CargoManager-ს და CrewManager-ს ჩავანაცვლებთ ამ Protocol-ის ტიპის ცვლადებით, ამითი ჩვენს PirateShips აღარ ეცოდინება სპეციფიური დეტალები თუ როგორ ხდება cargo-ს და crew-ის მენეჯმენტი  მას მხოლოდ აბსტრაქტულად ეცოდინება ის რომ ეს შესაძლებელია. ასევე ამ პრინციპის დაცვით ჩვენ საშუალება გვექნება ნებისმიერ დროს შევცვალოთ Crew და Cargo Management-ის მართვის სისტემა, უბრალოდ ჩავაწვდით ახალ კლასს სხვა იმპლემენტაციით რომელიც ამ პროტოკოლს აიმპლემენტირებს, ამის საშვალებით ჩვენ ნებისმიერ დროს შეგვეძლება PirateShip-ში მარტივი ცვლილებების შეტანა, ისე რომ თვითონ კლასში ცვლილებების გაკეთება არ მოგვიწევს. ✅
 */

/* PART 2 - TreasureMap KISS პრინციპის დაცვით.
 TreasureMap კლასი გვექნება ძალიან მარტივი ორი ფროფერთით: x და y ექნება. ერთი მეთოდი hintToTreasure, რომელიც მიიღებს x და y-ს და თუ ვიპოვეთ ჩვენი საგანძური დაგვიწერს ამას, თუ არასწორად მივუთითებთ კოორდინატებს მაშინ უნდა მოგვცეს hint-ი თუ საით უნდა წავიდეთ რომ მივაგნოთ საგანძურს. ✅
 */

/* PART 3 - SeaAdventure YAGNI პრინციპის დაცვით.
 პირატების მოგზაურობა თავგადასავლის გარეშე ვის გაუგია. შევქმნათ მარტივი SeaAdventure class-ი, ერთი String adventureType ფროფერთით და ერთი მეთოდით encounter რომელიც დაგვიბეჭდავს თუ რა adventure-ს წააწყდა ჩვენი ხომალდი. დავიცვათ YAGNI და არ დავამატოთ გავრცობილი ფუნქციონალი რომელიც სხვადასხვა adventure-ს შეიძლება მოიცავდეს, რომელიც ჯერ ჯერობით არ გვჭირდება.
 */

/* PART 4 - PirateCode DRY პრინციპის დაცვით.
 შევქმნათ მარტივი კლასი PirateCode, რომელსაც ექნება ორი მეთოდი parley და mutiny, ამ მეთოდებში უნდა დავიწყოთ განხილვა მოლაპარაკებებზე წავალთ თუ ვიბრძოლებთ ეს კოდი რომ ორივე მეთოდში არ გაგვიმეორდეს დავიცვათ DRY პრინციპი და შევქმნათ ერთი private ფუნქცია discussTerms(term: String), რომელიც შეგვატყობინებს იმას რომ მოლაპარაკებები დაწყებულია, ხოლო parley და mutiny მოლაპარაკების შედეგს დაგვიბეჭდავენ. ✅
 */

/* PART 5 - დროა საგანძურის საძებნელად გავეშვათ. (Treasure hunting😄💰)
 შევქმნათ ჩვენი ხომალდი დავარქვათ სახელი, ეკიპაჟი დავამატოთ, საომრად გავამზადოთ, ავტვირთოთ cargo. შევქმნათ ჩვენი საგანძულის კარტა და გადავაწდოთ კოორდინატები. შევქმნათ პირატის კოდექსი რომელიც მოგზაურობისას დაგვეხმარება. შევქმნათ SeaAdventure რომელსაც ჩვენი ეკიპაჟი შეიძლება გადააწყდეს, ამ შემთხვევაში ეს იქნება FlyingDutchman-თან გადაყრა.
 პირველ რიგში დავიწყოთ ჩვენი საგანძურის ძებნით შევქმნათ ორი ცვლადი საწყისი კოორდინატები საიდანაც ჩვენი გემი აიღებს გეზს, და treasureMap-ის hintToTreasure მეთოდის გამოყენებით ვეცადოთ ვიპოვოთ ჩვენი საგანძური. საგანძურის პოვნის შემდეგ გადააწყდება adventure-ს, დავბეჭდოთ რა adventure-ა, PirateCode-ს გამოყენებით გადავწყვიტოთ რას იზამს ჩვენი კაპიტანი, ეცდება აარიდოს თავი თავგადასავალს თუ მიხვდება რომ აზრი არ აქვს მოლაპარაკებებს და შეუტევს? არჩევის შემდეგ რის განხილვას მოახდენს თავის ეკიპაჟთან ერთად? როგორ გაიქცეს თუ როგორ შეუტიოს ეფექტურად? გამოიყენებს ის ყველა არსებულ cannon-ს ხომალდზე თუ არა? ✅
 */



protocol CargoManaging {
    func add(item: String)
    func remove(item: String)
    func list()
}

protocol CrewManaging {
    func add(item: String)
    func remove(item: String)
    func list()
}

class CargoManager: Manageable, CargoManaging {
    var cargo: [String] = []
    
    func add(item: String) {
        cargo.append(item)
    }
    
    func remove(item: String) {
        //because this method returns an optional value
        if let index = cargo.firstIndex(of: item) {
            cargo.remove(at: index)
        }
    }
    
    func list() {
        print("The list of cargo items on the board is listed below:")
        for item in cargo {
            print("\(item)")
        }
        print()
    }
}


class CrewManager: Manageable, CrewManaging {
    var crew: [String] = []
    
    func add(item: String) {
        crew.append(item)
    }
    
    func remove(item: String) {
        //because this method returns an optional value
        if let index = crew.firstIndex(of: item) {
            crew.remove(at: index)
        }
    }
    
    func list() {
        print("The list of crew members on the board is listed below:")
        for item in crew {
            print("\(item)")
        }
        print()
    }
}


class PirateShip: Cannons {
    let name: String
    var cannonsCount: Int
    var cargoManager: CargoManaging //now depends on the abstraction (protocol)
    var crewManager: CrewManaging //now depends on the abstraction (protocol)
    
    
    init(name: String, cannonsCount: Int, cargoManager: CargoManaging, crewManager: CrewManaging) {
        self.name = name
        self.cannonsCount = cannonsCount
        self.cargoManager = cargoManager
        self.crewManager = crewManager
    }
    
    func cannonCount() -> Int {
        print("You have \(cannonsCount):")
        return cannonsCount
    }
    //method that uses up cannons and decreases the number of them
    func fireCannon(count: Int) {
        if count <= cannonsCount {
            let startingAmountOfCanons = cannonsCount
            cannonsCount -= count
            print("You've just fired \(count) cannons out of \(startingAmountOfCanons), now you've left \( cannonsCount).")
        } else if count > cannonsCount {
            print("You haven't left enough cannons, you've only get: \(cannonsCount)")
        } else if cannonsCount == 0 {
            print("You haven't left any cannons to fire.")
        }
    }
    
    //methods now use CargoManaging instead of CargoManager
    func addCargo(item1: String) {
        cargoManager.add(item: item1)
    }
    
    func removeCargo(item1: String) {
        cargoManager.remove(item: item1)
    }
    
    func listCargo() {
        cargoManager.list()
    }
    
    //methods now use CrewManager instead of CrewManager
    func addCrew(crewMember1: String) {
        crewManager.add(item: crewMember1)
    }
    
    func removeCrew(crewMember1: String) {
        crewManager.remove(item: crewMember1)
    }
    
    func listCrew() {
        crewManager.list()
    }
}


protocol Manageable {
    func add(item: String)
    func remove(item: String)
    func list()
}


class Frigate: PirateShip {
    let captain: String
    
    init(name: String, cannonsCount: Int, cargoManager: CargoManager, crewManager: CrewManager, captain: String) {
        self.captain = captain
        super.init(name: name, cannonsCount: cannonsCount, cargoManager: cargoManager, crewManager: crewManager)
    }
}


class Galleon: PirateShip {
    var treasureAmount: Int
    
    init(name: String, cannonsCount: Int, cargoManager: CargoManager, crewManager: CrewManager, treasureAmount: Int) {
        self.treasureAmount = treasureAmount
        super.init(name: name, cannonsCount: cannonsCount, cargoManager: cargoManager, crewManager: crewManager)
    }
    
    func treasureCount(treasure: Int) {
        treasureAmount += treasure
    }
}

protocol Cannons {
    func cannonCount() -> Int
    func fireCannon(count: Int)
}

class TreasureMap {
    let x: Int // W,E
    let y: Int // N,S
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func hintToTreasure(firsParameter: Int, secondParameter: Int) {
        if firsParameter == x && secondParameter == y {
            print("You've just found the treasure!🎉")
        } else if firsParameter == x && secondParameter != y {
            print("Hint: You should go North-East direction to find treasure.")
        } else if firsParameter != x && secondParameter == y {
            print("Hint: You should go West-South direction to find treasure.")
        } else if firsParameter == 0 && secondParameter == 0 {
            print("You are in the beginning of your adventurous trip for finding the treasure! ⚓️")
        } else {
            print("Hint: You should go on the opposite direction from your current location.")
        }
    }
}


class SeaAdventure {
    let adventureType: String
    
    init(adventureType: String) {
        self.adventureType = adventureType
    }
    
    func encounter(adventure: String) {
        print("Your ship has just encountered the \(adventureType) adventure.")
    }
}


class PirateCode {
    func parley() {
        discussTerms(term: "parley")
        print("The crew preferred to end it up with mutiny 🤝")
    }
    
    func mutiny() {
        discussTerms(term: "mutiny")
        print("The crew expressed readiness for attack! Fire cannon! 💣")
    }
    
    private func discussTerms(term: String) {
        print("Negotiations have started for \(term)...")
    }
}


//create manager objects
let cargoManager = CargoManager()
let crewManager = CrewManager()

//create my ship
var myShip = PirateShip(name: "Ekastasia", cannonsCount: 28, cargoManager: cargoManager, crewManager: crewManager)

//add crew to my ship
myShip.addCrew(crewMember1: "Captain Eka")
myShip.addCrew(crewMember1: "Lazy Joe")
myShip.addCrew(crewMember1: "Rabel Jane")
myShip.listCrew()

//add cargo (including cannons for the battle) to my ship
myShip.addCargo(item1: "canned veggies")
myShip.addCargo(item1: "barrels of red wine")
myShip.addCargo(item1: "medicines")
myShip.addCargo(item1: "cannons")
myShip.listCargo()

//create treasure map, provide coordinates
let myTreasureMap = TreasureMap(x: 12, y: 7)

//create pirate code
let pirateCode = PirateCode()

//create SeaAdventure that my ship will encounter (FlyingDutchman)
let seaAdventure = SeaAdventure(adventureType: "FlyingDutchman")

//set starting coordinates for shipping
let startingX = 0
let startingY = 0

//using hintToTreasure method to find the treasure
myTreasureMap.hintToTreasure(firsParameter: startingX, secondParameter: startingY)
myTreasureMap.hintToTreasure(firsParameter: 2, secondParameter: 5)
myTreasureMap.hintToTreasure(firsParameter: 7, secondParameter: 7)
myTreasureMap.hintToTreasure(firsParameter: 12, secondParameter: 7)

//encountering an adventure & print it
seaAdventure.encounter(adventure: seaAdventure.adventureType)

//using PirateCode decide about action type: negotiation or battle
pirateCode.mutiny()

//using cannons
myShip.fireCannon(count: 8)
myShip.fireCannon(count: 10)
myShip.fireCannon(count: 15)
myShip.fireCannon(count: 10)
