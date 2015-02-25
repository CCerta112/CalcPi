//
//  CustomViewController.swift
//  CalcPi
//
//  Created by Christian Certa on 25.02.15.
//  Copyright (c) 2015 CertaSystems. All rights reserved.
//

import Foundation
import Cocoa

class Controller: NSViewController {
	
	@IBOutlet weak var depthIndicator: NSTextField!
	@IBOutlet weak var cycleIndicator: NSTextField!
	@IBOutlet weak var piField: NSTextField!
	@IBOutlet weak var progressionBar: NSProgressIndicator!
	
	var depth = 1000
	var cycles = 5000
	
	@IBAction func depthSlider(sender: NSSlider) {
		depth = sender.integerValue
		depthIndicator.stringValue = String(depth)
	}
	
	@IBAction func cycleSlider(sender: NSSlider) {
		cycles = sender.integerValue
		cycleIndicator.stringValue = String(cycles)
	}
	
	
	let brain = CCPi()

	@IBAction func startButton(sender: NSButton) {
		piField.stringValue = "Pi = \(brain.calcPiWith(cycles, range: depth))"
	}
	
	
}