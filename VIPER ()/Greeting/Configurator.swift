//
//  Configurator.swift
//  VIPER ()
//
//  Created by Чистяков Василий Александрович on 16.12.2021.
//

import Foundation

protocol GreetingConfigureProtocol: class {
    func configur(view: GreetingViewController)
}


class GreetingConfigure: GreetingConfigureProtocol {
    func configur(view: GreetingViewController) {
        let presenotr = GreetingPresentor(view: view)
        let interactor = GreetingInteractor(presentor: presenotr)
        view.presenter = presenotr
        presenotr.interactor = interactor
    }
}
