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
        
        securityTimer()
    }
    

    @IBOutlet weak var securityLabel3: UILabel!
    @IBOutlet weak var securityLabel4: UILabel!
    
    
    //timer
    var mTimer : Timer?
    func securityTimer() {
        mTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timeCollback), userInfo: nil, repeats: true)
    }
    
    // add text, date
    // text animation
    var formatter = DateFormatter()
    var securityLabelxPos: CGFloat = 0
    @objc func timeCollback(){
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        let currentDateString = formatter.string(from: Date())
        securityLabel3.text = String("사용가능      \(currentDateString)      사용가능      \(currentDateString)      ")
        securityLabel4.text = String("사용가능      \(currentDateString)      사용가능      \(currentDateString)      ")
        
        if securityLabelxPos > -430 {
            securityLabelxPos -= 1
        } else {
            securityLabelxPos = 0
        }
        securityLabel3.transform = CGAffineTransform(translationX: securityLabelxPos, y: 0)
        securityLabel4.transform = CGAffineTransform(translationX: securityLabelxPos, y: 0)
    }
 

}
