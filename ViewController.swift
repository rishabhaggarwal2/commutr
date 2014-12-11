//
//  ViewController.swift
//  commutr
//
//  Created by Rishabh Aggarwal on 11/8/14.
//  Copyright (c) 2014 Rishabh Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    
    
    var fastest:Bool = false
    var cheapest:Bool = false
    var shortest:Bool = false
    var passengerNum:Double = 2.0
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 0.29, green: 0.537, blue: 0.82, alpha: 1)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var slider: UISlider!

    @IBOutlet weak var label: UILabel!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value)
        label.text = "\(currentValue)"
        var passengerNum = currentValue
        
    }
    
    @IBOutlet weak var fromField: UITextField!
    
    @IBOutlet weak var toField: UITextField!
    
    @IBAction func fastValueChange(sender: UISwitch) {
        fastest = sender.on
    }
    
    
    @IBAction func cheapValueChange(sender: UISwitch) {
        cheapest = sender.on
    }
    
    
    @IBAction func shortValueChange(sender: UISwitch) {
        shortest = sender.on
    }
    
    
    
    @IBAction func calculate(sender: UIButton) {
        
        /*
        var urlPath = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=UCLA&destinations=USC"
        
        var escapedSearchTerm = urlPath.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
        var url: NSURL = NSURL(string: escapedSearchTerm!)!
        
        var request: NSMutableURLRequest =  NSMutableURLRequest(URL: url)
        request.HTTPMethod = "GET"
        
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, urlResponse, error in
            println(data)
            let dict = NSJSONSerialization.JSONObjectWithData(data , options: nil, error: nil) as NSDictionary
            println(dict)
        }
        task.resume()
        */
        var distancePass = 10.0
        var timePass = 20.0
        var walktimePass = 80.0
        println("test")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rvc = storyboard.instantiateViewControllerWithIdentifier("result1") as ResultsViewController
//        let vc2 = storyboard.instantiateViewControllerWithIdentifier("result2") as UIViewController
//        let vc3 = storyboard.instantiateViewControllerWithIdentifier("result3") as UIViewController
//        let vc4 = storyboard.instantiateViewControllerWithIdentifier("result4") as UIViewController
        
        if true || fromField.text.uppercaseString == "UCLA" && toField.text.uppercaseString == "USC" {
            if true || fastest == true && shortest == true && cheapest == true{
                println("Running Result1")
//               rvc.imageView.image = UIImage(contentsOfFile: "result1.jpg")
                self.presentViewController(rvc, animated: true, completion: nil)
            } else if cheapest && !fastest && !shortest {
                println("Running Result2")
//                self.navigationController?.presentViewController(vc2, animated: true, completion: nil)
            } else if cheapest && passengerNum == 6 {
//                self.navigationController?.presentViewController(vc3, animated: true, completion: nil)
            }
            
        } else if fromField.text.uppercaseString == "UCLA" && toField.text.uppercaseString == "WESTWOOD" {
            self.presentViewController(rvc, animated: true, completion: nil)
        }
        
        
        
    }
}

