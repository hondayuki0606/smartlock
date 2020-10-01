//
//  SecoundViewController.swift
//  smartlock
//
//  Created by 本田尚行 on 2019/12/19.
//  Copyright © 2019 本田尚行. All rights reserved.
//

import UIKit

class SecoundViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var nextButton: UIButton!

    var number: Int = 0

    @IBAction func didTapButton() {
        number += 1
        numberLabel.text = String(number)
        if number == 5 {
            self.performSegue(withIdentifier: "toSecond", sender: self)
        }
    }
    
    func test() {
        guard let url = URL(string: "https://www.youtube.com/watch?v=GNIkcjccZlw") else {
            return
        }

        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.openURL(url)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextButton(sender: UIButton) {
  switch sender.tag {
        case 0:
            print("button_0")
        case 1:
            print("button_1")
        case 2:
            print("button_2")
        //...個数分続く
        default:break
        }
    }
}
