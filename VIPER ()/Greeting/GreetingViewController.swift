//
//  GreetingViewController.swift
//  VIPER ()
//
//  Created by Чистяков Василий Александрович on 16.12.2021.
//

import UIKit

protocol ViewGreetingProtocol: class {
    func fetchGreeting(wiht greeting: String)
}

class GreetingViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var presenter: GreetingPresentorProtocol!
    var configure: GreetingConfigureProtocol = GreetingConfigure()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure.configur(view: self)
    }

    @IBAction func tapButtonGreeting(_ sender: Any) {
        presenter.fetchView()
    }
    
}

extension GreetingViewController: ViewGreetingProtocol {
    func fetchGreeting(wiht greeting: String) {
        self.label.text = greeting
    }
    
    
}
