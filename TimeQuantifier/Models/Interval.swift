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
dynamic var start : Date?
    dynamic var end : Date?
    
    func length() -> TimeInterval? {
        guard let start = start, let end = end else {
            return nil
        }
        
        let interval = end.timeIntervalSince(start)
        return interval
    }
    
    func isValid() -> Bool {
        guard  let start = start, let end = end else {
            return false
        }

        return end > start
    }
}
