//
//  ViewController.swift
//  RSScratchCard
//
//  Created by WhatsXie on 2017/10/9.
//  Copyright © 2017年 WhatsXie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ScratchCardDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        createScratchCard()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func createScratchCard() {
        //创建刮刮卡组件
        let scratchCard = ScratchCard(frame: CGRect(x:20, y:120, width:self.view.frame.size.width - 40, height:126),
                                      couponImage: UIImage(named: "coupon.png")!,
                                      maskImage: UIImage(named: "mask.png")!)
        //设置代理
        scratchCard.delegate = self
        self.view.addSubview(scratchCard)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController {
    //滑动开始
    func scratchBegan(point: CGPoint) {
        print("开始刮奖：\(point)")
    }

    //滑动过程
    func scratchMoved(progress: Float) {
        print("当前进度：\(progress)")
        
        //显示百分比
        let percent = String(format: "%.1f", progress * 100)
        print("刮开了：\(percent)%")
    }

    //滑动结束
    func scratchEnded(point: CGPoint) {
        print("停止刮奖：\(point)")
    }
}

