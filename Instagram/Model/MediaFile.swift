//
//  MediaFile.swift
//  Instagram
//
//  Created by apple on 21/1/2023.
//

import Foundation

struct MediaFile: Identifiable{
    var id = UUID().uuidString;
    var url: String;
    var title: String;
    var isExpanded: Bool = false;
}

var MediaFileJSON = [
    MediaFile(url: "reel_1", title: "The Special One"),
    MediaFile(url: "reel_2", title: "David Guiraud explose le RN à l_Assemblée"),
    MediaFile(url: "reel_3", title: "🤯 L'un des meilleurs steak frites, mais qu'en est-il de Gordon Ramsay ?"),
    MediaFile(url: "reel_4", title: "oh poop"),
]
