//
//  WordListView.swift
//  RanWo
//
//  Created by Anna on 23.09.2021.
//

import SwiftUI

struct WordListView: View {
  @EnvironmentObject var wordDB: WordDB
  
  var words = Word()
  
  @State private var newWordFormIsPresented: Bool = false
  @State var newWord: String = ""
  
  var body: some View {
    
    NavigationView {
      VStack {
        VStack (alignment: .leading, spacing: 20) {
          HStack {
            Text("Search")
              .font(.callout)
              .bold()
          }
          
          HStack(alignment: .center, spacing: 10) {
            TextField("Enter word", text: $newWord)
              .textFieldStyle(.roundedBorder)
              .border(.gray)
            
            Button {
              //Add filter
            } label: {
              Image(systemName: "magnifyingglass")
            }
            .foregroundColor(.gray)
          }
        }
        .padding([.leading, .bottom, .trailing])
        
        List {
          Section(header: Text("A")) {
            Text(oldWords["A"]?.randomElement() ?? "")
            Text(oldWords["A"]?.randomElement() ?? "")
          }
          
          Section(header: Text("B")) {
            Text(oldWords["B"]?.randomElement() ?? "")
            Text(oldWords["B"]?.randomElement() ?? "")
          }
        }
      }
    }
    .toolbar {
      ToolbarItem(placement: .navigationBarTrailing) {
        Button {
          self.newWordFormIsPresented.toggle()
        } label: {
          Image(systemName: "plus")
        }
        .sheet(isPresented: $newWordFormIsPresented) {
          AddNewWordView(newWordFormIsPresented: self.$newWordFormIsPresented)
        }
      }
    }
    
  }
}

struct WordListView_Previews: PreviewProvider {
  static var previews: some View {
    WordListView()
      .environmentObject(WordDB())
  }
}
