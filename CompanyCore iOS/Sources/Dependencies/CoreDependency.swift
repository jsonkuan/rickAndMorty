//
//  CoreDependency.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import Foundation

open class CoreDependency: Dependency {
	
	public init() { }
	
	open func resolveService() -> HTTPService {
		return HTTPService()
	}
	
	open func resolveWorker() -> RickNMortyService {
		return RickNMortyNetworkService(
			httpService: resolveService()
		)
	}
	

}
