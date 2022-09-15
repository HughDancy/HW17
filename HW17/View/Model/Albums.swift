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
       Album(artist: "Twenty One Pilots", name: "Scaled And Icy", image: "scaledAndIcy"),
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

struct Song: Hashable {
    var artist: String
    var album: String
    var name: String
    var image: String
}

class Songs: ObservableObject {
    @Published var songs = [
    Song(artist: "Slipknot", album: "All Hope Is Gone", name: "Gematria (The Killing Name)", image: "ahig"),
    Song(artist: "Slipknot", album: "All Hope Is Gone", name: "Sulfur", image: "ahig"),
    Song(artist: "Slipknot", album: "All Hope Is Gone", name: "Psychosocial ", image: "ahig"),
    Song(artist: "Slipknot", album: "All Hope Is Gone", name: "Dead Memories", image: "ahig"),
    Song(artist: "Slipknot", album: "All Hope Is Gone", name: "This Cold Black", image: "ahig"),
    Song(artist: "Slipknot", album: "Slipknot", name: "Eyeless", image: "slipknot"),
    Song(artist: "Slipknot", album: "Slipknot", name: "Wait And Bleed", image: "slipknot"),
    Song(artist: "Slipknot", album: "Slipknot", name: "Surfacing", image: "slipknot"),
    Song(artist: "Slipknot", album: "Slipknot", name: "Spit It Out", image: "slipknot"),
    Song(artist: "Slipknot", album: "Slipknot", name: "Liberate", image: "slipknot"),
    Song(artist: "Architects", album: "For Those That Wish to Exist", name: "Meteor", image: "Architects"),
    Song(artist: "Architects", album: "For Those That Wish to Exist", name: "Animals", image: "Architects"),
    Song(artist: "Architects", album: "For Those That Wish to Exist", name: "Black Lungs", image: "Architects"),
    Song(artist: "Architects", album: "For Those That Wish to Exist", name: "Dead Butterflies", image: "Architects"),
    Song(artist: "Bad Omens", album: "The Death of Peace of Mind", name: "The Death of Peace of Mind", image: "badOmens"),
    Song(artist: "Bad Omens", album: "The Death of Peace of Mind", name: "Artificial Suicide", image: "badOmens"),
    Song(artist: "Low Roar", album: "Death Stranding OST", name: "Don't Be So Serios", image: "DeathStranding"),
    Song(artist: "Silent Poets feat. Leila Adu", album: "Death Stranding OST", name: "Asylums for the Feeling ", image: "DeathStranding"),
    Song(artist: "Low Roar", album: "Death Stranding OST", name: "I'll Keep Coming", image: "DeathStranding"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "Papercut", image: "hybridTheory"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "One Step Closer", image: "hybridTheory"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "With You", image: "hybridTheory"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "Points of Authority", image: "hybridTheory"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "Runaway", image: "hybridTheory"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "By Myself", image: "hybridTheory"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "Forgotten", image: "hybridTheory"),
    Song(artist: "Linkin Park", album: "Hybrid Theory", name: "Pushing Me Away", image: "hybridTheory"),
    Song(artist: "Marilyn Manson", album: "Holy Wood", name: "The Fight Song", image: "marilyn"),
    Song(artist: "Maybeshewill", album: "I Was Here for a Moment, Then I Was Gone", name: "Words For Arabella", image: "maybe01"),
    Song(artist: "Maybeshewill", album: "Fair Youth", name: "In Amber", image: "maybe02"),
    Song(artist: "Maybeshewill", album: "Fair Youth", name: "You And Me And Everything In Between", image: "maybe02"),
    Song(artist: "Maybeshewill", album: "Fair Youth", name: "Fair Youth", image: "maybe02"),
    Song(artist: "Maybeshewill", album: "Fair Youth", name: "In The Blind", image: "maybe02"),
    Song(artist: "Nirvana", album: "Nevermind", name: "Smells Like A Teen Spirit", image: "nevermind"),
    Song(artist: "Nirvana", album: "Nevermind", name: "Come As You Are", image: "nevermind"),
    Song(artist: "Nirvana", album: "Nevermind", name: "Lithium", image: "nevermind"),
    Song(artist: "Nirvana", album: "Nevermind", name: "Polly", image: "nevermind"),
    Song(artist: "Nirvana", album: "Nevermind", name: "Something In The Way", image: "nevermind"),
    Song(artist: "Nirvana", album: "In Utero", name: "Heart-Shaped Box", image: "Nirvana"),
    Song(artist: "Nirvana", album: "In Utero", name: "Rape Me", image: "Nirvana"),
    Song(artist: "Nirvana", album: "In Utero", name: "Frances Farmer Will Have Her Revenge On Seattle", image: "Nirvana"),
    Song(artist: "Nirvana", album: "In Utero", name: "Pennyroyal Tea", image: "Nirvana"),
    Song(artist: "Twenty One Pilots", album: "Scaled And Icy", name: "Choker", image: "scaledAndIcy"),
    Song(artist: "Twenty One Pilots", album: "Scaled And Icy", name: "No Chances", image: "scaledAndIcy"),
    Song(artist: "Twenty One Pilots", album: "Scaled And Icy", name: "Redecorate", image: "scaledAndIcy"),
    Song(artist: "Twenty One Pilots", album: "Scaled And Icy", name: "Shy Away", image: "scaledAndIcy"),
    Song(artist: "Twenty One Pilots", album: "Trench", name: "Jumpsuit", image: "trench"),
    Song(artist: "Twenty One Pilots", album: "Trench", name: "My Blood", image: "trench"),
    Song(artist: "Twenty One Pilots", album: "Trench", name: "Chlorine", image: "trench"),
    Song(artist: "Twenty One Pilots", album: "Trench", name: "Neon Gravestones", image: "trench"),
    Song(artist: "Twenty One Pilots", album: "Trench", name: "Nico And The Niners", image: "trench"),
    Song(artist: "Twenty One Pilots", album: "Trench", name: "Bandito", image: "trench"),
    Song(artist: "ATL", album: "Радио Апокалипсис", name: "На щите", image: "youth"),
    Song(artist: "Bring Me The Horizon", album: "There Is a Hell, Believe Me I’ve Seen It. There Is a Heaven, Let’s Keep It a Secret", name: "Crucify Me", image: "bring01"),
    Song(artist: "Bring Me The Horizon", album: "There Is a Hell, Believe Me I’ve Seen It. There Is a Heaven, Let’s Keep It a Secret", name: "Anthem", image: "bring01"),
    Song(artist: "Bring Me The Horizon", album: "There Is a Hell, Believe Me I’ve Seen It. There Is a Heaven, Let’s Keep It a Secret", name: "Aligator Blood", image: "bring01"),
    Song(artist: "Bring Me The Horizon", album: "There Is a Hell, Believe Me I’ve Seen It. There Is a Heaven, Let’s Keep It a Secret", name: "Visions", image: "bring01"),
    Song(artist: "Bring Me The Horizon", album: "There Is a Hell, Believe Me I’ve Seen It. There Is a Heaven, Let’s Keep It a Secret", name: "Memorial", image: "bring01"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Can Tou Fill My Heart", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Sleepwalking", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Empire (Let Them Sing)", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Go To Hell For Heaven's Sake", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Shadow Moses", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Antivist", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Hospital For Souls", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Sempiternal", name: "Deathbeds", image: "bring02"),
    Song(artist: "Bring Me The Horizon", album: "Post Human: Survival Horror", name: "Dear Dairy,", image: "bring03"),
    Song(artist: "Bring Me The Horizon", album: "Post Human: Survival Horror", name: "Parasite Eve", image: "bring03"),
    Song(artist: "Bring Me The Horizon", album: "Post Human: Survival Horror", name: "Obey", image: "bring03"),
    Song(artist: "Bring Me The Horizon", album: "Post Human: Survival Horror", name: "Kingslayer", image: "bring03"),
    Song(artist: "Bring Me The Horizon", album: "Post Human: Survival Horror", name: "Ludens", image: "bring03"),
    Song(artist: "Falling In Reverse", album: "Losing My Life", name: "Losing My Life", image: "fall01"),
    Song(artist: "Falling In Reverse", album: "Popular Monster", name: "Popular Monster", image: "fall02"),
    Song(artist: "Falling In Reverse", album: "Drugs", name: "Drugs", image: "fall03"),
    Song(artist: "Placebo", album: "Placebo", name: "I Know", image: "placebo01"),
    Song(artist: "Placebo", album: "Placebo", name: "Nancy Boy", image: "placebo01"),
    Song(artist: "Placebo", album: "Never Let Me Go", name: "Beautiful James", image: "placebo02"),
    Song(artist: "Placebo", album: "Never Let Me Go", name: "Try Better Next Time", image: "placebo02"),
    Song(artist: "Placebo", album: "Never Let Me Go", name: "Surrounded By Spies", image: "placebo02"),
    Song(artist: "Birdy", album: "Fire Within", name: "Wings", image: "birdy"),
    Song(artist: "Birdy", album: "Fire Within", name: "Heart Of Gold", image: "birdy"),
    Song(artist: "Birdy", album: "Fire Within", name: "Strange Birds", image: "birdy"),
    Song(artist: "Meg Myers", album: "Take Me To The Disco", name: "Numb", image: "meg"),
    Song(artist: "Meg Myers", album: "Take Me To The Disco", name: "Done", image: "meg"),
    ]
}


