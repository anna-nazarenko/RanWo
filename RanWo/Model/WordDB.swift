//
//  WordDB.swift
//  RanWo
//
//  Created by Anna on 05.11.2021.
//

import Foundation
import Firebase

class WordDB: ObservableObject {
  @Published var word: String = ""
  @Published var firstChar: String = ""
  
  func saveWord(_ newWord: String) {
    var firstCharacter: String { String(newWord[newWord.startIndex]) }
    let db = Firestore.firestore()
    let docRef = db.collection(firstCharacter).document(newWord)
    
    docRef.setData(["word": newWord, "firstChar": firstCharacter]) { error in
      if let error = error {
        print("Error writing document: \(error)")
      } else {
        print("Document successfully written!")
      }
    }
  }
}

