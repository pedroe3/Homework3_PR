//
//  MessageEnum.swift
//  Homework3_PR
//
//  Created by Pedro Rivera on 4/9/18.
//  Copyright © 2018 Pedro Rivera. All rights reserved.
//

import UIKit

enum MessageState: Int{
    case pending = 1
    case sent = 2
    case failed = 3
    var stringVersion: String {
        return "\(self.rawValue)"
    }
    
}



struct Message {
    var fromName: String
    var body: String
    var state: MessageState
}




extension Message {
    
    static var DefaultData: [Message] {
        
        
        let Maria = Message(fromName:"Maria", body:"We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul. We are in this for the long haul.", state:MessageState.pending)
        
        let Antonio = Message(fromName:"Antonio", body:"Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde. Vamos jugar poker este Sabado a las diez de la tarde.", state:MessageState.sent)
        
        let Ricardo = Message(fromName:"Ricardo", body:"I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home. I need to go to the grocery store, I have no food at home.", state:MessageState.failed)
        
        let Jessica = Message(fromName:"Jessica", body: "Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula. Would you like to go to the movies tomorrow, quiero ver esa pelicula.", state:MessageState.pending)
        
        let Alex = Message(fromName:"Alex", body: "Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana. Voy para la casa de mi mai esta manana.", state:MessageState.sent)
        

        return [Maria, Antonio, Ricardo, Jessica, Alex]
    }
}
