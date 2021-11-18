//
//  AddNewWordView.swift
//  RanWo
//
//  Created by Anna on 05.11.2021.
//

import SwiftUI

struct AddNewWordView: View {
  @EnvironmentObject var wordDB: WordDB
  @State var newWord: String = ""
  @State var translation: String = ""
  @Binding var newWordFormIsPresented: Bool
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Word")) {
          TextField("Enter new word", text: $newWord)
        }
        
        Section(header: Text("Translation *")) {
          TextField("Enter translation (not necessary)", text: $translation)
        }
      }
      .navigationTitle("Adding new word")
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button("Cancel") { newWordFormIsPresented.toggle() }
        }
        
        ToolbarItem(placement: .navigationBarTrailing) {
          Button("Add") {
            wordDB.saveWord(newWord)
            newWordFormIsPresented.toggle()
          }
        }
      }
    }
  }
}

struct AddNewWordView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      AddNewWordView(newWordFormIsPresented: .constant(true))
      AddNewWordView(newWordFormIsPresented: .constant(false))
    }
    .environmentObject(WordDB())
  }
}
