//
//  ViewController.swift
//  Login
//
//  Created by Student on 9/8/16.
//  Copyright © 2016 MD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tf_user: UITextField!
    
    @IBOutlet weak var tf_password: UITextField!
    
    var users = ["Nguyen Van A":"1","duong":"123","thanh":"1234"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func action_dangnhap(sender: AnyObject) {
       
        if let pw = users[tf_user.text!]
        {
        
            if (pw == tf_password.text) {
                print("Dang nhap thanh cong!")
               
            }
            else {
                print("Sai mat khau")
            }
            
        }
        else   {
            print("Tai khoan khong ton tai")
        }
        
    }


    @IBAction func action_Danhsach(sender: AnyObject) {
        
        for (taikhoan, matkhau) in users {
            print("Tai khoan: \(taikhoan)  Mat khau: \(matkhau)")
        }
        
    }
    
    @IBAction func action_them(sender: AnyObject) {
        if (tf_user.text != "" && tf_password.text != "") {
            
            if users[tf_user.text!] != nil {
                print("Tai khoan da ton tai!")
            }else {
                users[tf_user.text!] = tf_password.text
                print("Them tai khoan thanh cong!")
            }
     
            }

        else {
            print("Vui long nhap day du tai khoan va mat khau")
            }
        
    }
    
    
    @IBAction func action_xoa(sender: AnyObject) {
        
        if (tf_user.text != "" && tf_password.text != "") {
            
            if let pw = users[tf_user.text!] {
                if pw == tf_password.text {
                    users[tf_user.text!] = nil
                    print("Da xoa tai khoan: \(tf_user.text!)")
                }
                else {
                print("Sai mat khau")
                }
                
            }else {
                    print("Tai khoan khong ton tai!")
            }
            
        }
            
        else {
            print("Vui long nhap day du tai khoan va mat khau")
        }
        
        
    }
    
    
    @IBAction func action_sua(sender: AnyObject) {
    
        users[tf_user.text!] = tf_password.text
      
    
    }
    
    
    
}

