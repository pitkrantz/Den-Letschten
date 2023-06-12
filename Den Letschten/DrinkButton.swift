//
//  DrinkButton.swift
//  Den Letschten
//
//  Created by Pit Krantz on 09/06/2023.
//

import SwiftUI

struct DrinkButton: View {
    
    @ObservedObject var Account: Person = userAccount
    
    let buttonSize: CGFloat = 50
    let drinkVersion: Drinks
    
    var body: some View {
        Button {
            switch(drinkVersion){
            case .beer:
                print("beer added")
                Account.beer = Account.beer + 1
                print("Current beer: \(Account.beer)")
               
                
                //MARK: Change this to whatever I need don't leave it like this
                
                
            case .wine:
                print("wine added")
                Account.alcohol = Account.alcohol + 1
                print("Current alcohol: \(Account.alcohol)")

            }
            
            
        } label: {
            ZStack {
//                Circle()
//                    .frame(width: 2 * CGFloat(buttonSize))
//                    .foregroundColor(.black)
                Rectangle()
                    .cornerRadius(10)
                    .frame(width: 3 * buttonSize, height: 2.5 * buttonSize)
                    .foregroundColor(.black)
                switch(drinkVersion){
                case .beer:
                    Image(systemName: "eraser")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: CGFloat(buttonSize))
                        .foregroundColor(.yellow)
                case .wine:
                    Image(systemName: "wineglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: CGFloat(buttonSize))
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

struct DrinkButton_Previews: PreviewProvider {
    static var previews: some View {
        DrinkButton(drinkVersion: .beer)
    }
}
