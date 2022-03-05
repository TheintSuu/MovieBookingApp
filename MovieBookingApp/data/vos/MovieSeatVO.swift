//
//  MovieSeatVO.swift
//  MovieBookingApp
//
//  Created by Theint Su Htwe on 1/3/22.
//

import Foundation


struct MovieSeatVO{
    
    var title : String
    var type : String
    
    
    func isMovieSeatAvailable()-> Bool{
        
        return type == SEAT_TYPE_AVAILABLE
        
    }
    
    func isMovieSeatTaken()-> Bool{
        
        return type == SEAT_TYPE_TAKEN
        
    }
    
    func isMovieSeatText()-> Bool{
        
        return type == SEAT_TYPE_TEXT
        
    }
    
    
}
