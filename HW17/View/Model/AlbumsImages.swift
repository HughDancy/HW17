//
//  AlbumsImages.swift
//  HW17
//
//  Created by Борис Киселев on 02.09.2022.
//

import Foundation
import SwiftUI

struct AlbumsImages: Hashable {
    
    let image: String
}

var albumImages = [
    AlbumsImages(image: "ahig"),
    AlbumsImages(image: "slipknot"),
    AlbumsImages(image: "Architects"),
    AlbumsImages(image: "badOmens"),
    AlbumsImages(image: "DeathStranding"),
    AlbumsImages(image: "hybridTheory"),
    AlbumsImages(image: "marilyn"),
    AlbumsImages(image: "maybe01"),
    AlbumsImages(image: "maybe02"),
    AlbumsImages(image: "nevermind"),
    AlbumsImages(image: "Nirvana"),
    AlbumsImages(image: "scaledAndIcy"),
    AlbumsImages(image: "trench"),
    AlbumsImages(image: "youth"),
    AlbumsImages(image: "bring01"),
    AlbumsImages(image: "bring02"),
    AlbumsImages(image: "bring03"),
    AlbumsImages(image: "fall01"),
    AlbumsImages(image: "fall02"),
    AlbumsImages(image: "fall03"),
    AlbumsImages(image: "placebo01"),
    AlbumsImages(image: "placebo02"),
    AlbumsImages(image: "birdy"),
    AlbumsImages(image: "meg")
]

struct Categories: Hashable, Identifiable {
    
    let id = UUID()
    let category: String
    let icon: String
}

   var categories = [
    Categories(category: "Плейлисты", icon: "music.note.list"),
    Categories(category: "Артисты", icon: "music.mic"),
    Categories(category: "Альбомы", icon: "rectangle.stack"),
    Categories(category: "Песни", icon: "music.note"),
    Categories(category: "Телешоу и фильмы", icon: "tv"),
    Categories(category: "Видеоклипы", icon: "music.note.tv"),
    Categories(category: "Жанры", icon: "guitars"),
    Categories(category: "Сборники", icon: "person.2.crop.square.stack"),
    Categories(category: "Авторы", icon: "music.quarternote.3"),
    Categories(category: "Загружено", icon: "arrow.down.circle"),
    Categories(category: "Домашняя коллекция", icon: "music.note.house")
]

