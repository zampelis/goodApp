//
//  Item.swift
//  BadApp
//
//  Created by Graeme Read on 22/09/2016.
//  Copyright © 2016 Vualto Ltd. All rights reserved.
//

import Foundation
import UIKit



class Item: NSObject {
        
        let name: String
        var container: Container?
        
        init(name: String) {
            self.name = name
        }
}
