//
//  ContentView.swift
//  RanWo
//
//  Created by Anna Nazarenko on 17.09.2021.
//

import SwiftUI

struct ContentView: View {
  var letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  @State private var selectedLetter = "A"
  @State var word: String = "Hello!"
  
  var body: some View {
    NavigationView {
      ZStack {
        Color("BackgroundColor-2")
          .edgesIgnoringSafeArea(.all)
        VStack {
          
          Spacer()
          
          Text(word.uppercased())
            .font(Font.custom("HelveticaNeue-UltraLight", size: 40))
            .fontWeight(.bold)
            .foregroundColor(Color("WordsColor-2"))
            .padding()
          
          Spacer()
          
          Button(action: {
            let letter = $selectedLetter.wrappedValue
            if let randomWord = oldWords[letter]?.randomElement() {
              word = randomWord
            }
          }) {
            Image(systemName: "arrow.clockwise.circle.fill")
              .resizable()
              .frame(width: 65, height: 65)
              .foregroundColor(Color("CheckmarkColor-2"))
          }

          Spacer()
          
          Picker("Choose a letter", selection: $selectedLetter) {
            ForEach(letters, id: \.self) {
              Text($0)
                .foregroundColor(Color("WordsColor-2"))
                .font(.system(size: 25))
            }
          }
          .pickerStyle(.wheel)
          
          HStack {
            NavigationLink(destination: LoginView()) {
              Image(systemName: "person.fill")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(Color("CheckmarkColor-2"))
            }
            
            Spacer()
            
            NavigationLink(destination: WordListView()) {
              Image(systemName: "list.bullet")
                .resizable()
                .frame(width: 30, height: 25)
                .foregroundColor(Color("CheckmarkColor-2"))
            }
          }
          .padding(.horizontal, 45.0)
          .padding(.vertical, 25)
          
        }
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
