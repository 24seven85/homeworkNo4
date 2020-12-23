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

class Car {
    let color: Color
    let wheels: Int
    let km: Int
    
    
    init(color: Color, wheels: Int, km: Int) {
        self.color = color
        self.wheels = wheels
        self.km = km
    }
    func printCar() {
        print(color, wheels, km)
    }
}
