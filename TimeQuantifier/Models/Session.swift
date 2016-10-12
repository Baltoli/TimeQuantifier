//
//  Session.swift
//  TimeQuantifier
//
//  Created by Bruce Collie on 12/10/2016.
//  Copyright © 2016 Bruce Collie. All rights reserved.
//

import Foundation
import RealmSwift

class Session : Object {
    dynamic var interval : Interval?
    dynamic var activity : Activity?
    
    let pauses = List<Interval>()
}
