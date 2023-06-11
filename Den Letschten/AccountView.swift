//
//  AccountView.swift
//  Den Letschten
//
//  Created by Pit Krantz on 09/06/2023.
//

import PhotosUI
import SwiftUI


struct AccountView: View {
    
    @StateObject var Account: Person = userAccount
    
    @State var showingAlert: Bool = false
    
    @State var avatarItem: PhotosPickerItem?
    @State var avatarImage: Image?
    
    var body: some View {
        VStack{
            HStack{
               Spacer()
                Button{
                    print("reset everything")
                    showingAlert = true

                } label: {
                    Image(systemName: "trash")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .foregroundColor(.red)
                }
                .padding(.trailing, 40)
                .alert("Delete?", isPresented: $showingAlert) {
                    HStack {
                        Button("Yes", role: .destructive){
                            print("yes")
                        }
                        Button("No", role: .cancel){
                            print("no")
                        }
                        
                    }
                }
            }
            PhotosPicker(selection: $avatarItem, matching: .images){
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .padding(.top, 80)
            }
            
            Text("\(Account.beer)")
            
           VStack {
               TextField("Username", text: $Account.username)
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
