//
//  MainTabBarController.swift
//  BSSwift
//
//  Created by 李艳楠 on 16/10/11.
//  Copyright © 2016年 Déesse. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        
    }
}
//MARK: - 初始化操作
extension MainTabBarController {
    
    fileprivate func setUpUI() {
        globalSetting()
        addChildVC(EssenceViewController(), normalImage: #imageLiteral(resourceName: "tabBar_essence_icon"), selectImage: #imageLiteral(resourceName: "tabBar_essence_click_icon"), title: "精华")
        addChildVC(FriendViewController(), normalImage: #imageLiteral(resourceName: "tabBar_friendTrends_icon"), selectImage: #imageLiteral(resourceName: "tabBar_friendTrends_click_icon"), title: "关注")
        addChildVC(PublishViewController(), normalImage: #imageLiteral(resourceName: "tabBar_publish_icon"), selectImage:#imageLiteral(resourceName: "tabBar_publish_click_icon"), title: "发布")
        addChildVC(NewViewController(), normalImage: #imageLiteral(resourceName: "tabBar_new_icon"), selectImage: #imageLiteral(resourceName: "tabBar_new_click_icon"), title: "新帖")
        addChildVC(MeTableViewController(), normalImage: #imageLiteral(resourceName: "tabBar_me_icon"), selectImage: #imageLiteral(resourceName: "tabBar_me_click_icon"), title: "我")
    }
    private func globalSetting() {
        UITabBar.appearance().tintColor = UIColor.darkGray
    }
    private func addChildVC(_ vc: UIViewController, normalImage: UIImage, selectImage: UIImage, title: String? = ""){
        vc.tabBarItem.image = normalImage
        vc.tabBarItem.selectedImage = selectImage
        vc.title = title
        let navVC = MainNavigationController(rootViewController: vc)
        self.addChildViewController(navVC);
    }
}
