//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct Person {
    var name: String = ""
    var ownMoney: Double = 0
    var gender: Gender!
    
    enum Gender {
        case male, female
    }
    
    mutating func buyCoffee(priceOfCoffee: Double) {
        self.ownMoney = self.ownMoney - priceOfCoffee
        
        print("""
              \(self.name)이(가) \(priceOfCoffee)원의 커피를 구매하였습니다.\t
              남은 잔액은 \(self.ownMoney) - \(priceOfCoffee)원 입니다.
              """)
    }
    
    init(name: String, ownMoney: Double, gender: Gender) {
        self.name = name
        self.ownMoney = ownMoney
        self.gender = gender
    }
}

struct Coffeeshop {
    var sales: Double = 0
    var barista: Person?
    
    func takeAOrder(orderer: Person) -> String {
        return "\(orderer) 고객으로부터 주문을 받습니다."
    }
}

enum Coffee {
    case americano, latte
}

let misterLee: Person = Person(name: "lee", ownMoney: 0, gender: Person.Gender.male)
let missKim: Person = Person(name: "kim", ownMoney: 0, gender: Person.Gender.female)

var yagombucks: Coffeeshop = Coffeeshop()
yagombucks.barista = misterLee
