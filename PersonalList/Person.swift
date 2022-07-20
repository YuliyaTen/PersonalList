//
//  Person.swift
//  PersonalList
//
//  Created by Yuliya Ten on 20.07.2022.
//

struct Person {
    let fullName: String
    
    var title: String {
        "\(fullName)"
    }
    
    static func getPersonsList() -> [Person] {
        [
            Person(fullName: "Rachel Green-Geller"),
            Person(fullName: "Monica Geller-Bing"),
            Person(fullName: "Phoebe Buffay-Hannigan"),
            Person(fullName: "Joey Tribbiani"),
            Person(fullName: "Chandler Bing"),
            Person(fullName: "Ross Geller")
            
        ]
    }
}
