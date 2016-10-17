//
//  BasicViewController.swift
//  RenRenAPP
//
//  Created by 千锋 on 16/9/1.
//  Copyright © 2016年 KG. All rights reserved.
//

import UIKit

class BasicViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //这个类作为所有类的父类，用来去封装导航条的内容
        //做一张图片
        let navBGImage = UIImage(named: "header_bg")?.//resizableImageWithCapInsets(UIEdgeInsetsMake(5, 5, 5, 5))
            stretchableImageWithLeftCapWidth(10, topCapHeight: 10)
        self.navigationController?.navigationBar.setBackgroundImage(navBGImage, forBarMetrics: .Default)
        //titleView
        let titleView = UIImageView()
        titleView.frame = CGRectMake(0, 0, 60, 35)
        titleView.image = UIImage(named: "logo_title")
        self.navigationItem.titleView = titleView
        //左按钮
        let leftItem = UIBarButtonItem(image: UIImage(named: "main_left_nav"), style: .Plain, target: self, action: "leftAction")
        self.navigationItem.leftBarButtonItem = leftItem
        //右按钮
        let rightItem = UIBarButtonItem(image: UIImage(named: "main_right_nav"), style: .Plain, target: self, action: "rightAction")
        self.navigationItem.leftBarButtonItem = rightItem
        
        
    }
    func leftAction(){
    //功能是用来返回上一页面
        //这些页面都是在登陆后，使用nvc，push出来的，所以要pop回去
        self.navigationController?.popViewControllerAnimated(true)
    }
    func rightAction(){
    //登录界面是没有导航条的，所以是present出来的
        //所以应该dissmiss
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
