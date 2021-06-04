//
//  TaskOneHomeworkSix.swift
//  homeWork_1
//
//  Created by Alexander Andrianov on 04.06.2021.
//  Copyright © 2021 Марат Нургалиев. All rights reserved.
//

import Foundation

protocol Coffee {
  var cost: Int { get }
}

protocol CoffeeDecorator: Coffee {
  var coffee: Coffee { get }
  init(coffee: Coffee)
}

class SimpleCoffee: Coffee {
  
  var cost: Int {
    100
  }

}

class Cream: CoffeeDecorator {
  var coffee: Coffee
  var cost: Int {
    coffee.cost + 30
  }
  
  required init(coffee: Coffee) {
    self.coffee = coffee
  }
}

class Milk: CoffeeDecorator {
  var coffee: Coffee
  var cost: Int {
    coffee.cost + 10
  }
  
  required init(coffee: Coffee) {
    self.coffee = coffee
  }
}

class Sugar: CoffeeDecorator {
  var coffee: Coffee
  var cost: Int {
    coffee.cost + 10
  }
  
  required init(coffee: Coffee) {
    self.coffee = coffee
  }
}

//  let defaultCoffee = SimpleCoffee()
//  print(defaultCoffee.cost)
//  let coffeeWithSugar = Sugar(coffee: defaultCoffee)
//  print(coffeeWithSugar.cost)
//  let coffeeWithSugarAndMilk = Milk(coffee: coffeeWithSugar)
//  print(coffeeWithSugarAndMilk.cost)
//  let coffeeWithCream = Cream(coffee: defaultCoffee)
//  print(coffeeWithCream.cost)
//
//  let trashCoffee = Milk(coffee: Cream(coffee: Sugar(coffee: SimpleCoffee())))
//  print(trashCoffee.cost)

