//
//  StorageInterface.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

public protocol RickNMortyService {
	func getCharacters(with request: Any, completion: @escaping () -> Void)
	func getEpisodes(with request: Any, completion: @escaping () -> Void)
}

public protocol RickNMortyWorkerType: RickNMortyService {
	
}
