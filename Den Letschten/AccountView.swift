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
    @State var data: Data?
    
    
    
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
                if let data = data, let uiimage = UIImage(data: data){
                    Image(uiImage: uiimage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200)
                        .padding(.top, 80)
                        .mask {
                            Circle()
                                .frame(width: 200, height: 200)
                        }
                }
                else{
                    Image(systemName: "person.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(.top, 80)
                }
                
            }
            .frame(width: 200, height: 200)
            .onChange(of: avatarItem) { newValue in
                guard let item = avatarItem else{
                    return
                }
                item.loadTransferable(type: Data.self){ result in
                    switch result{
                    case .success(let data):
                        if let data = data{
                            self.data = data
                        }
                        else{
                            print("Data is nil")
                        }
                    case .failure(let failure):
                        fatalError("\(failure)")
                    
                    }
                }
            }
            
            Text("\(Account.username)")
            
            
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
