//
//  Builder.swift
//  Builder
//
//  Created by Soren Randum on 02/01/2024.
//

// Product: Pizza
class Pizza {
    var size: String
    var crust: String
    var sauce: String
    var cheese: String
    var toppings: [String]

    init(size: String, crust: String, sauce: String, cheese: String, toppings: [String]) {
        self.size = size
        self.crust = crust
        self.sauce = sauce
        self.cheese = cheese
        self.toppings = toppings
    }

    func describe() {
        print("Pizza Details:")
        print("Size: \(size)")
        print("Crust: \(crust)")
        print("Sauce: \(sauce)")
        print("Cheese: \(cheese)")
        print("Toppings: \(toppings.joined(separator: ", "))")
    }
}

// Builder Protocol
protocol PizzaBuilder {
    func setSize(_ size: String)
    func setCrust(_ crust: String)
    func setSauce(_ sauce: String)
    func setCheese(_ cheese: String)
    func addTopping(_ topping: String)
    func build() -> Pizza
}

// Concrete Builder
class CustomPizzaBuilder: PizzaBuilder {
    private var pizza = Pizza(size: "", crust: "", sauce: "", cheese: "", toppings: [])

    func setSize(_ size: String) {
        pizza.size = size
    }

    func setCrust(_ crust: String) {
        pizza.crust = crust
    }

    func setSauce(_ sauce: String) {
        pizza.sauce = sauce
    }

    func setCheese(_ cheese: String) {
        pizza.cheese = cheese
    }

    func addTopping(_ topping: String) {
        pizza.toppings.append(topping)
    }

    func build() -> Pizza {
        return pizza
    }
}

// Director
class PizzaDirector {
    func makeVegetarianPizza(builder: PizzaBuilder) {
        builder.setSize("Medium")
        builder.setCrust("Thin")
        builder.setSauce("Tomato")
        builder.setCheese("Mozzarella")
        builder.addTopping("Mushrooms")
        builder.addTopping("Tomatoes")
        builder.addTopping("Olives")
    }

    func makeMeatLoversPizza(builder: PizzaBuilder) {
        builder.setSize("Large")
        builder.setCrust("Thick")
        builder.setSauce("BBQ")
        builder.setCheese("Cheddar")
        builder.addTopping("Pepperoni")
        builder.addTopping("Sausage")
        builder.addTopping("Bacon")
    }
}

// Client Code
let customPizzaBuilder = CustomPizzaBuilder()
let pizzaDirector = PizzaDirector()

pizzaDirector.makeVegetarianPizza(builder: customPizzaBuilder)
let vegetarianPizza = customPizzaBuilder.build()
vegetarianPizza.describe()

print("\n-----\n")

let meatLoversPizzaBuilder = CustomPizzaBuilder()
pizzaDirector.makeMeatLoversPizza(builder: meatLoversPizzaBuilder)
let meatLoversPizza = meatLoversPizzaBuilder.build()
meatLoversPizza.describe()


//outputs:
//Pizza Details:
//Size: Medium
//Crust: Thin
//Sauce: Tomato
//Cheese: Mozzarella
//Toppings: Mushrooms, Tomatoes, Olives
//
//-----
//
//Pizza Details:
//Size: Large
//Crust: Thick
//Sauce: BBQ
//Cheese: Cheddar
//Toppings: Pepperoni, Sausage, Bacon
