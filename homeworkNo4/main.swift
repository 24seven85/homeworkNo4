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

enum WindowState{
    case open, close
}

enum TrunkState {
    case full, half, empty
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
    var trunkState: TrunkState
    init(brand: String, color: Color, wheels: Int, km: Int, capacity: Int, clierence: Clierence, trunkState: TrunkState){
        self.capacity = capacity
        self.clierence = clierence
        self.trunkState = trunkState
        super.init(brand: brand, color: color, wheels: wheels, km: km)
    }
    
    override func printCar() {
        super.printCar()
        self.trunkState = .full
        
    }
}

class SportCar: Car {
    let speed: Int
    let clierence: Clierence
    var windowState: WindowState
    init(brand: String, color: Color, wheels: Int, km: Int, speed: Int, clierence: Clierence, windowState: WindowState) {
        self.speed = speed
        self.clierence = clierence
        self.windowState = windowState
        super.init(brand: brand, color: color, wheels: wheels, km: km)
    }
    override func printCar() {
        super.printCar()
        self.windowState = .open
    }
}

