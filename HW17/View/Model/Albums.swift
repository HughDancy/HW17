//
//  Albums.swift
//  HW17
//
//  Created by Борис Киселев on 14.09.2022.
//

import Foundation

struct Album: Hashable {
    var artist: String
    var name: String
    var image: String
}

class Albums: ObservableObject {
    
    @Published var albums = [
       Album(artist: "Slipknot", name: "All Hope Is Gone", image: "ahig"),
       Album(artist: "Slipknot", name: "Slipknot", image: "slipknot"),
       Album(artist: "Architects", name: "For Those That Wish to Exist", image: "Architects"),
       Album(artist: "Bad Omens", name: "The Death of Peace of Mind", image: "badOmens"),
       Album(artist: "Mondo", name: "Death Stranding", image: "DeathStranding"),
       Album(artist: "Linkin Park", name: "Hybrid Theory", image: "hybridTheory"),
       Album(artist: "Marilyn Manson", name: "Holy Wood", image: "marilyn"),
       Album(artist: "Maybeshewill", name: "I Was Here for a Moment, Then I Was Gone", image: "maybe01"),
       Album(artist: "Maybeshewill", name: "Fair Youth", image: "maybe02"),
       Album(artist: "Nirvana", name: "Nevermind", image: "nevermind"),
       Album(artist: "Nirvana", name: "In Utero", image: "Nirvana"),
       Album(artist: "Twenty One Pilots", name: "Sczled And Icy", image: "scaledAndIcy"),
       Album(artist: "Twenty One Pilots", name: "Trench", image: "trench"),
       Album(artist: "ATL", name: "Радио Апокалипсис", image: "youth"),
       Album(artist: "Bring Me The Horizon", name: "There Is a Hell, Believe Me I’ve Seen It. There Is a Heaven, Let’s Keep It a Secret", image: "bring01"),
       Album(artist: "Bring Me The Horizon", name: "Sempiternal", image: "bring02"),
       Album(artist: "Bring Me The Horizon", name: "Post Human: Survival Horror", image: "bring03"),
       Album(artist: "Falling In Reverse", name: "Losing My Life", image: "fall01"),
       Album(artist: "Falling In Reverse", name: "Popular Monster", image: "fall02"),
       Album(artist: "Falling In Reverse", name: "Drugs", image: "fall03"),
       Album(artist: "Placebo", name: "Placebo", image: "placebo01"),
       Album(artist: "Placebo", name: "Never Let Me Go", image: "placebo02"),
       Album(artist: "Birdy", name: "Fire Within", image: "birdy"),
       Album(artist: "Meg Myers", name: "Take Me To The Disco", image: "meg")
    ]
    
}
