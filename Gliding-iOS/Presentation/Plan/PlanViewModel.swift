//
//  PlanViewModel.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/9/25.
//

import RxSwift
import RxCocoa

final class PlanViewModel: ViewModel {
    struct Input {
        let searchQuery: ControlProperty<String>
        let addButtonTap: ControlEvent<Void>
        
    }
    struct Output {
        
    }
    var disposeBag = DisposeBag()
    
    func transform(input: Input) -> Output {
        return Output()
    }
}
