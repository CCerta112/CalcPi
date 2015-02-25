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
	
	func randomNumber(range: Int) -> Int {
		return Int(arc4random_uniform(range + 1))
	}
	
	func isHit(somePoint: Point, range: Int) -> Bool {
		let radius: Double = Double(range) / 2.0
		let yDiffSquared: Double = (somePoint.yValue - radius) * (somePoint.yValue - radius)
		let xDiffSquared: Double = (somePoint.xValue - radius) * (somePoint.xValue - radius)
		return sqrt(yDiffSquared + xDiffSquared) <= radius
	}
	
	struct Point {
		let xValue: Double = 0
		let yValue: Double = 0
	}
	
	func createPoint(range: Int) -> Point {
		return Point(xValue: Double(randomNumber(range)), yValue: Double(randomNumber(range)))
	}
	
	func calcPiWith(cycles: Int, range: Int) -> Double {
		var total = 0
		var hits = 0
		var somePoint: Point = createPoint(range)
		for var i = 0; i < cycles; ++i {
			if isHit(somePoint, range: range) {
				++hits
			}
			somePoint = createPoint(range)
			total = i
		}
		
		return 4 * Double(hits) / Double(total)
		
	}
	
}