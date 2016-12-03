//
//  AFShamsiDateConvert.swift
//  AFShamsiDateConvert
//
//  Created by Amir on 12/3/16.
//  Copyright © 2016 Emersad. All rights reserved.
//

import UIKit

class AFShamsiDateConvert: NSObject {
    func gregorianToPersian(dateString: String) -> String {
        let format = DateFormatter()
        format.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
        format.dateFormat = "yyyy-MM-dd"
        let date = format.date(from: dateString)!
        let f = DateFormatter()
        let iranLocale = NSLocale(localeIdentifier: "fa_IR")
        f.locale = iranLocale as Locale!
        let persian = NSCalendar(identifier: NSCalendar.Identifier(rawValue: "persian"))
        f.calendar = persian as Calendar!
        f.dateStyle = .long
        let formattedDate = f.string(from: date)
        return formattedDate
    }
    func persianToGregorian(dateString: String) -> String {
        let format = DateFormatter()
        format.locale = NSLocale(localeIdentifier: "fa_IR") as Locale!
        format.dateFormat = "yyyy-MM-dd"
        let date = format.date(from: dateString)!
        let f = DateFormatter()
        let iranLocale = NSLocale(localeIdentifier: "en_US_POSIX")
        f.locale = iranLocale as Locale!
        let persian = NSCalendar(identifier: NSCalendar.Identifier(rawValue: "gregorian"))
        f.calendar = persian as Calendar!
        f.dateStyle = .long
        let formattedDate = f.string(from: date)
        return formattedDate
    }
}
