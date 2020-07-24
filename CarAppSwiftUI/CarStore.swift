//
//  CarStore.swift
//  CarAppSwiftUI
//
//  Created by Georgi Malkhasyan on 7/24/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI
import Combine



class CarStore: ObservableObject {
    @Published var car: [Car]
    
    init(car: [Car]) {
        self.car = car
    }
}
