//
//  ViewController.swift
//  RPS Challenge
//
//  Created by elzhankk on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rpsImageView1: UIImageView!
    
    @IBOutlet weak var rpsImageView2: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var throwButton: UIButton!
    
    let images = [
        UIImage(named: "rock"),
        UIImage(named: "paper"),
        UIImage(named: "scissors"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
        rpsImageView1.image = UIImage(named: "rock")
        rpsImageView2.image = UIImage(named: "paper")
        
    }

    @IBAction func throwButtonTapped(_ sender: Any) {
        print("User tapped throw button")
        let playerChoiceIndex = randomImageIndex()
                let computerChoiceIndex = randomImageIndex()
                
                rpsImageView1.image = images[playerChoiceIndex]
                rpsImageView2.image = images[computerChoiceIndex]
                
                let result = determineWinner(playerChoiceIndex: playerChoiceIndex, computerChoiceIndex: computerChoiceIndex)
                titleLabel.text = result
            }
            
            func randomImageIndex() -> Int {
                return Int.random(in: 0..<images.count)
            }
            
            func determineWinner(playerChoiceIndex: Int, computerChoiceIndex: Int) -> String {
                if playerChoiceIndex == computerChoiceIndex {
                    return "It's a tie!"
                } else if (playerChoiceIndex == 0 && computerChoiceIndex == 2) ||
                          (playerChoiceIndex == 1 && computerChoiceIndex == 0) ||
                          (playerChoiceIndex == 2 && computerChoiceIndex == 1) {
                    return "You win!"
                } else {
                    return "Computer wins."
                }
            }
        }


    




