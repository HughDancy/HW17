//
//  RadioData.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import Foundation
import SwiftUI

struct RadioData: Hashable {
    let image: String
    let title: String
}

let horizontalRadioData = [
   RadioData(image: "radioH01", title: "Поп - музыка"),
   RadioData(image: "radioH02", title: "Классика рока"),
   RadioData(image: "radioH03", title: "Легкий поп"),
   RadioData(image: "radioH04", title: "Хиты"),
   RadioData(image: "radioH05", title: "Хип-Хоп"),
   RadioData(image: "radioH06", title: "Смус-джаз"),
   RadioData(image: "radioH07", title: "Чилаут")
]

let verticalRadioData = [
    RadioData(image: "radioV01", title: "Техно"),
    RadioData(image: "radioV02", title: "Хиты"),
    RadioData(image: "radioV03", title: "Чилаут"),
    RadioData(image: "radioV04", title: "Классика хип-хопа"),
    RadioData(image: "radioV05", title: "Поп на русском"),
    RadioData(image: "radioV06", title: "Инди на русском"),
    RadioData(image: "radioV07", title: "Хард-рок"),
    RadioData(image: "radioV08", title: "Хэллоуин"),
    RadioData(image: "radioV09", title: "Классика рока"),
    RadioData(image: "radioV10", title: "Флотепиано"),
    RadioData(image: "radioV11", title: "Электроника")
]
