/*:
 # Functions
 
 * callout(Reference):
 Apple Inc. “The Swift Programming Language (Swift 4).” iBooks. For more information, see [The Swift Programming Language (Swift 4)](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/)
 
 ---
 
 * callout(Definition):
 Functions are a named section of a program that performs a specific task. A function has a name, that identifies what it does, it may take parameters (input) and it may return a result (output).
 When you want the task to be executed, you call a function passing the required parameters.*
 
 ---
 
 ## Examples
 */

func checkMachine(machine: String) -> Bool {
    
    var canMakeCoffee: Bool = false
    
    if machine == "Moka" {
        canMakeCoffee = true
    } else {
        canMakeCoffee = false
    }
    
    return canMakeCoffee
}


func checkAllTheIngredients(ingredients: [String]) -> Bool {
    
    var isCoffeeAvailable: Bool = false
    var isWaterAvailable: Bool = false
    var canMakeCoffee: Bool = false
    
    for ingredient in ingredients {
        
        if ingredient == "Water" {
            isWaterAvailable = true
        }
        
        if ingredient == "Coffee Powder" {
            isCoffeeAvailable = true
        }
    }
    
    if isCoffeeAvailable == true && isWaterAvailable == true {
        canMakeCoffee = true
    }
    
    return canMakeCoffee
}

func tryToMakeCoffee(elements: [String], coffeeMachine: String) -> String {
    
    let machineReady = checkMachine(machine: coffeeMachine)
    let ingredientsAvailable = checkAllTheIngredients(ingredients: elements)
    var result = "💀"
    
    if machineReady && ingredientsAvailable {
        
        result = "☕️"
        
        if elements.contains("Sugar"){
            print("The ☕️ is 😋")
        } else {
            print("The ☕️ is 🤢")
        }
    }
    
    return result
}

/*:
 ## Variables and Arrays
 */
var pizzaIngredients = ["Pasta", "Mozzarella", "Tomato"]
var regularCoffeeIngredients = ["Water", "Coffee Powder", "Sugar"]
var blackCoffeeIngredients = ["Water", "Coffee Powder"]
var coffeeMachine = "Moka"

/*:
 ## Functions Calling
 */
print(checkMachine(machine: "Moka")) // Example of printing Bool
checkMachine(machine: "Coffeepod")
checkMachine(machine: coffeeMachine)

print(checkAllTheIngredients(ingredients: ["Lemon","Soda"])) // Example of printing Bool
checkAllTheIngredients(ingredients: pizzaIngredients)
checkAllTheIngredients(ingredients: regularCoffeeIngredients)
checkAllTheIngredients(ingredients: blackCoffeeIngredients)

print("\nTrying to make the coffee using pizza ingredients")
let firstResult = tryToMakeCoffee(elements: pizzaIngredients, coffeeMachine: coffeeMachine)
print("Result: \(firstResult)")

print("\nTrying to make the coffee using regular coffee ingredients")
let secondResult = tryToMakeCoffee(elements: regularCoffeeIngredients, coffeeMachine: coffeeMachine)
print("Result: \(secondResult)")

print("\nTrying to make the coffee using black coffee ingredients")
let thirdResult = tryToMakeCoffee(elements: blackCoffeeIngredients, coffeeMachine: coffeeMachine)
print("Result: \(thirdResult)")



/*:
 ## Set from Array
 */
var animals = ["cat", "dog", "bird", "elefant", "panther", "rat", "cat", "cat", "pig", "dog"]
var uniqueAnimals: Set<String> = []

for animal in animals {
    uniqueAnimals.insert(animal)
}

print(uniqueAnimals)



var pets: Set = ["cat", "dog"]
var otherAnimals: Set = ["bird", "elephant", "panther", "cat", "dog", "pig"]

var union: Set = pets.union(otherAnimals)
var intersect: Set = pets.intersection(otherAnimals)

print(union)
print(intersect)



/*:
 ## Dictionary
 */
//this first one is a declaration of an empty array
var hexColors: [String: String] = [:]
hexColors["blue"] = "#0000ff"
hexColors["red"] = "#ff0000"
hexColors["magenta"] = "#ff00ff"
hexColors["gold"] = "#ffd700"

// Loop over Dictionary (not ordered) THIS LOOP USES A TUPLE TO ITERATE OVER A DICTIONARY
for (color, code) in hexColors {
    print("Color is \(color), code is \(code)")
}


/*:
 ## Dictionary with Tuples
 */
var rgbColors: [String: (r: Int, g: Int, b: Int)] = [:]
rgbColors["blue"] = (0, 0, 255)
rgbColors["red"] = (255, 0, 0)
rgbColors["magenta"] = (255, 0, 255)
rgbColors["gold"] = (255, 215, 0)

// Loop over Dictionary (not ordered)
for (color, code) in rgbColors {
    print("Color is \(color), code is \(code)")
}


