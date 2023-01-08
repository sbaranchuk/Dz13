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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
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

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cells?[indexPath.section][indexPath.row].title
        cell.imageView?.image = cells?[indexPath.section][indexPath.row].image
        cell.accessoryType = .disclosureIndicator
        // добавить цвета иконок в модель и тут
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
