//
//  Word.swift
//  Werdd
//
//  Created by Eric Tu on 3/22/22.
//

import Foundation

class Word {
    
    var name : String
    var definition : String
    var partOfSpeech : String
    
    init(wordName : String, definition : String, partOfSpeech: String) {
        name = wordName
        self.definition = definition
        self.partOfSpeech = partOfSpeech
    }
}
