//
//  SettingsView.swift
//  Dz13
//
//  Created by Admin on 09/04/2023.
//

import UIKit

final class SettingsView: UIView {

    // MARK: - Configuration

    func configureView(with cells: [[Cell]]) {
        self.cells = cells
    }

    // MARK: - Private properties

    private var cells = [[Cell]]()

    // MARK: - UIElements

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(OrdinaryTableViewCell.self, forCellReuseIdentifier: "ordinaryCell")
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "switchCell")
        tableView.register(RightTextTableViewCell.self, forCellReuseIdentifier: "rightTextCell")
        tableView.register(IndicatorRightTableViewCell.self, forCellReuseIdentifier: "indicatorRightCell")
        tableView.dataSource = self
        tableView.delegate = self
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

extension SettingsView: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells[section].count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let typeCell = cells[indexPath.section][indexPath.row].type

        switch typeCell {

        case .ordinary:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ordinaryCell", for: indexPath) as? OrdinaryTableViewCell
            cell?.cells = cells[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()

        case .withSwitch:
            let cell = tableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath) as? SwitchTableViewCell
            cell?.cells = cells[indexPath.section][indexPath.row]
            cell?.accessoryType = .none
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()

        case .withTextRight:
            let cell = tableView.dequeueReusableCell(withIdentifier: "rightTextCell", for: indexPath) as? RightTextTableViewCell
            cell?.cells = cells[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()

        case .withIndicatorRight:
            let cell = tableView.dequeueReusableCell(withIdentifier: "indicatorRightCell", for: indexPath) as? IndicatorRightTableViewCell
            cell?.cells = cells[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
//        viewController.info = cells[indexPath.section][indexPath.row]
//        navigationController?.pushViewController(viewController, animated: true)
    }
}
