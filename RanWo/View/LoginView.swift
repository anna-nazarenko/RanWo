//
//  LoginView.swift
//  RanWo
//
//  Created by Anna on 10.11.2021.
//

import SwiftUI
import Firebase

struct LoginView: View {
  @State var email: String = ""
  @State var password: String = ""
  
  var body: some View {
    NavigationView {
      ZStack(alignment: .top) {
        Color("BackgroundColor-2")
          .edgesIgnoringSafeArea(.all)
        
        VStack {
          TextField("Email", text: $email)
            .padding(.horizontal , 15)
            .frame(height: 40)
            .background(Color(red: 1.00, green: 0.95, blue: 0.74, opacity: 0.15))
            .cornerRadius(5)
            .font(Font.system(size: 25, weight: .bold))
          
          SecureField("Password", text: $password)
            .padding(.horizontal , 15)
            .frame(height: 40)
            .background(Color(red: 1.00, green: 0.95, blue: 0.74, opacity: 0.15))
            .cornerRadius(5)
            .font(Font.system(size: 25, weight: .bold))
          
          Button("Sign in") {
            login()
          }
          .frame(width: 250, height: 45, alignment: .center)
          .background(Color("WordsColor-2"))
          .foregroundColor(Color("BackgroundColor-2"))
          .cornerRadius(20)
          .font(Font.system(size: 30, weight: .bold))
          .padding()
        }
        .padding()
      }
    }
  }
}

// MARK: - Action

extension LoginView {
  func login() {
    Auth.auth().signIn(withEmail: email, password: password) { result, error in
      if error != nil {
        print(error?.localizedDescription ?? "")
      } else {
        print("Success")
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
