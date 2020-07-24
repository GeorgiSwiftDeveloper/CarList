//
//  File.swift
//  CarAppSwiftUI
//
//  Created by Georgi Malkhasyan on 7/24/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI
import UIKit

struct Car: Codable, Identifiable {
    
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    
    
    var imageName: String
    
    
}
