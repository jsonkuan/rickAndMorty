//
//  Dependency.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//


// MARK: - Acts as a container to house all dependencies

public protocol Dependency {
	
	func resolveService() -> HTTPService
	
	func resolveWorker() -> APIService
	
//	func resolveService() -> InterfaceSample
}
