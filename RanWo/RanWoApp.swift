//
//  RanWoApp.swift
//  RanWo
//
//  Created by Anna Nazarenko on 17.09.2021.
//

import SwiftUI
import Firebase

@main
struct RanWoApp: App {
  @StateObject var wordDB = WordDB()
  
  init() {
    FirebaseApp.configure()
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(wordDB)
    }
  }
}
