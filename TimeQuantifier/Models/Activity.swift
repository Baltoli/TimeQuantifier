//
//  Activity.swift
//  TimeQuantifier
//
//  Created by Bruce Collie on 12/10/2016.
//  Copyright © 2016 Bruce Collie. All rights reserved.
//

import Foundation
import RealmSwift

class Activity : Object {
    dynamic var name : String = ""
    
    let sessions = LinkingObjects(fromType: Session.self, property: "activity")
}
