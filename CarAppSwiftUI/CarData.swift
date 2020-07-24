//
//  CarData.swift
//  CarAppSwiftUI
//
//  Created by Georgi Malkhasyan on 7/24/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI
import UIKit



var cardData: [Car] = loadJson("carData.json")


func loadJson<T: Decodable>(_ fileName: String ) -> T {
    let data : Data
    
    guard let file =  Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError()
    }
    
    do {
      data =   try Data(contentsOf: file)
    } catch  {
            fatalError()
    }
    
    do {
        return  try JSONDecoder().decode(T.self, from: data)
    } catch  {
        fatalError()
    }
}
