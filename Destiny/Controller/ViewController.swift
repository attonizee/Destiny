//
//  ViewController.swift
//  Destiny
//
//  Created by Anatolii Veselyi on 24.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jorneyLabel: UILabel!
    @IBOutlet weak var buttonChoice1: UIButton!
    @IBOutlet weak var buttonChoice2: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeUI()
    }

    @IBAction func choiceButtonClick(_ sender: UIButton) {
        
        storyBrain.nextStory(answer: sender.currentTitle!)
        
        changeUI()
    }
    
    func changeUI() {
        jorneyLabel.text = storyBrain.getTitle()
        buttonChoice1.setTitle(storyBrain.getChoice1(), for: .normal)
        buttonChoice2.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
    
}

