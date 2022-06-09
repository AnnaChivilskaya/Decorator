import UIKit

protocol Coffee {
    var cost: Int  { get }
}

protocol Decorator: Coffee {
    var base: Coffee { get }
    init (base: Coffee)
}

class Milk: Decorator {
    let base: Coffee
    var cost: Int {
        return base.cost + 50
    }
    required init(base: Coffee) {
        self.base = base
    }
    
   
}

class Whip: Decorator {
    let base: Coffee
    var cost: Int {
        return base.cost + 10
    }
    required init(base: Coffee) {
        self.base = base
    }
}

class Sugar: Decorator {
    let base: Coffee
    var cost: Int {
        return base.cost + 5
    }
    required init(base: Coffee) {
        self.base = base
    }
}

class Nuts: Decorator {
    let base: Coffee
    var cost: Int {
        return base.cost + 55
    }
    required init(base: Coffee) {
        self.base = base
    }
}

class Ice: Decorator {
    let base: Coffee
    var cost: Int {
        return base.cost + 10
    }
    required init(base: Coffee) {
        self.base = base
    }
}

class SimpleCoffee: Coffee {
    var cost: Int {
        return self.cost + 150
    }
}

let coffee = SimpleCoffee()
let coffeeMilk = Milk(base: coffee)
let coffeeNuts = Nuts(base: Milk(base: coffeeMilk))
let coffeeIce = Milk(base: coffeeMilk)

print(coffee.cost)
print(coffeeMilk.cost)
print(coffeeNuts.cost)
print(coffeeIce.cost)










