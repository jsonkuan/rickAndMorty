//
//  StorageInterface.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import Alamofire

public protocol APIService {
	func getCharacters(with request: Any, completion: @escaping (_ data: Data) -> Void)
	func getEpisodes(completion: @escaping (_ data: Data) -> Void)
//	func getRick(with request: Any, completion: @escaping () -> Void)
}

public protocol APIWorkerType: APIService {
	
}
