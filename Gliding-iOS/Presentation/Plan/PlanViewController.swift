//
//  PlanViewController.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/9/25.
//

import UIKit
import RxSwift

final class PlanViewController: UIViewController {
    var coordinator: PlanCoordinator?
    let viewModel: PlanViewModel
    let disposeBag = DisposeBag()
    
    init(viewModel: PlanViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        bind()
    }
    
    private func bind() {
        
    }
    
    private func configureUI() {
        
    }
}

import SwiftUI
struct PlanViewControllerPreview: PreviewProvider {
    static var previews: some View {
        ViewController().toPreview()
    }
}
