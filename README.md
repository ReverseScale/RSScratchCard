# RSScratchCard
Swift 实现刮奖功能，刮刮刮，100%有奖~手动滑稽
---
![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Swift-orange.svg) 
![](https://img.shields.io/badge/download-2.3MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

每次网上订餐过后都有一个刮卡抽奖环节，是不是感觉没有刮过瘾呢，今天使用 Swift 实现挂卡功能，100%有奖哦！

| 名称 |1.列表页 |2.展示页 |3.结果页 |
| ------------- | ------------- | ------------- | ------------- |
| 截图 | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-9/90944896.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-9/54762888.jpg) | ![](http://og1yl0w9z.bkt.clouddn.com/17-10-9/77285280.jpg) |
| 描述 | 通过 storyboard 搭建基本框架 | 刮奖前 | 刮奖后 |


## Advantage 框架的优势
* 1.文件少，代码简洁
* 2.不依赖任何其他第三方库
* 3.具备较高自定义性


## Requirements 要求
* iOS 7+
* Xcode 8+


## Usage 使用方法
### 第一步 创建控件
```
//创建刮刮卡组件
let scratchCard = ScratchCard(frame: CGRect(x:20, y:120, width:self.view.frame.size.width - 40, height:126),
                              couponImage: UIImage(named: "coupon.png")!,
                              maskImage: UIImage(named: "mask.png")!)
//设置代理
scratchCard.delegate = self
self.view.addSubview(scratchCard)
```
### 第二步 实现代理
```
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
```

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
RSScratchCard 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io

