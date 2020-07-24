//
//  CarDetails.swift
//  CarAppSwiftUI
//
//  Created by Georgi Malkhasyan on 7/24/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct CarDetails: View {
    
    var selectedCar: Car
    
    var body: some View {
        Form {
            Section(header: Text("Car Details")){
                Image(selectedCar.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedCar.name)
                
                Text(selectedCar.description)
                
                HStack{
                    Text("Hybrid").bold().foregroundColor(.blue)
                    Spacer()
                    Image(systemName: selectedCar.isHybrid ? "checkmark.circle" : "xmark.circle")
                }
            }
        }
    }
}

struct CarDetails_Previews: PreviewProvider {
    static var previews: some View {
        CarDetails(selectedCar: carData[0])
    }
}
