//
//  Ordinary.swift
//  Dz13
//
//  Created by Admin on 08/01/2023.
//

import UIKit

class OrdinaryTableViewCell: UITableViewCell {

    // MARK: - Properties

    var cells: CellConntent? {
        didSet {
            cellImage.image = cells?.image
            cellImage.tintColor = cells?.imageColor
            titleLable.text = cells?.title
        }
    }

    // MARK: - Outlets

    private lazy var cellImage: UIImageView = {
        let cellImage = UIImageView()
        return cellImage
    }()

    private let titleLable: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()

    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups

    func setupHierarchy() {
        addSubview(titleLable)
        addSubview(cellImage)
    }

    func setupLayout() {

        cellImage.snp.makeConstraints { make in
            make.top.bottom.equalTo(contentView).offset(5)
            make.left.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(35)
        }

        titleLable.snp.makeConstraints { make in
            make.centerY.equalTo(cellImage)
            make.left.equalTo(cellImage.snp.right).offset(20)
        }
    }

    // MARK: - Reuse

}
