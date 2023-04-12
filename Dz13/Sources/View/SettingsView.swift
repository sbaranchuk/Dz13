//
//  SettingsView.swift
//  Dz13
//
//  Created by Admin on 09/04/2023.
//

import UIKit

final class SettingsView: UIView {

    // MARK: - Properties

    var delegate: ViewController?

    // MARK: - UIElements

    public lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(OrdinaryTableViewCell.self, forCellReuseIdentifier: "ordinaryCell")
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "switchCell")
        tableView.register(RightTextTableViewCell.self, forCellReuseIdentifier: "rightTextCell")
        tableView.register(IndicatorRightTableViewCell.self, forCellReuseIdentifier: "indicatorRightCell")
        return tableView
    }()

    // MARK: - Initial

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Settings

    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.leading.top.trailing.bottom.equalToSuperview()
        }
    }
}
