//
//  Interval.swift
//  TimeQuantifier
//
//  Created by Bruce Collie on 12/10/2016.
//  Copyright © 2016 Bruce Collie. All rights reserved.
//

import Foundation
import RealmSwift

class Interval : Object {
    enum Length {
        case bounded(TimeInterval)
        case unbounded
    }
    
    dynamic var start : Date?
    dynamic var end : Date?
    
    func length() -> Length {
        guard  let start = start, let end = end else {
            return .unbounded
        }
        
        let interval = end.timeIntervalSince(start)
        return .bounded(interval)
    }
}
