//
//  LeaderBoard.swift
//  Den Letschten
//
//  Created by Pit Krantz on 08/06/2023.
//

import SwiftUI


enum SortingModes: String, CaseIterable{
    case steps, alcohol, beer
}

struct LeaderBoard: View {
    @State var selectedSort: SortingModes = .steps
   
    
    // sort the member list based on their ranking
    var sortedMembers: [Person]{
        switch selectedSort {
        case .steps:
            return Jungs.members.sorted{$1.steps < $0.steps}
        case .alcohol:
            return Jungs.members.sorted{$1.alcohol < $0.alcohol}
        case .beer:
            return Jungs.members.sorted{$1.beer < $0.beer}
        }
    }
    
    var body: some View {
        VStack {
            Text("Leaderboard")
                .font(.system(size: 40))
                .padding()
            
            Picker("Sort", selection: $selectedSort) {
                Text("Steps").tag(SortingModes.steps)
                Text("Alcohol").tag(SortingModes.alcohol)
                Text("Beer").tag(SortingModes.beer)
            }
            .pickerStyle(.segmented)
            
            
            Rectangle()
                .frame(height: 3)
                
            ScrollView{
                ForEach(sortedMembers) { Person in
                    PersonView(showedPerson: Person, ranking: 1, currentSort: selectedSort)
                    
                }
            }
        }
        
    }
}

struct LeaderBoard_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoard()
    }
}
