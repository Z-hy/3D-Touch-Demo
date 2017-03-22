//
//  ViewController.swift
//  3DTouchDemo
//
//  Created by user on 2017/3/22.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var is3DTouchAvailable: Bool {
        return self.traitCollection.forceTouchCapability == .available
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if is3DTouchAvailable == true {
            registHomeScreenQuickActions()
        } else {
            print("不支持3D Touch!!!")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func registHomeScreenQuickActions() {
        let item1 = UIApplicationShortcutItem(type: "com.user.myapp.add", localizedTitle: "黄色", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(type: .compose), userInfo: nil)
        
        let item2 = UIApplicationShortcutItem(type: "com.user.myapp.add", localizedTitle: "绿色", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(templateImageName: "1"), userInfo: nil)
        
        let item3 = UIApplicationShortcutItem(type: "com.user.myapp.add", localizedTitle: "蓝色", localizedSubtitle: nil, icon: UIApplicationShortcutIcon(templateImageName: "2"), userInfo: nil)
        
        UIApplication.shared.shortcutItems = [item1, item2, item3]
    }
    
}

