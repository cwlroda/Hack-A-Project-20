//
//  Singleton.swift
//  hack_a_project
//
//  Created by Clara Lebbos on 2/29/20.
//  Copyright © 2020 Clara Lebbos. All rights reserved.
//

import UIKit

class Singleton: NSObject {

    public static let shared = Singleton()
    public var name: String = String()
    public var reason: String = String()
    
    static func getSharedState() -> Singleton{
        return .shared
    }
    
}
