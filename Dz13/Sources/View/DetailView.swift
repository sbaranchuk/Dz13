//
//  DetailView.swift
//  Dz13
//
//  Created by Admin on 08/01/2023.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {

    var info: CellConntent? {
        didSet {
            imageView.image = info?.image
            imageView.tintColor = info?.imageColor
            titleLabel.text = "Раздел: \(info?.title ?? "")"
            textRightLabel.text = "Текст в правой части ячейки: \(info?.textRight ?? "отсутствует")"
            indicatorImage.image = info?.indicatorRight ?? UIImage(systemName: "multiply")
            typeCellLabel.text = "Тип ячейки: \(info?.type.rawValue ?? "")"
        }
    }

    // MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()

    private lazy var textRightLabel: UILabel = {
        let textRightLabel = UILabel()
        return textRightLabel
    }()

    private lazy var indicatorImage: UIImageView = {
        let indicatorImage = UIImageView()
        return indicatorImage
    }()

    private lazy var typeCellLabel: UILabel = {
        let typeCellLabel = UILabel()
        return typeCellLabel
    }()

    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = info?.title
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(stack)
        stack.addArrangedSubview(imageView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(textRightLabel)
        stack.addArrangedSubview(indicatorImage)
        stack.addArrangedSubview(typeCellLabel)
    }

    private func setupLayout() {
        stack.snp.makeConstraints { make in
            make.centerY.centerX.equalTo(view)
        }
    }
}
