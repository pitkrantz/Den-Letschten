//
//  AddDrinks.swift
//  Den Letschten
//
//  Created by Pit Krantz on 09/06/2023.
//

import SwiftUI


enum Drinks{
    case beer, wine
}

struct AddDrinks: View {
    
    
    var body: some View {
        VStack(spacing: 40) {
            HStack(spacing: 40){
                DrinkButton(drinkVersion: .beer)
                DrinkButton(drinkVersion: .wine)
            }
            HStack(spacing: 40){
                DrinkButton(drinkVersion: .beer)
                DrinkButton(drinkVersion: .wine)
            }
        }
    }
}

struct AddDrinks_Previews: PreviewProvider {
    static var previews: some View {
        AddDrinks()
    }
}
