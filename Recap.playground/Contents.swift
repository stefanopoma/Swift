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

