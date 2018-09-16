//
//  Preferences.swift
//  EggTimer
//
//  Created by Prashant Raghuvanshi on 8/11/18.
//  Copyright © 2018 Prashant Raghuvanshi. All rights reserved.
//

import Foundation

struct Preferences {
    
    var selectedTime: TimeInterval {
        get {
            let savedTime = UserDefaults.standard.double(forKey: "selectedTime")
            if savedTime > 0 {
                return savedTime
            }
            return 60
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "selectedTime")
        }
    }
    
    var loop: Bool {
        get {
            let savedLoop = UserDefaults.standard.bool(forKey: "loop")
            //let savedLoop = true
            return savedLoop
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "loop")
        }
    }
    
    
}
