//
//  ViewModel.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/9/25.
//

import RxSwift

protocol ViewModel {
    associatedtype Input
    associatedtype Output
    var disposeBag: DisposeBag { get set }
    
    func transform(input: Input) -> Output
}
