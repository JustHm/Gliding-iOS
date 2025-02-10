//
//  PlanListView.swift
//  Gliding-iOS
//
//  Created by 안정흠 on 2/10/25.
//

import UIKit
import SnapKit

final class PlanListView: UIView {
    private let searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.obscuresBackgroundDuringPresentation = false
//        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "검색"
        searchController.searchBar.showsCancelButton = true
//        searchController.searchBar.barStyle =
        return searchController
    }()
    var searchBar: UISearchBar { searchController.searchBar }
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        return tableView
    }()
    
    init() {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        tableView.tableHeaderView = searchBar
        addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
