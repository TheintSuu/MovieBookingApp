//
//  Extension.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 1/3/22.
//

import Foundation
import UIKit

var SEAT_TYPE_AVAILABLE = "Available"

var SEAT_TYPE_TAKEN = "Taken"

var SEAT_TYPE_TEXT = "Text"

var SEAT_TYPE_EMPTY = "Empty"


extension UIViewController{
    static var identifier : String{
        String (describing: self)
    }
}
