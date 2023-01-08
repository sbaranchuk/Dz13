//
//  ViewController.swift
//  Dz13
//
//  Created by Admin on 04/01/2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Properties

    private var cells: [[CellConntent]]?

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

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        setupHierarchy()
        setupLayout()
        cells = CellConntent.cells
    }

    // MARK: - Setups

    func setupHierarchy() {
        view.addSubview(tableView)
    }

    func setupLayout() {

        tableView.snp.makeConstraints { make in
            make.left.top.right.bottom.equalTo(view)
        }
    }

    // MARK: - Actions

    func numberOfSections(in tableView: UITableView) -> Int {
        return cells?.count ?? 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells?[section].count ?? 0
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let typeCell = cells?[indexPath.section][indexPath.row].type

        switch typeCell {

        case .some(.ordinary):
            let cell = tableView.dequeueReusableCell(withIdentifier: "ordinaryCell", for: indexPath) as? OrdinaryTableViewCell
            cell?.cells = cells?[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()

        case .some(.withSwitch):
            let cell = tableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath) as? SwitchTableViewCell
            cell?.cells = cells?[indexPath.section][indexPath.row]
            cell?.accessoryType = .none
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()

        case .some(.withTextRight):
            let cell = tableView.dequeueReusableCell(withIdentifier: "rightTextCell", for: indexPath) as? RightTextTableViewCell
            cell?.cells = cells?[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()

        case .some(.withIndicatorRight):
            let cell = tableView.dequeueReusableCell(withIdentifier: "indicatorRightCell", for: indexPath) as? IndicatorRightTableViewCell
            cell?.cells = cells?[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()
            
        case .none:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ordinaryCell", for: indexPath) as? OrdinaryTableViewCell
            cell?.cells = cells?[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            cell?.separatorInset.left = 57
            return cell ?? UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

