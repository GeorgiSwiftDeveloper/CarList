//
//  ContentView.swift
//  CarAppSwiftUI
//
//  Created by Georgi Malkhasyan on 7/24/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var carStore = CarStore.init(car: cardData)
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(carStore.car)  { car in
                    CarList(car: car)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CarList: View {
    
    var car : Car
    var body: some View {
        NavigationLink(destination:CarDetails(selectedCar: car) ){
        HStack{
            Image(car.imageName)
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Text("\(car.name)")
        }
    }
    }
}
