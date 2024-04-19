//
//  ViewController.swift
//  ImageViewScreenShotProblem
//
//  Created by Prashant Tukadiya on 19/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTakeScreenShot(_ sender: Any) {
        if let image = self.imgView.takeSnapshot() {
            let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultVCViewController") as! ResultVCViewController
            resultVC.image = image
            self.navigationController?.pushViewController(resultVC, animated: true)
        }
        
    }
    
}

