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
        configureView()
    }
}

// MARK: - Extensions

private extension ViewController {
    func configureView() {
        guard let models = model?.createCells() else { return }
        settingsView?.configureView(with: models)
    }
}

