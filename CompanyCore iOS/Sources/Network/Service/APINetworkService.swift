//
//  NetworkStore.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import Alamofire

public struct APINetworkService: APIService {
	
	private let httpService: HTTPServiceProtocol
	
	public init(httpService: HTTPServiceProtocol) {
		self.httpService = httpService
	}
}

public extension APINetworkService {
	
	public func getCharacters(with request: Any, completion: @escaping (_ data: Data) -> Void) {
		httpService.get(
			url: "https://rickandmortyapi.com/api/character/200",
			parameters: [:],
			headers: [:]) { data in
				completion(data)
		}
	}
	
	public func getEpisodes(completion: @escaping (_ data: Data) -> Void) {
		httpService.get(
			url: "https://rickandmortyapi.com/api/episode/2",
			parameters: [:],
			headers: [:]) { data in
				completion(data)
		}
	}
}
