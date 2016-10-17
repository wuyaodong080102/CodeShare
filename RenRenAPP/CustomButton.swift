//
//  CustomButton.swift
//  RenRenAPP
//
//  Created by 千锋 on 16/9/1.
//  Copyright © 2016年 KG. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    //加一个需要的构造方法
    //参数一：位置大小
    //2：图片
    //3：按钮的标题
    //4:执行人
    //5：相应方法
    init(frame: CGRect,image:UIImage,title:String,target:AnyObject,action:Selector) {
        super.init(frame:frame)
        //先设置背景图片
        let bgImage = UIImage(named: "chat_send_button")?.stretchableImageWithLeftCapWidth(10, topCapHeight: 10)
        self.setBackgroundImage(bgImage, forState: .Normal)
       
        self.setTitle(title, forState: .Normal)
        self.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        
        
        
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
