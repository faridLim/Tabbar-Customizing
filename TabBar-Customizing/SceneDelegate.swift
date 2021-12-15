//
//  SceneDelegate.swift
//  TabBar-Customizing
//
//  Created by 임재헌 on 2021/12/11.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let _ = (scene as? UIWindowScene) else { return }
        
        //루트 뷰컨트롤러를 UITabBarController로 캐스팅
        if let tbc = self.window?.rootViewController as? UITabBarController{
            if let tbItems = tbc.tabBar.items{
                //탭 바 아이템에 커스텀 이미지를 등록
                tbItems[0].image =  UIImage(named: "calendar")
                tbItems[1].image =  UIImage(named: "file-tree")
                tbItems[2].image =  UIImage(named: "photo")
                
                //탭 바 아이템에 타이틀을 설정
                tbItems[0].title = "calendar"
                tbItems[1].title = "file"
                tbItems[2].title = "photo"
            
                //탭 바 아이템 전체를 순회하면서 selectedImage 속성에 이미지를 설정
                for tbItem in tbItems{
                    let image = UIImage(named: "checkmark")
                    //let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                    
                    tbItem.selectedImage = image
                    //탭 바 아이템별 텍스트 색상 속성을 설정한다.
                    tbItem.setTitleTextAttributes([NSAttributedString.foregroundColor: UIColor.gray] ,for: UIControl.State.disabled)
                    //탭
                }
            }
           
            //탭 바 아이템의 이미지 색상을 변경
            tbc.tabBar.tintColor = .white //선택된 탭 바 아이템 색상
            tbc.tabBar.unselectedItemTintColor = .gray //선택되지 않은 탭 바 아이템 색상
            
            //탭바 배경색 이미지 변경
            tbc.tabBar.backgroundImage = UIImage(named: "menubar-bg")
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

