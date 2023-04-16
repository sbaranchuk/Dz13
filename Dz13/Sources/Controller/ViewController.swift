//
//  ViewController.swift
//  Dz13
//
//  Created by Admin on 04/01/2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - Private properties

    private var model: Model?
    private var cells = [[Cell]]()

    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view = SettingsView()
        model = Model()
        title = "Настройки"
        setupDelegates()
        getСells()
    }

    // MARK: - Setups delegate

    func setupDelegates() {
        settingsView?.tableView.dataSource = self
        settingsView?.tableView.delegate = self
        settingsView?.delegate = self
    }
}

// MARK: - Extensions

private extension ViewController {
    func getСells() {
        guard let cells = model?.createCells() else { return }
        self.cells = cells
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
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
        let viewController = DetailController()
        viewController.cell = cells[indexPath.section][indexPath.row]
        if let navigator = navigationController {
            navigator.pushViewController(viewController, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
