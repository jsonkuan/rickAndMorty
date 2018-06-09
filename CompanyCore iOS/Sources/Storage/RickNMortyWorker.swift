//
//  RickNMortyWorker.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

public struct RickNMortyWorker: RickNMortyWorkerType {
	
	private let service: RickNMortyService
	
	public init(service: RickNMortyService) {
		self.service = service
	}
}

public extension RickNMortyWorker {
	public func getCharacters(with request: Any, completion: @escaping () -> Void) {
		service.getCharacters(with: request, completion: completion)
	}
	
	public func getEpisodes(with request: Any, completion: @escaping () -> Void) {
		service.getEpisodes(with: request, completion: completion)
	}
}
