//
//  Model.swift
//  Dz13
//
//  Created by Admin on 04/01/2023.
//

import UIKit

final class Model {
    func createCells() -> [[Cell]] {
        return [
            [
                Cell(image: "airplane.circle.fill", imageColor: UIColor.systemOrange, title: "Авиарежим", textRight: "", indicatorRight: nil, type: .withSwitch),
                Cell(image: "wifi.square.fill", imageColor: UIColor.systemBlue, title: "Wi-Fi", textRight: "Не подключено", indicatorRight: nil, type: .withTextRight),
                Cell(image: "b.square.fill", imageColor: UIColor.systemBlue, title: "Bluetooth", textRight: "Вкл.", indicatorRight: nil, type: .withTextRight),
                Cell(image: "antenna.radiowaves.left.and.right.circle.fill", imageColor: UIColor.systemGreen, title: "Сотовая связь", textRight: "", indicatorRight: nil, type: .ordinary),
                Cell(image: "personalhotspot.circle.fill", imageColor: UIColor.systemGreen, title: "Режим модема", textRight: "", indicatorRight: nil, type: .ordinary),
                Cell(image: "v.square.fill", imageColor: UIColor.systemBlue, title: "VPN", textRight: "", indicatorRight: nil, type: .withSwitch)
            ],
            [
                Cell(image: "bell.square.fill", imageColor: UIColor.systemRed, title: "Уведомления", textRight: "", indicatorRight: nil, type: .ordinary),
                Cell(image: "speaker.circle", imageColor: UIColor.systemRed, title: "Звуки, тактильные сигналы", textRight: "", indicatorRight: nil, type: .ordinary),
                Cell(image: "moon.fill", imageColor: UIColor.systemPurple, title: "Не беспокоить", textRight: "", indicatorRight: nil, type: .ordinary),
                Cell(image: "hourglass.circle.fill", imageColor: UIColor.systemPurple, title: "Экранное время", textRight: "", indicatorRight: nil, type: .ordinary)
            ],
            [
                Cell(image: "gear.circle", imageColor: UIColor.systemGray, title: "Основные", textRight: "", indicatorRight: "1.circle.fill", type: .withIndicatorRight),
                Cell(image: "eye.square.fill", imageColor: UIColor.systemGray, title: "Пункт управления", textRight: "", indicatorRight: nil, type: .ordinary),
                Cell(image: "a.square.fill", imageColor: UIColor.systemBlue, title: "Экран и яркость", textRight: "", indicatorRight: nil, type: .ordinary),
                Cell(image: "house.circle.fill", imageColor: UIColor.systemBlue, title: "Экран домой", textRight: "", indicatorRight: nil, type: .ordinary)
            ]
        ]
    }
}
