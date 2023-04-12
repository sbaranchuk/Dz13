//
//  DetailController.swift
//  Dz13
//
//  Created by Admin on 11/04/2023.
//

import UIKit

final class DetailController: UIViewController {

    // MARK: - Properties

    private var model: Model?
    var cell = Cell(image: UIImage(systemName: "airplane.circle.fill") ?? .remove, imageColor: UIColor.systemOrange, title: "Авиарежим", textRight: "", indicatorRight: nil, type: .withSwitch)

    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        model = Model()
        view = DetailView(with: cell)
        view.backgroundColor = .white
    }
}