/*:
 ## Array and Dictionary WE HAVE AN ARRAY, WE ARE ITERATING OVER NUMBERS AND WE ARE COUNTING THE FREQUENCY USING THE DICTIONARY. IN THE LAST LINE THE LAST IS USED BECAUSE UNIQUE IS DECLARED AS AN ARRAY
 */
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

var frequency: [Int: Int] = [:]
var uniques: [Int] = []

for number in numbers {
    if let oldFreq = frequency[number] {
        frequency[number] = oldFreq + 1
    } else {
        uniques.append(number)
        frequency[number] = 1
    }
}

uniques.sort()

for number in uniques {
    print("Num: \(number) Freq: \(frequency[number]!)")
}

// HOW TO MODEL REAL ENTITIES WITH SWIFT

/* SUN
 It is round
 It is yellow
 rgbColors["yellow"] = (255, 255, 0)
 It is hot
 it is very big
 it is definitely shimmering
 it is a star
 it looks quite like this ☀️
 */

/* TYPES
 String, Int, Bool, Float, Array, Set
 NAMED
 protocol, enum, struct, class
 COMPOUND
 tuple, function
 
 ENUMERATION

 
 enum keyword represents a FINITE number of states of being */

 enum CustomEnumeration {
 // enum definition
 }
 
 enum Direction {
 case north
 case south
 case east
 case west
 }
 
enum Developer {
case geek
case creative
}

// I can assign

let dev = Developer.geek

if dev == Developer.geek {
    print("I'm a geek")
} else if dev == Developer.creative {
    print("I'm a creative")
} else {
 print("What else?")
}

// SWITCH with ENUMS: a better syntax


switch dev {
case Developer.geek:
        print("I'm a geek")
        break
case Developer.creative:
    print("I'm a creative")
    break

}

// STRUCTURES AND CLASSES

struct CustomStructure {
    // struct definition
}

//Notice the structure goes in Uppercase, as it applies to many things



struct Vehicle {
    var brand: String
    var color: String
    var wheels: Int
    
// all constant and structures need an initializer function
    
    init(brand: String, color: String, wheels:Int) {
        self.brand = brand
        self.color = color
        self.wheels = wheels
        
        //Notice: we use self to access something which is INSIDE the structure (in this case to initialize values)
    }
}

let ferrari = Vehicle(brand: "Ferrari", color: "Red", wheels: 4)

/* Notice: in this case, since class and structures are using the same labels, the initializer could be omitted (SWIFT is smart enough to infer they are the same)

// HOW DO YOU SPECIFY A CLASS OR A STRUCT THAT YOU CREATED? -> PROPERTIES & METHODS

// Properties

 var age: Int

let name: String

// Methods

 func increaseAge() {
    age += 1
}

class Person {
    let name: String
    var age: Int
    init(firstName: String) {
        name =
    }
} */

// Instance or object?

class Person {
    let name: String
    var age: Int
    
    init(firstName: String) {
        name = firstName
        age = 0
    }
    func increaseAge() {
        age += 1
    }
}

let mentor = Person(firstName: "Max")
mentor.age = 32
print("\(mentor.name) is \(mentor.age) years old")
mentor.increaseAge()
print("\(mentor.name) years old")

// mentor is the INSTANCE while person is the OBJECT

// Actually, array is also a class, with his own properties and methods (e.g count is a property)

var mentors: [String] = ["Max", "Mara", "Dario"]

//property
mentors.count

//method
mentors.append("Luigi")


// EXERCISE (30 min)

/* SUN
 It is round
 It is yellow
 rgbColors["yellow"] = (255, 255, 0)
 It is hot
 it is very big
 it is definitely shimmering
 it is a star
 it looks quite like this ☀️
 */

// ENUM
enum spaceObject {
    case star
    case planet
}

let sunEnum = spaceObject.star

print(sunEnum)

// STRUCT
struct myStructObject {
    var temperature: String
    var shimmering: Bool
    var dimension: String
    
    // all constant and structures need an initializer function
    
    init(temperature: String, shimmering: Bool, dimension:String) {
        self.temperature = temperature
        self.shimmering = shimmering
        self.dimension = dimension
        
        //Notice: we use self to access something which is INSIDE the structure (in this case to initialize values)
    }
}

let sunStruct = myStructObject(temperature: "Hot", shimmering: true, dimension: "Big")

print(sunStruct)

// CLASS

class myClassObject {
    var appearance: String
    var shape: String
    
    init(sunemoji: String, objectshape: String) {
        self.appearance = sunemoji
        self.shape = objectshape
    }
    func swapAppearance() {
        appearance += "☀️"
    }
}


let sunAppearance = myClassObject(sunemoji: "☀️", objectshape: "Round")
sunAppearance.appearance = "☀️"
print("\(sunAppearance.appearance) is \(sunAppearance.shape) shaped")
mentor.increaseAge()
print("\(sunAppearance.appearance) is how it looks like")

