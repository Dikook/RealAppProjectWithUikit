//
//  FileExample.swift
//  RealAppProjectWithUikit
//
//  Created by Diar Orynbek on 13.06.2024.
//

import Foundation

class Laptop {
    private var chargeCycle = 1
    
    var countCycle: Int {
        return chargeCycle
    }
    
    func addChargeCycle() {
        chargeCycle += 1
    }
}
