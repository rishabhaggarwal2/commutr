//
//  Algorithm.swift
//  fareCompare
//
//  Created by Rishabh Aggarwal on 11/8/14.
//  Copyright (c) 2014 Rishabh Aggarwal. All rights reserved.
//

/*

import Foundation


struct outputOfThings {
    var ootName =  ""
    var ootCost =  ""
    var ootTime = ""
}

func calculateShit(distance1:Double, timeOnCar1:Double, timeOnFoot1:Double, passengers1:Double, fastest:Bool, shortest:Bool, cheapest: Bool) -> Void{
    var array = ["hello","how are you"]
    
    let distance = distance1
    let timeOnCar = timeOnCar1
    let timeOnFoot = timeOnFoot1
    let timeOnBike = timeOnFoot/2
    let passengers = passengers1
    let busCost = 3.50 * passengers
    
    var finalUberCost:Double
    var finalLyftCost:Double
    var finalBusCost:Double
    var finalTaxiCost:Double
    var finalCarTime = timeOnCar
    var finalWalkTime = timeOnFoot
    var finalBikeTime = timeOnBike
    var finalBusTime = "1 hour, 12 minutes"
    var finalBikeCost = "FREE";
    
    let uberXbase = 0.80
    let uberXmin = 0.21
    let uberXmile = 1.10
    
    let uberXLbase = 3.0
    let uberXLmin = 0.35
    let uberXLmile = 1.85
    
    let lyftBase = 0.8
    let lyftMile = 1.10
    let lyftMin = 0.21
    
    let lyftPlusBase = 1.2
    let lyftPlusMile = 1.65
    let lyftPlusMin = 0.32
    
    var uberXcost = uberXbase + (timeOnCar * uberXmin) + (distance * uberXmile) + 1
    var uberXLcost = uberXLbase + (timeOnCar * uberXLmin) + (distance * uberXLmile) + 1
    
    var lyftCost = lyftBase + (timeOnCar * lyftMin) + (distance * lyftMile) + 1.5
    var lyftPlusCost = lyftPlusBase + (timeOnCar * lyftPlusMin) + (distance * lyftPlusMile) + 1.5
    
    //Taxi Calculation
    var taxiCost = ( 2.85 * (0.11))
    
    if distance > 0.11 {
        taxiCost += (2.7 * (distance - 0.11))
    }

    
    var supposedTime = 3 / 2 * distance
    
    if timeOnCar > supposedTime {
        taxiCost += 0.54 * (timeOnCar - supposedTime)
    }
    
    taxiCost += 1.12 * taxiCost
    
    
    if passengers <= 4 {
        finalLyftCost = lyftCost
        finalUberCost = uberXcost
        finalTaxiCost = taxiCost
    }
    else
    {
        finalLyftCost = lyftPlusCost
        finalUberCost = uberXLcost
        finalTaxiCost = taxiCost * 2
    }
    
    var outputsOfThings =  [outputOfThings]()

    if distance < 1 && !fastest {
        outputsOfThings.append(outputOfThings(ootName: "CYCLE/WALK", ootCost: "FREE", ootTime: "\(timeOnFoot) minutes"))
        outputsOfThings.append(outputOfThings(ootName: "BUS", ootCost: "$\(busCost)", ootTime: "\(timeOnCar) minutes"))
        outputsOfThings.append(outputOfThings(ootName: "UBER", ootCost: "$\(finalUberCost)", ootTime: "\(timeOnCar) minutes"))
        outputsOfThings.append(outputOfThings(ootName: "LYFT", ootCost: "$\(finalLyftCost)", ootTime: "\(timeOnCar) minutes"))
        outputsOfThings.append(outputOfThings(ootName: "TAXI", ootCost: "$\(finalTaxiCost)", ootTime: "\(timeOnCar) minutes"))
    }
    
    println(outputsOfThings[0].ootName)
        println(outputsOfThings[0].ootCost)
        println(outputsOfThings[0].ootTime)
    
}

*/
