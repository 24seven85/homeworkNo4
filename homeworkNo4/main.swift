//
//  main.swift
//  homeworkNo4
//
//  Created by Maksim Kjaulakis on 23.12.2020.
//

import Foundation

enum Color {
    case green, red, black, white
}
enum Clierence {
    case low, high, normal
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
        
        if trunkState == .empty {
            self.trunkState = .full
            print("Потребовалась полная загрузка")
        } else if trunkState == .half {
            self.trunkState = .full
            print("Требовалась догрузка")
        } else if trunkState == .full {
            print("Загрузка не требуется")
        }
    
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
        
        if windowState == .close {
            print("Окна закрыты")
        } else if windowState == .open {
            self.windowState = .close
            print("Закрываем окна")
        }
    }
}
var normalCar1 = Car(brand: "Volkswagen", color: .white, wheels: 17, km: 180_000)
var normalCar2 = Car(brand: "Opel", color: .green, wheels: 16, km: 199_000)

var truck1 = TrunkCar(brand: "Scania", color: .red, wheels: 24, km: 250_000, capacity: 150_000, clierence: .high, trunkState: .empty)
var truck2 = TrunkCar(brand: "Volvo", color: .green, wheels: 23, km: 190_000, capacity: 175_000, clierence: .high, trunkState: .half)

var car1 = SportCar(brand: "Ferrari", color: .red, wheels: 20, km: 20_000, speed: 350, clierence: .low, windowState: .close)
var car2 = SportCar(brand: "Lamborgini", color: .black, wheels: 21, km: 95_000, speed: 370, clierence: .low, windowState: .close)
    

print("Первый грузовик: \(truck1.brand), загруженность: \(truck1.trunkState)")
truck1.printCar()

print("\(car2.brand), цвет: \(car1.color), колеса: \(car2.wheels), окна: \(car2.windowState)")
car2.printCar()
