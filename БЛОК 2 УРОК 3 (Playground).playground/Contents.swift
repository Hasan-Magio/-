class Animal {
    var name = ""
    var description: String {
        "Animal"
    }
    
    // создадим еще один пустой инициализатор
    init () {}
    
    init(name: String) {
        self.name = name
    }
}

class Cat: Animal {
    override var description: String {
        "Cat"
    }
}

class Dog: Animal {
    override var description: String {
        "Dog"
    }
}

class Bird: Animal {
    override var description: String {
        "Bird"
    }
}


let animal = Animal()
let cat = Cat()
let dog = Dog()
let bird = Bird()

private func callAnimal (_ animal: Animal) -> Animal {
    animal
}

//let pet = callAnimal(dog)
//
//if pet is Cat {
//    print("This is a cat")
//} else if pet is Dog {
//    print("This is a dog")
//} else if pet is Bird {
//    print("This is a bird")
//}
//
//switch pet {
//case is Cat:
//    print("This is a cat")
//case is Dog:
//    print("This is a dog")
//case is Bird:
//    print("This is a bird")
//default:
//    print("fuck you")
//}


// cоздаем цикл рандомных животных
func randomCountOfAnimals() -> [Animal] {
    var pets: [Animal] = []
    let numberOfDogs = Int.random(in: 1...10)
    let numberOfCats = Int.random(in: 1...10)
    let numberOfBirds = Int.random(in: 1...10)
    
    
    for _ in 1...numberOfDogs {
        let dog = Dog()
        pets.append(dog)
    }
    
    for _ in 1...numberOfCats {
        let cat = Cat()
        pets.append(cat)
    }
    
    for _ in 1...numberOfCats {
        let bird = Bird()
        pets.append(bird)
    }
    return pets
}


let pets = randomCountOfAnimals()

var dogCount = 0
var catCount = 0
var birdCount = 0

pets.forEach {      // альтернатива for in (интересно)
    if $0 is Dog {
        dogCount += 1
    } else if $0 is Cat {
        catCount += 1
    } else if $0 is Bird {
        birdCount += 1
    }
}
//for pet in pets {
//    if pet is Dog {
//        dogCount += 1
//    } else if pet is Cat {
//        catCount += 1
//    } else if pet is Bird {
//        birdCount += 1
//    }
//}
print("There are \(dogCount) dogs, \(catCount) cats and \(birdCount) birds")







func walking(with dog: Dog) {
    "Walking \(dog.name)"
}

func cleanLitterBox(for cat: Cat) {
    "Cleaning the \(cat.name) litterbox"
}

func cleanCage(for bird: Bird) {
    "We need to clean \(bird.name) shit"
}

pets.forEach {
    if let dog = $0 as? Dog {
      walking(with: dog)
    } else if let cat = $0 as? Cat {
        cleanLitterBox(for: cat)
    } else if let bird = $0 as? Bird {
        cleanCage(for: bird)
    }
}


let myCards: [Any] = [6, 9, 10, "Queen", "King"]

func findNumCards(cards: [Any]) -> Int {
    var total = 0
    
    for card in cards {
        if let numberCard = card as? Int {
            total += numberCard
        } else if let stringCard = card as? String {
            total += 10
        }
    }
    return total
}

print(findNumCards(cards: myCards))
