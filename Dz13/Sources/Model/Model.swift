//
//  Model.swift
//  Dz13
//
//  Created by Admin on 04/01/2023.
//

import UIKit

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
            CellConntent(image: UIImage(systemName: "airplane.circle.fill")!, imageColor: UIColor.systemOrange, title: "Авиарежим", textRight: "", indicatorRight: nil, type: .withSwitch),
            CellConntent(image: UIImage(systemName: "wifi.square.fill")!, imageColor: UIColor.systemBlue, title: "Wi-Fi", textRight: "Не подключено", indicatorRight: nil, type: .withTextRight),
            CellConntent(image: UIImage(systemName: "b.square.fill")!, imageColor: UIColor.systemBlue, title: "Bluetooth", textRight: "Вкл.", indicatorRight: nil, type: .withTextRight),
            CellConntent(image: UIImage(systemName: "antenna.radiowaves.left.and.right.circle.fill")!, imageColor: UIColor.systemGreen, title: "Сотовая связь", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "personalhotspot.circle.fill")!, imageColor: UIColor.systemGreen, title: "Режим модема", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "v.square.fill")!, imageColor: UIColor.systemBlue, title: "VPN", textRight: "", indicatorRight: nil, type: .withSwitch)
        ],
        [
            CellConntent(image: UIImage(systemName: "bell.square.fill")!, imageColor: UIColor.systemRed, title: "Уведомления", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "speaker.circle")!, imageColor: UIColor.systemRed, title: "Звуки, тактильные сигналы", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "moon.fill")!, imageColor: UIColor.systemPurple, title: "Не беспокоить", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "hourglass.circle.fill")!, imageColor: UIColor.systemPurple, title: "Экранное время", textRight: "", indicatorRight: nil, type: .ordinary)
        ],
        [
            CellConntent(image: UIImage(systemName: "gear.circle")!, imageColor: UIColor.systemGray, title: "Основные", textRight: "", indicatorRight: UIImage(systemName: "1.circle.fill"), type: .withIndicatorRight),
            CellConntent(image: UIImage(systemName: "eye.square.fill")!, imageColor: UIColor.systemGray, title: "Пункт управления", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "a.square.fill")!, imageColor: UIColor.systemBlue, title: "Экран и яркость", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "house.circle.fill")!, imageColor: UIColor.systemBlue, title: "Экран домой", textRight: "", indicatorRight: nil, type: .ordinary)
        ]
    ]
}

