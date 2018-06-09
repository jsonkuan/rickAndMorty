//
//  NetworkStore.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import Foundation

public struct RickNMortyNetworkService: RickNMortyService {
	
	private let httpService: HTTPServiceProtocol
	
	public init(httpService: HTTPServiceProtocol) {
		self.httpService = httpService
	}
}

public extension RickNMortyNetworkService {
	
	public func getCharacters(with request: Any, completion: @escaping () -> Void) {
		httpService.get(
			url: "https://rickandmortyapi.com/api/character/\(request)",
			parameters: [:],
			headers: [:]) {
			completion()
		}
	}
	
	public func getEpisodes(with request: Any, completion: @escaping () -> Void) {
		httpService.get(
			url: "https://rickandmortyapi.com/api/episode/\(request)",
			parameters: [:],
			headers: [:]) {
			completion()
		}
	}
	
}
