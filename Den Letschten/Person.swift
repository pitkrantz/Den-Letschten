//
//  Person.swift
//  Den Letschten
//
//  Created by Pit Krantz on 08/06/2023.
//

import Foundation

class Person: ObservableObject, Identifiable{
   
    let id = UUID()
    let username: String
    let email: String
   
    var steps: Int
    var alcohol: Double
    var beer: Int
    
    init(username:String, email:String, steps:Int, alcohol: Double = 0, beer: Int = 0){
        self.username = username
        self.email = email
        self.steps = steps
        self.alcohol = alcohol
        self.beer = beer
        
    }
    
    
}



//MARK: Test Persons
let Luca = Person(username: "Luca", email: "luca@email", steps: 10, beer: 20)
let Lui = Person(username: "Lui", email: "lui@email.com", steps: 20)
let Lou = Person(username: "Lou", email: "Lou@email.com", steps: 15, alcohol: 3.5)


class Group: ObservableObject{
    
    var members: [Person]
    
    init(members:[Person]){
        self.members = members
    }
}


//MARK: Test Group

let Jungs = Group(members: [Luca, Lui, Lou])
