//
//  ViewController.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/6/25.
//

import UIKit
import RxSwift

//protocol ViewControllerProtocol: UIViewController {
//    var disposeBag: DisposeBag { get set }
//    func bind()
//    func configureUI()
//}
class ViewController: UIViewController {
    var coordinator: HomeCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
    }


}

import SwiftUI
struct ViewControllerPreview: PreviewProvider {
    static var previews: some View {
        ViewController().toPreview()
    }
}
