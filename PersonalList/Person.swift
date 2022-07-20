//
//  Person.swift
//  PersonalList
//
//  Created by Yuliya Ten on 20.07.2022.
//

struct Person {
    let fullName: String
    let phoneNumber: String
    let email: String
    
    var title: String {
        "\(fullName)"
    }
    
    static func getPersonsList() -> [Person] {
        [
            Person(fullName: "Rachel Green-Geller", phoneNumber: "+894561032", email: "R.Green-Geller@gmail.com"),
            Person(fullName: "Monica Geller-Bing", phoneNumber: "+891531135", email: "M.Green-Geller@gmail.com"),
            Person(fullName: "Phoebe Buffay-Hannigan", phoneNumber: "+892522109", email: "P.Buffay-Hannigan@gmail.com"),
            Person(fullName: "Joey Tribbiani", phoneNumber: "+895627779", email: "J.Tribbiani@gmail.com"),
            Person(fullName: "Chandler Bing", phoneNumber: "+891117570", email: "C.Bing@gmail.com"),
            Person(fullName: "Ross Geller", phoneNumber: "+891447748", email: "R.Geller")
            
        ]
    }
}
