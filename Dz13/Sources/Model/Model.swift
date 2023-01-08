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
    var title: String
    var textRight: String?
    var indicatorRight: UIImage?
    var type: TypeCell
}

extension CellConntent {
    static var cells: [[CellConntent]] = [
        [
            CellConntent(image: UIImage(systemName: "airplane.circle.fill")!, title: "Авиарежим", textRight: "", indicatorRight: nil, type: .withSwitch),
            CellConntent(image: UIImage(systemName: "wifi.square.fill")!, title: "Wi-Fi", textRight: "Не подключено", indicatorRight: UIImage(systemName: "1.circle.fill")!, type: .withIndicatorRight),
            CellConntent(image: UIImage(systemName: "b.square.fill")!, title: "Bluetooth", textRight: "Вкл.", indicatorRight: nil, type: .withTextRight),
            CellConntent(image: UIImage(systemName: "antenna.radiowaves.left.and.right.circle.fill")!, title: "Сотовая связь", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "personalhotspot.circle.fill")!, title: "Режим модема", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "v.square.fill")!, title: "VPN", textRight: "", indicatorRight: nil, type: .withSwitch)
        ],
        [
            CellConntent(image: UIImage(systemName: "bell.square.fill")!, title: "Уведомления", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "speaker.circle")!, title: "Звуки, тактильные сигналы", textRight: "", indicatorRight: UIImage(systemName: "1.circle.fill")!, type: .ordinary),
            CellConntent(image: UIImage(systemName: "moon.fill")!, title: "Не беспокоить", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "hourglass.circle.fill")!, title: "Экранное время", textRight: "", indicatorRight: nil, type: .ordinary)
        ],
        [
            CellConntent(image: UIImage(systemName: "gear.circle")!, title: "Основные", textRight: "", indicatorRight: UIImage(systemName: "1.circle.fill"), type: .withIndicatorRight),
            CellConntent(image: UIImage(systemName: "eye.square.fill")!, title: "Пункт управления", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "a.square.fill")!, title: "Экран и яркость", textRight: "", indicatorRight: nil, type: .ordinary),
            CellConntent(image: UIImage(systemName: "house.circle.fill")!, title: "Экран домой", textRight: "", indicatorRight: nil, type: .ordinary)
        ]
    ]
}

