//
//  RickNMortyWorker.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import Alamofire

public struct RickNMortyWorker: APIWorkerType {
	
	private let service: APIService
	
	public init(service: APIService) {
		self.service = service
	}
}

public extension RickNMortyWorker {
	public func getCharacters(with request: Any, completion: @escaping (_ data: Data) -> Void) {
		service.getCharacters(with: request, completion: completion)
	}
	
	public func getEpisodes(completion: @escaping (_ data: Data) -> Void) {
		print("Not implemented")
	}
}
