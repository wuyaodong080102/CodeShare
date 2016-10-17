//
//  RRHomeViewController.swift
//  RenRenAPP
//
//  Created by KG on 16/8/31.
//  Copyright © 2016年 KG. All rights reserved.
//

import UIKit

class RRHomeViewController: BasicViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configCustomButton()
    }
    func configCustomButton(){
    let titles = ["照片","状态","报道"]
        let imageName = ["rr_pub_takephoto","",""]
        let selectors = ["","",""]
        
        self.automaticallyAdjustsScrollViewInsets = false//自动设置滚动视图的边距
        for i in 0..<titles.count{
        let frame = CGRectMake(CGFloat(15+i*129), 10, 129,35 )
            let title = titles[i]
            let image = UIImage(named: imageName[i])
            let action = NSSelectorFromString(selectors[i])//将一个字符串的方法名转换成一个选择器类型
            //创建一个自定义按钮
            let customButton = CustomButton(frame: frame, image: image!, title: title, target: self, action: action)
            self.view.addSubview(customButton)
        }
    }
    func rrPubTakephoto(){
    print("takePhoto")
    }
    func rrPubStatus(){
    print("rrPubStatus")
    }
    func rrPubCheckin(){
    print("rrPubCheckin")
    }
    func configCustomView(){
    let titles = ["个人主页","新鲜事","好友","应用","位置","相册","搜索","聊天","站内信"]
        let imageNames = ["gerenzhuye","xinxianshi","haoyou","yingyong","weizhifuwu","xiangce","zhaoren","chat","zhanneixin"]
        for i in 0..<titles.count{
        let x = i/3
            let y = i%3
            let frame = CGRectMake(CGFloat(15+x*129), CGFloat(50+y*140), 129, 140)
            let title = titles[i]
            let image = UIImage(named: imageNames[i])
            let action:Selector?
            if i == 5{
            action =  NSSelectorFromString("photosAction")
            }else{
            action = NSSelectorFromString("otherAction")
            }
            //创建图片
            let customView = CustomView(frame: frame, image: image!, title: title, target: self, action: action!)
            self.view.addSubview(customView)
        }
    }
    func photosAction(){
    self.navigationController?.pushViewController(photoVc, animated: true)
    }
    func otherAction(){
    
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
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
