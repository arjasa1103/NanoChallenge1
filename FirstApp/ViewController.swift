//
//  ViewController.swift
//  FirstApp
//
//  Created by Arjasa Virya Aryanera on 04/03/20.
//  Copyright © 2020 Arjasa Virya Aryanera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!

    var upright:Bool = true
    
    override func viewDidLoad() {
        upright = isUpright()
        super.viewDidLoad()
        getCard(upright: upright)
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd/MM/yyyy"
        let todayDate = formatter.string(from: date)
        dateLabel.text = todayDate
        
//        getCardButton.layer.cornerRadius = 10
    }
//
//
//    @IBAction func getAnotherCard(_ sender: UIButton) {
//        upright = isUpright()
//
//        getCard(upright: upright)
//    }
    @IBAction func onDone(_ sender: UIButton) {
        switch upright {
        case false:
            rotateImage()
        default:
            print("yes")
        }
    }
    
}

extension ViewController{
    func isUpright() -> Bool{
        return Bool.random()
    }
    
    func getCard(upright: Bool){
        let cardManager = CardManager()
        let card: Card = cardManager.getCard()
        
        
        titleLabel.text = card.name
        
        cardImage.image = UIImage(named: "\(card.image)")
        
        switch upright {
        case true:
            descriptionLabel.text = card.descriptionUpright
            conditionLabel.text = "Upright"
        case false:
            descriptionLabel.text = card.descriptionReversed
            conditionLabel.text = "Reversed"
            rotateImage()
        }
    }
    
    func rotateImage(){
        self.cardImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
    }
}
