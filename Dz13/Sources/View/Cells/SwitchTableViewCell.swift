//
//  SwitchTableViewCell.swift
//  Dz13
//
//  Created by Admin on 08/01/2023.
//

import UIKit
import SnapKit

class SwitchTableViewCell: UITableViewCell {

    // MARK: - Properties

    var cells: Cell? {
        didSet {
            cellImage.image = UIImage(systemName: cells?.image ?? ".remove")
            cellImage.tintColor = cells?.imageColor
            titleLable.text = cells?.title
        }
    }

    // MARK: - Outlets

    private lazy var cellImage: UIImageView = {
        let cellImage = UIImageView()
        return cellImage
    }()

    private lazy var titleLable: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return titleLabel
    }()

    private lazy var rightSwitch: UISwitch = {
        let rightSwitch = UISwitch()
        rightSwitch.isOn = false
        return rightSwitch
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
        contentView.addSubview(rightSwitch)
    }

    func setupLayout() {

        cellImage.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.width.height.equalTo(35)
        }

        titleLable.snp.makeConstraints { make in
            make.centerY.equalTo(cellImage)
            make.left.equalTo(cellImage.snp.right).offset(10)
        }

        rightSwitch.snp.makeConstraints { make in
            make.right.equalTo(contentView).offset(-20)
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
