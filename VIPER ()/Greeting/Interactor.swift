//
//  Interactor.swift
//  VIPER ()
//
//  Created by Чистяков Василий Александрович on 16.12.2021.
//

import Foundation

protocol GreetingOutputProtocol: class {
    func fetchData(greeting: GreetingData)
}

protocol GreetingInteractorProtocol: class {
    func greetiungInteractor()
}

class GreetingInteractor {
    
    weak var presentor: GreetingOutputProtocol!
    
    required init (presentor: GreetingOutputProtocol) {
        self.presentor = presentor
    }
}

extension GreetingInteractor: GreetingInteractorProtocol {
    func greetiungInteractor() {
        let person = Person(name: "Basil", surname: "Chistyakov")
        let object = "\(person.name) \(person.surname)"
        let greeting = GreetingData(greeting: "Hello", subject: object)
        presentor.fetchData(greeting: greeting)
    }
    
    
}
