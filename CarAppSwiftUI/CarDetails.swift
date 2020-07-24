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
        Form  {
            Section(header: Text("Care Details")){
                
                Image(selectedCar.imageName).resizable().aspectRatio(contentMode: .fit).cornerRadius(20).padding()
                
                Text("\(selectedCar.name)").bold()
                
                Text(selectedCar.description).font(.headline)
                
                HStack{
                    Text("Hybrid").bold().foregroundColor(.blue)
                    Spacer()
                    
                    Image(systemName: selectedCar.isHybrid ? "checkmark.circle": "xmark.circle")
                        .foregroundColor(selectedCar.isHybrid ? .green: .red)
                }
                
                
            }
        }
    }
}

struct CarDetails_Previews: PreviewProvider {
    static var previews: some View {
        CarDetails(selectedCar: cardData[0])
    }
}
