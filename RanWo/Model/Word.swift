//
//  Words.swift
//  RanWo
//
//  Created by Anna Nazarenko on 17.09.2021.
//

import Foundation

struct Word {
  var word: String = ""
  var firstChar: String = ""
}

extension Word {
  init (wordDB: WordDB) {
    word = wordDB.word
    firstChar = wordDB.firstChar
  }
}
