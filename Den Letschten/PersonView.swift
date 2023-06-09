//
//  PersonView.swift
//  Den Letschten
//
//  Created by Pit Krantz on 08/06/2023.
//

import SwiftUI

struct PersonView: View {
    let showedPerson: Person
    let ranking: Int
    let currentSort: SortingModes

    var body: some View {
        HStack{
            Text("#\(ranking)")
                .font(.system(size: 30))
                .padding()
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .mask {
                    Circle()
                        .frame(width: 50, height: 50)
                }
                .padding()
            Text("\(showedPerson.username)")
                .font(.system(size: 30))
            Spacer()
            switch(currentSort){
            case .steps:
                Text("\(showedPerson.steps)")
                    .font(.system(size: 30))
                    .padding()
            case .alcohol:
                Text("\(Int(showedPerson.alcohol))")
                    .font(.system(size: 30))
                    .padding()
            case .beer:
                Text("\(showedPerson.beer)")
                    .font(.system(size: 30))
                    .padding()
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(showedPerson: Luca, ranking: 2, currentSort: .steps)
    }
}
