//
//  TTTImageView.swift
//  TicTacToe
//
//  Created by Karl Kristjánsson on 28/03/2020.
//  Copyright © 2020 Karl Kristjánsson. All rights reserved.
//

import UIKit

class TTTImageView: UIImageView {

    var player: String?
    var activated: Bool! = false
    
    func setPlayer (_player:String){
        self.player = _player
        
        if activated == false {
            if _player == "x" {
                self.image = UIImage(named: "x")
            }else{
                self.image = UIImage(named: "o")
            }
            activated = true
        }
    }
}
