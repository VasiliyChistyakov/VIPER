//
//  Presentor.swift
//  VIPER ()
//
//  Created by Чистяков Василий Александрович on 16.12.2021.
//

import Foundation

struct GreetingData {
    let greeting: String
    let subject: String
}

protocol GreetingPresentorProtocol: class {
    func fetchView()
}


class GreetingPresentor: GreetingPresentorProtocol {
    
    weak var view: ViewGreetingProtocol!
    var interactor: GreetingInteractorProtocol!
    
    required init(view: ViewGreetingProtocol){
        self.view = view
    }
    
    func fetchView() {
        interactor.greetiungInteractor()
    }
    
}

extension GreetingPresentor: GreetingOutputProtocol {
    func fetchData(greeting: GreetingData) {
        let greeting = "\(greeting.greeting) \(greeting.subject)! "
        view.fetchGreeting(wiht: greeting)
    }
    
    
}
    

