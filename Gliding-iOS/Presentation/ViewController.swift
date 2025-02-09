//
//  ViewController.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/6/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
    }


}

struct ViewControllerPreview: PreviewProvider {
    static var previews: some View {
        ViewController().toPreview()
    }
}
