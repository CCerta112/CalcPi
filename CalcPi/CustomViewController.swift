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
	
	@IBOutlet weak var depthSlider: NSSlider!
	@IBOutlet weak var cycleSlider: NSSlider!
	@IBOutlet weak var depthIndicator: NSTextField!
	@IBOutlet weak var cycleIndicator: NSTextField!
	@IBOutlet weak var piField: NSTextField!
	@IBOutlet weak var progressionBar: NSProgressIndicator!
	
	
	@IBAction func resetButton(sender: NSButton) {
	}
	
	@IBAction func pauseButton(sender: NSButton) {
	}
	
	@IBAction func startButton(sender: NSButton) {
	}
	
	
}