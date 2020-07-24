//
//  CarData.swift
//  CarAppSwiftUI
//
//  Created by Georgi Malkhasyan on 7/24/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import UIKit
import SwiftUI


var carData: [Car] = loadJson("carData.json")


func loadJson<T: Decodable>(_ filename: String ) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else{fatalError("\(filename) not found")}
    
    do {
       data =  try Data(contentsOf: file)
    } catch  {
        fatalError("Could not find url")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
        
    } catch  {
        fatalError("unable to retrun \(filename): (error)")
    }
    
}
