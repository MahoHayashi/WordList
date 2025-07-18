//
//  Word.swift
//  WordList
//
//  Created by maho hayashi on 2025/07/18.
//

import SwiftData

@Model
class Word {
    var english: String
    var japanese: String
    
    init(english: String, japanese: String) {
        self.english = english
        self.japanese = japanese
    }
}
