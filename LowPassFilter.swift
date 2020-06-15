//
//  LowPassFilter.swift
//  biofeedback challenge
//
//  Created by tkdman on 12/22/16.
//  Copyright © 2016 Ben Collins. All rights reserved.
//

import Foundation

struct LowPassFilterSignal {
    /// Current signal value
    var value: Double
    
    /// A scaling factor in the range 0.0..<1.0 that determines
    /// how resistant the value is to change
    var filterFactor: Double
    
    /// Update the value, using filterFactor to attenuate changes
    mutating func update(newValue: Double) {
        if (!value.isNaN && !newValue.isNaN && !value.isInfinite && !newValue.isInfinite) {
            value = filterFactor * value + (1.0 - filterFactor) * newValue            
        }

    }
}
