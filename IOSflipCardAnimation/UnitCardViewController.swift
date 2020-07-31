//
//  UnitCardViewController.swift
//  IOSflipCardAnimation
//
//  Created by dylan.k on 2020/07/31.
//  Copyright © 2020 kakao. All rights reserved.
//

import UIKit

class UnitCardViewController: UIViewController {
    @IBOutlet weak var unitCard: UIImageView!
    
    var isOn = true
    //let idCardFrontImage = UIImage(named: "idCard_front")
    let idCardBackImage = UIImage(named: "unitCard_back")
    let iconCerification = UIImage(named: "ico_certification")
    //var transform = CATransform3DIdentity

    override func viewDidLoad() {
        super.viewDidLoad()
        let size = CGSize(width: idCardBackImage!.size.width, height: idCardBackImage!.size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        idCardBackImage!.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        iconCerification!.draw(in: CGRect(x: 13, y: 13, width: 28, height: 28))
        let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        unitCard.image = newImage
        // Do any additional setup after loading the view.
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
