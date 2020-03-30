//  ViewController.swift
//  TicTacToe


import UIKit

class ViewController: UIViewController {

    ///
    var player1  = true
    var player2 = false
    
    var buttons: [Bool] = {
       var array = [Bool]()
        for _ in 0...0 {
            array.append(false)
        }
        return array
    }()
    
    var filledArray: [Int] = {
       var array = [Int]()
        for _ in 0...0 {
            array.append(0)
        }
        return array
    }()
    
    ///
   
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var winnerImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonWasTapped(_ sender: UIButton){
        
        if buttons[sender.tag] == false{
            if player1 == true && player2 == false {
                setBox(button: sender, forPlayer: 1)
                filledArray[sender.tag] = 1
            } else if player2 == true && player1 == false {
                setBox(button: sender, forPlayer: 2)
                filledArray[sender.tag] = 2
            } else {
                  print("Error : some error")
            }
              
            if let winner = testWinner(){
                print("somemos")
                if winner == 1 {
                    winnerImageView.image = UIImage(named: "o")
                }else {
                    winnerImageView.image = UIImage(named: "x")
                }
                winnerImageView.isHidden = false
                winnerLabel.isHidden = false
            }
            
            player2 = !player2
            player1 = !player1
            buttons[sender.tag] = true
            
        } else {
            print("Button something")
        }
    }
    
    

    // Mark: Private functions
    private func setBox(button: UIButton, forPlayer player: Int){
        
        if player == 1 {
            button.setBackgroundImage(UIImage(named: "o"), for: .normal)
        }else if player == 2{
             button.setBackgroundImage(UIImage(named: "x"), for: .normal)
        }else {
            print("Error : some error \(player)something more")
        }
    }
    private func testWinner() -> Int? {
        var winner: Int? = nil
        
        if(filledArray[0] != 0 && filledArray[0] == filledArray[1] && filledArray[1] == filledArray[2]){
            winner = filledArray[0]
        }
        if(filledArray[3] != 0 && filledArray[3] == filledArray[4] && filledArray[4] == filledArray[5]){
             winner = filledArray[3]
        }
        if(filledArray[6] != 0 && filledArray[6] == filledArray[7] && filledArray[7] == filledArray[8]){
             winner = filledArray[6]
        }
        
        //----------------------------------
        if(filledArray[0] != 0 && filledArray[0] == filledArray[3] && filledArray[3] == filledArray[6]){
            winner = filledArray[0]
        }
        if(filledArray[1] != 0 && filledArray[1] == filledArray[4] && filledArray[4] == filledArray[7]){
            winner = filledArray[1]
        }
        if(filledArray[2] != 0 && filledArray[2] == filledArray[5] && filledArray[5] == filledArray[8]){
            winner = filledArray[2]
        }
        
        //-------------------------------------
        if(filledArray[0] != 0 && filledArray[0] == filledArray[4] && filledArray[4] == filledArray[8]){
            winner = filledArray[0]
        }
        if(filledArray[2] != 0 && filledArray[2] == filledArray[4] && filledArray[4] == filledArray[6]){
            winner = filledArray[2]
        }
                
        return winner
    }
    
}

