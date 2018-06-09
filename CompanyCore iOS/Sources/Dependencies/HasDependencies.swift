//
//  HasDependencies.swift
//  Rick and Morty Quiz
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

import UIKit

/// Attach to any type for exposing the dependency container
public protocol HasDependencies {
	var dependencies: Dependency { get }
}

public extension HasDependencies {
	
	/// Container for dependency instance factories
	var dependencies: Dependency {
		return DependencyInjector.dependencies
	}
}

/// Used to pass around dependency container
/// which can be reassigned to another container
struct DependencyInjector {
	static var dependencies: Dependency = CoreDependency()
	private init() { }
}

public extension UIApplicationDelegate {
	
	func configure(dependency: Dependency) {
		DependencyInjector.dependencies = dependency
	}
}


