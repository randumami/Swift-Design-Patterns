// Abstract Product
protocol IceCream {
    func serve()
}

// Concrete Products
class VanillaIceCream: IceCream {
    func serve() {
        print("Vanilla Ice Cream served!")
    }
}

class ChocolateIceCream: IceCream {
    func serve() {
        print("Chocolate Ice Cream served!")
    }
}

class StrawberryIceCream: IceCream {
    func serve() {
        print("Strawberry Ice Cream served!")
    }
}

// Creator (Abstract Factory)
protocol IceCreamFactory {
    func createIceCream() -> IceCream
}

// Concrete Creators
class VanillaIceCreamFactory: IceCreamFactory {
    func createIceCream() -> IceCream {
        return VanillaIceCream()
    }
}

class ChocolateIceCreamFactory: IceCreamFactory {
    func createIceCream() -> IceCream {
        return ChocolateIceCream()
    }
}

class StrawberryIceCreamFactory: IceCreamFactory {
    func createIceCream() -> IceCream {
        return StrawberryIceCream()
    }
}

// Client Code
class IceCreamShop {
    func orderIceCream(factory: IceCreamFactory) {
        let iceCream = factory.createIceCream()
        print("Customer orders:")
        iceCream.serve()
    }
}

// Usage
let iceCreamShop = IceCreamShop()

let vanillaFactory = VanillaIceCreamFactory()
let chocolateFactory = ChocolateIceCreamFactory()
let strawberryFactory = StrawberryIceCreamFactory()

iceCreamShop.orderIceCream(factory: vanillaFactory)
// Customer orders:
// Vanilla Ice Cream served!
iceCreamShop.orderIceCream(factory: chocolateFactory)
// Customer orders:
// Chocolate Ice Cream served!

iceCreamShop.orderIceCream(factory: strawberryFactory)
// Customer orders:
// Strawberry Ice Cream served!

