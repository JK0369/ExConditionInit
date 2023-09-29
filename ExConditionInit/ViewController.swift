//
//  ViewController.swift
//  ExConditionInit
//
//  Created by 김종권 on 2023/09/29.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func normalInit(a: Int) {
        let string: String
        
        if a.isMultiple(of: 2) {
            string = "even"
        } else {
            string = "odd"
        }
        
        print(string)
    }
    
    func newInit1(a: Int) {
        // String 타입 명시 안해도됨
        // result builder 클로저이므로 return 키워드 생략 가능
        let string = {
            if a.isMultiple(of: 2) {
                "even"
            } else {
                "odd"
            }
        }()
        
        print(string)
    }
    
    func newInit2(a: Int) {
        let string = if a.isMultiple(of: 2) {
            "even"
        } else {
            "odd"
        }
        
        print(string)
    }
    
    func newInit3(a: Int) {
        let string = switch a {
        case 0:
            "zero"
        case 1:
            "one"
        default:
            "other"
        }
        
        print(string)
    }
}
