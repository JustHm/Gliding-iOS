//
//  UIViewController+.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/6/25.
//

import UIKit
import SwiftUI

#if DEBUG
extension UIViewController {
    private struct UIViewControllerPreview: UIViewControllerRepresentable {
        let viewController: UIViewController

        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }

        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        }
    }

    func toPreview() -> some View {
        UIViewControllerPreview(viewController: self)
    }
}
#endif
