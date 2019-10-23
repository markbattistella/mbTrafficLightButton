//
//  ViewController.swift
//  mbTrafficLightButton
//
//  Created by Mark Battistella on 22/10/19.
//  Copyright © 2019 Mark Battistella. All rights reserved.
//

import UIKit

// create global colours
extension UIColor {
	static let redOff       = UIColor(red: 255/255, green: 0/255,   blue: 0/255, alpha: 0.25 )
	static let yellowOff    = UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 0.25 )
	static let greenOff     = UIColor(red: 0/255,   green: 255/255, blue: 0/255, alpha: 0.25 )
}

class ViewController: UIViewController {
	
	// set the variables
	@IBOutlet var redLight      : UIImageView!
	@IBOutlet var yellowLight   : UIImageView!
	@IBOutlet var greenLight    : UIImageView!
	@IBOutlet var buttonText    : UIButton!
	var colourCounter   = 0
	
	
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
	// using switch as tester rather than if/else
	func colourSwitcher() {
		
		switch colourCounter {
		case 1:
			// turn red off, turn green on, yellow already off
			redLight.tintColor    = .redOff;
			greenLight.tintColor  = .green;
			
			buttonText.setTitle("Green light means GO", for: .normal)
			buttonText.backgroundColor = .greenOff
			
		case 2:
			// turn green off, turn yellow on, red already off
			yellowLight.tintColor = .yellow;
			greenLight.tintColor  = .greenOff;
			
			buttonText.setTitle("Yellow light means SLOW DOWN", for: .normal)
			buttonText.backgroundColor = .yellowOff
			
		case 3:
			// turn yellow off, turn red on, green already off
			redLight.tintColor    = .red;
			yellowLight.tintColor = .yellowOff;
			
			buttonText.setTitle("Red light means STOP", for: .normal)
			buttonText.backgroundColor = .redOff
			
		default:
			// turn all off to start with
			redLight.tintColor    = .redOff;
			yellowLight.tintColor = .yellowOff;
			greenLight.tintColor  = .greenOff;
			buttonText.setTitle("Let's Begin", for: .normal)
		}
		
	}
	
}

