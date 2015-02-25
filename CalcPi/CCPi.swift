//
//  CCPi.swift
//  CalcPi
//
//  Created by Christian Certa on 25.02.15.
//  Copyright (c) 2015 CertaSystems. All rights reserved.
//

import Foundation
import Cocoa

class CCPi {
	
	var doneCycles: Int
	var depth: Int
	var totalHits: Int
	var circleHits: Int
	
	var cycles: Int {
		get {
			return self.cycles
		}
		
		set {
			self.cycles = newValue
		}
	}
	
	init(doneCycles: Int, depth: Int) {
		self.doneCycles = doneCycles
		self.depth = depth
		self.totalHits = 0
		self.circleHits = 0
	}
	
	
	struct MiddlePoint {
		var x: Double = 0
		var y: Double = 0
		
	}
	
	
	func calcPi(depth: Int, cycle: Int) -> Double {
		while doneCycles <= cycles {
			
		}
	}
	
	func wasHit(xC: Double, yC: Double, range: Double) -> Bool {
		var depth = range / 2
		let xSquared: Double = (xC - depth) * (xC - depth)
		let ySquared: Double = (yC - depth) * (yC - depth)
		let result: Double = xSquared + ySquared
		return sqrt(result) <= Double(range)
	}
}