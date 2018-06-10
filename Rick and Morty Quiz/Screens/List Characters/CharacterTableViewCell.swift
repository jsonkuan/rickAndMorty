//
//  CharacterTableViewCell.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell, HasDependencies {

	@IBOutlet weak var avatarImageView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	
	private lazy var worker: APIService = dependencies.resolveWorker()
	
    override func awakeFromNib() {
        super.awakeFromNib()
		
//		navigationItem.titleView = titleImageView
    }
	
	func setup() {
		worker.getCharacters(with: "Fishing rod") { (data) in

			do {
				let result = try JSONDecoder().decode(Character.self, from: data)
				self.nameLabel.text = result.name
			} catch let error {
					fatalError("E R R O R: \(error)")
			}
		}
	}

}
