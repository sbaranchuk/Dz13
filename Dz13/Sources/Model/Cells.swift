//
//  Cells.swift
//  Dz13
//
//  Created by Admin on 09/04/2023.
//

import UIKit

struct Cell: Hashable {
    let image: UIImage
    let imageColor: UIColor
    let title: String
    let textRight: String?
    let indicatorRight: UIImage?
    let type: TypeCell
}

enum TypeCell: String {
    case withSwitch = "withSwitch"
    case withTextRight = "withTextRight"
    case withIndicatorRight = "withIndicatorRight"
    case ordinary = "ordinary"
}
