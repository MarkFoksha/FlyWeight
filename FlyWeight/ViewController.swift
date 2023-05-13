//
//  ViewController.swift
//  FlyWeight
//
//  Created by Марк Фокша on 13.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let red1 = UIColor.red
        let red2 = UIColor.red
        print(red1 === red2)
        
        let color = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        let color2 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        print(color === color2)
        
        let rgb = UIColor.rgb(1, 0, 0, 1)
        let rgb2 = UIColor.rgb(1, 0, 0, 1)
        print(rgb === rgb2)
    }
}

extension UIColor {
    static var colorStore: [String: UIColor] = [:]
    
    static func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        let key = "\(red)\(green)\(blue)\(alpha)"
        
        if let color = colorStore[key] {
            return color
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        colorStore[key] = color
        return color
    }
}

