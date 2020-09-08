//
//  ResultsViewController.swift
//  Gacha
//
//  Created by Haruko Okada on 9/2/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var itemImg: UIImageView!
    
    var num: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        num = Int.random(in: 0...9)
        // Do any additional setup after loading the view.
        if (num == 9){
            backgroundImg.image = UIImage(named: "bg_gold.png")
            itemImg.image = UIImage(named: "monster010.png")
        } else if (num > 7){
            backgroundImg.image = UIImage(named: "bg_red.png")
            itemImg.image = UIImage(named: "monster006.png")
        } else {
            backgroundImg.image = UIImage(named: "bg_blue.png")
            itemImg.image = UIImage(named: "monster003.png")
        }
    }
    

    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
