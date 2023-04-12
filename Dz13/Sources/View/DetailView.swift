//
//  DetailView.swift
//  Dz13
//
//  Created by Admin on 08/01/2023.
//

import UIKit
import SnapKit

final class DetailView: UIView {

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

    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .center
        stack.spacing = 10
        return stack
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

    init(with cell: Cell) {
        super.init(frame: .zero)
        commonInit()
        configureView(with: cell)
    }

    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(stack)
        stack.addArrangedSubview(imageView)
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(textRightLabel)
        stack.addArrangedSubview(indicatorImage)
        stack.addArrangedSubview(typeCellLabel)
    }

    private func setupLayout() {
        stack.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
        }
    }

    func configureView(with cell: Cell) {
        imageView.image = UIImage(systemName: cell.image)
        imageView.tintColor = cell.imageColor
        titleLabel.text = "Раздел: \(cell.title)"
        textRightLabel.text = "Текст в правой части ячейки: \(cell.textRight ?? "отсутствует")"
        indicatorImage.image = UIImage(systemName: cell.indicatorRight ?? ".remove")
        typeCellLabel.text = "Тип ячейки: \(cell.type.rawValue)"
    }
}
