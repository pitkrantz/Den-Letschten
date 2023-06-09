//
//  DrinkButton.swift
//  Den Letschten
//
//  Created by Pit Krantz on 09/06/2023.
//

import SwiftUI

struct DrinkButton: View {
   
    let buttonSize: CGFloat = 50
    
    var body: some View {
        Button {
            print("wine added")
        } label: {
            ZStack {
//                Circle()
//                    .frame(width: 2 * CGFloat(buttonSize))
//                    .foregroundColor(.black)
                Rectangle()
                    .cornerRadius(10)
                    .frame(width: 3 * buttonSize, height: 2.5 * buttonSize)
                    .foregroundColor(.black)
                Image(systemName: "wineglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: CGFloat(buttonSize))
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct DrinkButton_Previews: PreviewProvider {
    static var previews: some View {
        DrinkButton()
    }
}
