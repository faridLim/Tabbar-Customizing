//
//  ViewController.swift
//  TabBar-Customizing
//
//  Created by 임재헌 on 2021/12/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       //title 레이블생성
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        title.text = "첫 번째 탭"
        title.textColor = .blue
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        //레이블의 크기를 콘텐츠 사이즈에 맞춤
        title.sizeToFit()
        //X축 중앙에 오도록 설정
        title.center.x = self.view.frame.width/2
        
        self.view.addSubview(title)
        
        
    }


}

