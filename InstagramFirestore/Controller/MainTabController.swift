//
//  MainTabController.swift
//  InstagramFirestore
//
//  Created by Murad Nasibli on 06.05.22.
//

import UIKit

class MainTabController : UITabBarController{
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
        
        tabBar.backgroundColor = .white
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white
        
        let feed = templateNavigationController(unselectedImage: "home_unselected", selectedImage: "home_selected", rootViewController: FeedController())
        
        let search = templateNavigationController(unselectedImage: "search_unselected", selectedImage: "search_selected", rootViewController: SearchController())
        
        let imageSelector = templateNavigationController(unselectedImage: "plus_unselected", selectedImage: "plus_unselected", rootViewController: ImageSelectorController())
        
        let notifications = templateNavigationController(unselectedImage: "like_unselected", selectedImage: "like_selected", rootViewController: NotificationsController())
        
        let profile = templateNavigationController(unselectedImage: "profile_unselected", selectedImage: "profile_selected"ß, rootViewController: ProfileController())
        
        viewControllers = [feed, search, imageSelector, notifications, profile]
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage,
                                      rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = UIImage(imageLiteralResourceName: unselectedImage)
        nav.tabBarItem.selectedImage = UIImage(imageLiteralResourceName: selectedImage)
        nav.navigationBar.tintColor = .black
        return nav
    }
}
