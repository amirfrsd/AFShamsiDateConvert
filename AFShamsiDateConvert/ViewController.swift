//
//  ViewController.swift
//  AFShamsiDateConvert
//
//  Created by Amir on 12/3/16.
//  Copyright © 2016 Emersad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let shamsiDateConvertor = AFShamsiDateConvert()
        print(shamsiDateConvertor.persianToGregorian(dateString: "1395/09/13"))
        print(shamsiDateConvertor.gregorianToPersian(dateString: "2016/12/03"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

