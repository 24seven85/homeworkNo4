//
//  main.swift
//  homeworkNo4
//
//  Created by Maksim Kjaulakis on 23.12.2020.
//

import Foundation

enum Color {
    case green, red, black
}
enum Clierence {
    case low, high
}

class Car {
    var brand: String
    let color: Color
    let wheels: Int
    let km: Int
    
    
    init(brand: String, color: Color, wheels: Int, km: Int) {
        self.brand = brand
        self.color = color
        self.wheels = wheels
        self.km = km
    }
    func printCar() {
        
    }
}

    
class TrunkCar: Car {
    let capacity: Int
    let clierence: Clierence
    init(brand: String, color: Color, wheels: Int, km: Int, capacity: Int, clierence: Clierence){
        self.capacity = capacity
        self.clierence = clierence
        super.init(brand: brand, color: color, wheels: wheels, km: km)
    }
}

class SportCar: Car {
    let speed: Int
    let clierence: Clierence
    init(brand: String, color: Color, wheels: Int, km: Int, speed: Int, clierence: Clierence) {
        self.speed = speed
        self.clierence = clierence
        super.init(brand: brand, color: color, wheels: wheels, km: km)
    }
}
