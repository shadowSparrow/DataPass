//
//  UserModel.swift
//  dataPass
//
//  Created by mac on 23.12.2021.
//

import Foundation
import UIKit

struct User {
    
    let user: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        
        User(user: "User",
             password: "password",
             person: Person(name: "Александр",
                            surname: "Романенко",
                            languageSkills: "French, English, Chinese"
                            , professionalSkills: "Private language tutoring",
                            hobbies: "All kinds of boarding",
                            pictureName: "CV")
                    )
    }
}

struct Person {
    
    var name: String
    var surname: String
    var languageSkills: String
    var professionalSkills: String
    var hobbies: String
    var pictureName: String
}
