//
//  TestInterface.swift
//  CompanyCore iOS
//
//  Created by Jason Kuan on 2018-06-09.
//  Copyright © 2018 Jason Kuan. All rights reserved.
//

public protocol InterfaceSample {
	 func fetchCurrent(completion: @escaping () -> Void)
}

public protocol SampleInterfaceType: InterfaceSample {
	
}
