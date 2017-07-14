//
//  Container.swift
//  BadApp
//
//  Created by Graeme Read on 22/09/2016.
//  Copyright © 2016 Vualto Ltd. All rights reserved.
//

import UIKit

class Container: NSObject {
    
    let name: String
    let colour: UIColor
    var items: [Item]?
    
    init(name: String, colour: UIColor) {
        self.name = name
        self.colour = colour
    }

}
