//
//  ViewController.swift
//  DropMenu
//
//  Created by ouyou on 2019/06/18.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cityButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func handleSelection(_ sender: UIButton) {
    
        cityButtons.forEach{(button) in
            UIView.animate(withDuration: 1, animations: {button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()  //一个系统的frame或bound发生变化时，系统会自动生成一个flag，需要在下次到来时重新渲染
                                        //layoutiIfNeeded是告诉系统如果设置了flag就直接渲染吧，setNeedLayout是告诉系统我要渲染
            })
            
        }
    }
    
    enum Citys:String{
        case boston = "Boston"
        case losAngels = "Los Angels"
        case newYorkCity = "New York City"
        case sanFranscisco = "San Francisco"
    }
    @IBAction func cityTapped(_ sender: UIButton) {
         //rawValue是关联值，把关联值等于**的成员赋值给city，然后switch city执行一些操作
        guard let title = sender.currentTitle,let city = Citys(rawValue: title) else {
            return
        }
        
        switch city {
        case .boston:
            print("Boston")
        case .sanFranscisco:
            print("San Franscisco")
        case .losAngels:
            print("Los Angels")
        case .newYorkCity:
            print("New York City")
        default:
            print("hahaha")
        }
        
    }
}

