//
//  HTTPService.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import Foundation
import Alamofire

public protocol HTTPServiceProtocol {
	func get(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping () -> Void)
}

public struct HTTPService: HTTPServiceProtocol {
	
	public func get(
			url: String,
			parameters: [String: Any],
			headers: [String: String]?,
			completion: @escaping () -> Void) {
		
		Alamofire.request(url).responseJSON { (data) in
			print("HTTPService: \(data)")
			completion()
		}
	}
}



