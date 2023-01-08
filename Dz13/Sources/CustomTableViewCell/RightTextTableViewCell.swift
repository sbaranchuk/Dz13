//
//  RightTextTableViewCell.swift
//  Dz13
//
//  Created by Admin on 08/01/2023.
//

import UIKit
import SnapKit

class RightTextTableViewCell: UITableViewCell {

    // MARK: - Properties

    var cells: CellConntent? {
        didSet {
            cellImage.image = cells?.image
            cellImage.tintColor = cells?.imageColor
            titleLable.text = cells?.title
            rightTitleLable.text = cells?.textRight
        }
    }

    // MARK: - Outlets

    private lazy var cellImage: UIImageView = {
        let cellImage = UIImageView()
        return cellImage
    }()

    private lazy var titleLable: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = sizeFontInCell
        return titleLabel
    }()

    private lazy var rightTitleLable: UILabel = {
        let rightTitleLable = UILabel()
        rightTitleLable.textColor = UIColor.systemGray
        return rightTitleLable
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
        contentView.addSubview(titleLable)
        contentView.addSubview(cellImage)
        contentView.addSubview(rightTitleLable)
    }

    func setupLayout() {

        cellImage.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(sizeIcon)
        }

        titleLable.snp.makeConstraints { make in
            make.centerY.equalTo(cellImage)
            make.left.equalTo(cellImage.snp.right).offset(10)
        }

        rightTitleLable.snp.makeConstraints { make in
            make.right.equalTo(contentView).offset(-10)
            make.centerY.equalTo(contentView)
        }
    }

    // MARK: - Reuse

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.cells = nil
    }

}
