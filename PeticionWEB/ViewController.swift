//
//  ViewController.swift
//  PeticionWEB
//
//  Created by Manuel Reyes on 26/3/16.
//  Copyright © 2016 Manuel Reyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etCodigoLibro: UITextField!
    @IBOutlet weak var textoSalida: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func getBook(sender: AnyObject) {
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"+etCodigoLibro.text!
        print(urls)
        let url = NSURL(string: urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding:NSUTF8StringEncoding)
        textoSalida.text = texto as! String
        
        
        
//        ASYNCHRONOUS
    /*    let URL = NSURL(string: newUrls)
//        var URL = NSURL(newUrls.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet()))
        let session = NSURLSession.sharedSession()
        let bloq = { (datos:NSData?, resp : NSURLResponse?, error :NSURLError?) ->Void in
            let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
            self.textoSalida.text = "ey"
            }
        
        let dt = session.dataTaskWithRequest(URL!, completionHandler: bloq)
        dt?.resume()
    */
    }
    
}

