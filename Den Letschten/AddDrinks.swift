//
//  AddDrinks.swift
//  Den Letschten
//
//  Created by Pit Krantz on 09/06/2023.
//

import SwiftUI

struct AddDrinks: View {
    
    
    var body: some View {
        VStack(spacing: 40) {
            HStack(spacing: 40){
                DrinkButton()
                DrinkButton()
            }
            HStack(spacing: 40){
                DrinkButton()
                DrinkButton()
            }
        }
    }
}

struct AddDrinks_Previews: PreviewProvider {
    static var previews: some View {
        AddDrinks()
    }
}
