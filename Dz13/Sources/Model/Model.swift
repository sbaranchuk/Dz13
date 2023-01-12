//
//  Model.swift
//  Dz13
//
//  Created by Admin on 04/01/2023.
//

import UIKit

let sizeIcon = 35
let sizeFontInCell = UIFont.systemFont(ofSize: 16, weight: .regular)

enum TypeCell: String {
    case withSwitch = "withSwitch"
    case withTextRight = "withTextRight"
    case withIndicatorRight = "withIndicatorRight"
    case ordinary = "ordinary"
}

struct CellConntent: Hashable {
    var image: UIImage
    var imageColor: UIColor
    var title: String
    var textRight: String?
    var indicatorRight: UIImage?
    var type: TypeCell
}

extension CellConntent {
    static var cells: [[CellConntent]] = [
        [
            CellConntent(image: UIImage(systemName: "airplane.circle.fill") ?? .remove, imageColor: UIColor.systemOrange, title: "Авиарежим", textRight: "", indicatorRight: nil, type: .withSwitch),
            CellConntent(image: UIImage(systemName: "wifi.square.fill") ?? .remove, imageColor: UIColor.systemBlue, title: "Wi-Fi", textRight: "Не подключено", indicatorRight: nil, type: .withTextRight),
            CellConntent(image: UIImage(systemName: "b.square.fill") ?? .remove, imageColor: UIColor.systemBlue, title: "Bluetooth", textRight: "Вкл.", indicatorRight: nil, type: .withTextRight),
            CellConntent(image: UIImage(systemName: "antenna.radiowaves.left.and.right.circle.fill") ?? .remove, imageColor: UIColor.systemGreen, title: "Сотовая связь", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "personalhotspot.circle.fill") ?? .remove, imageColor: UIColor.systemGreen, title: "Режим модема", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "v.square.fill") ?? .remove, imageColor: UIColor.systemBlue, title: "VPN", textRight: "", indicatorRight: nil, type: .withSwitch)
        ],
        [
            CellConntent(image: UIImage(systemName: "bell.square.fill") ?? .remove, imageColor: UIColor.systemRed, title: "Уведомления", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "speaker.circle") ?? .remove, imageColor: UIColor.systemRed, title: "Звуки, тактильные сигналы", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "moon.fill") ?? .remove, imageColor: UIColor.systemPurple, title: "Не беспокоить", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "hourglass.circle.fill") ?? .remove, imageColor: UIColor.systemPurple, title: "Экранное время", textRight: "", indicatorRight: nil, type: .ordinary)
        ],
        [
            CellConntent(image: UIImage(systemName: "gear.circle") ?? .remove, imageColor: UIColor.systemGray, title: "Основные", textRight: "", indicatorRight: UIImage(systemName: "1.circle.fill"), type: .withIndicatorRight),
            CellConntent(image: UIImage(systemName: "eye.square.fill") ?? .remove, imageColor: UIColor.systemGray, title: "Пункт управления", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "a.square.fill") ?? .remove, imageColor: UIColor.systemBlue, title: "Экран и яркость", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "house.circle.fill") ?? .remove, imageColor: UIColor.systemBlue, title: "Экран домой", textRight: "", indicatorRight: nil, type: .ordinary)
        ]
    ]
}

