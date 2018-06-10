//
//  ViewController.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-08.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import UIKit
import CompanyCore_iOS

class MainViewController: UIViewController, HasDependencies {
	
	@IBOutlet weak var introButton: UIButton!
	
	private lazy var worker: APIService = dependencies.resolveWorker()
	var name: String = ""
	
	// MARK: - View Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		worker.getEpisodes { (data) in
			
			let decoder = JSONDecoder()
			let result = try! decoder.decode(Episode.self, from: data)
			
			self.introButton.titleLabel?.text = result.name
			self.name = result.name
		}
	}
	
	// MARK: - Navigation
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let destination = segue.destination as? CharactersTableViewController
		destination?.name = self.name
}

}

