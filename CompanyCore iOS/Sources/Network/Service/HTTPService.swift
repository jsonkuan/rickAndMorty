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
	func get(url: String, parameters: [String: Any], headers: [String: String]?, completion: @escaping (_ data: Data) -> Void)
	func getWithURLSession(url: String, completion: @escaping () -> Void)
}

public struct HTTPService: HTTPServiceProtocol {
	
	public func get(
			url: String,
			parameters: [String: Any],
			headers: [String: String]?,
			completion: @escaping (_ data: Data) -> Void) {
		
		Alamofire.request(url).responseJSON { response in
//			guard response.error = nil else { print("Shit's f u c k e d")}
			//guard let response.error = nil else  { fatalError(\(response.error)) }
			completion(response.data!)
		}
	}
	
	public func getWithURLSession(url: String, completion: @escaping () -> Void) {
		
		guard let url = URL(string: url) else { return }
		let session = URLSession.shared
		let request = URLRequest(url: url)
		
		let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
			
			guard error == nil,
				let data = data else { return }
			
			do {
				if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
					print(json)
				}
			} catch let error {
				print(error.localizedDescription)
			}
		})
		
		task.resume()
	}
}



