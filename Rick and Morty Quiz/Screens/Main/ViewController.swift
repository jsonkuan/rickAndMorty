//
//  ViewController.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-08.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import UIKit
import CompanyCore_iOS

class ViewController: UIViewController, HasDependencies {

	@IBOutlet weak var testRequestTextField: UITextField!
	
	private lazy var worker: RickNMortyService = dependencies.resolveWorker()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		worker.getCharacters(with: "20") {
			print("SUCCESS")
			self.testRequestTextField.text = "Rick N Morty"
		}
	}

}

