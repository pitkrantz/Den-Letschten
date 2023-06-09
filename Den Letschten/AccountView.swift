//
//  AccountView.swift
//  Den Letschten
//
//  Created by Pit Krantz on 09/06/2023.
//

import SwiftUI

struct AccountView: View {
    @State var username: String = ""
    var body: some View {
        VStack{
            HStack{
               Spacer()
                Button{
                    print("reset everything")
                } label: {
                    Image(systemName: "trash")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .foregroundColor(.red)
                }
                .padding(.trailing, 40)
            }
            Button {
                print("Change Profil picture")
            } label: {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.top, 80)
            }
            VStack {
                TextField("Username", text: $username)
                    .padding()
            }
            .padding(.top, 100)
            Spacer()
//            Button {
//                print("Request Health App access")
//            } label: {
//                Image(systemName: "heart.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 50)
//                    .foregroundColor(.red)
//            }
//            .padding(.top)
//
            Spacer()
                       
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
