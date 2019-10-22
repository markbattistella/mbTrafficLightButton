//
//  ViewController.swift
//  mbTrafficLightButton
//
//  Created by Mark Battistella on 22/10/19.
//  Copyright © 2019 Mark Battistella. All rights reserved.
//

import UIKit

extension UIColor {
    static var redOff       = UIColor(red: 255/255, green: 0/255,   blue: 0/255, alpha: 0.5 )
    static var yellowOff    = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 0.5 )
    static var greenOff     = UIColor(red: 0/255,   green: 255/255, blue: 0/255, alpha: 0.5   )

    static var black50      = UIColor(red: 0/255,   green: 0/255,   blue: 0/255, alpha: 0.5   )
}


class ViewController: UIViewController {

    // set the variables
    @IBOutlet var redLight      : UIButton!
    @IBOutlet var yellowLight   : UIButton!
    @IBOutlet var greenLight    : UIButton!
    @IBOutlet var buttonText    : UIButton!
    
    var colourCounter   = 1

    
	override func viewDidLoad() {
		super.viewDidLoad()

        // run the colour switcher
        colourSwitcher()
	}

    
    // what to do when the button is pressed
    @IBAction func lightChangerButton(_ sender: Any) {
        
        // cycle through only 1-3
        if( colourCounter >= 3 ) {
            colourCounter = 1
        } else {
            colourCounter += 1
        }

        // run the colour switcher
        colourSwitcher()
    }
    
    
    // pass Int 1-3 and change colours based on that
    func colourSwitcher() {
        
        switch colourCounter {
            case 1:
                redLight.backgroundColor    = .redOff;
                yellowLight.backgroundColor = .yellowOff;
                greenLight.backgroundColor  = .green;

            case 2:
                redLight.backgroundColor    = .redOff;
                yellowLight.backgroundColor = .yellow;
                greenLight.backgroundColor  = .greenOff;

            case 3:
                redLight.backgroundColor    = .red;
                yellowLight.backgroundColor = .yellowOff;
                greenLight.backgroundColor  = .greenOff;

        default:
                redLight.backgroundColor    = .redOff;
                yellowLight.backgroundColor = .yellowOff;
                greenLight.backgroundColor  = .green;
        }
        



    }
    
}

