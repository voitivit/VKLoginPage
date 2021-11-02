//
//  LoginView.swift
//  VKStartPage
//
//  Created by emil kurbanov on 01.11.2021.
//

import SwiftUI
import Combine

struct LoginView: View {
   // @State private var shouldShowMainView: Bool = false
    @Binding var isUserLoginIn: Bool
    @State private var showInCorrecentCredentialsWarning = false
    @State private var login = ""
    @State private var password = ""
    func verifyLoginData() {
        if login == "admin" && password == "123" {
      isUserLoginIn = true
        } else {
            showInCorrecentCredentialsWarning = true
           
        }
        password = ""
    }

    var body: some View {

      ZStack {
            GeometryReader{ geom in
                Image("theme")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geom.size.width, height: geom.size.height)
            }

          ScrollView {
              VStack {
                    Text("APP")
                        .padding(.vertical, -140)
                        .padding(.top, 140)
                        .foregroundColor(.cyan)
                        .font(.largeTitle)

                  HStack {
                      Spacer()
                        Text ("Login:").foregroundColor(.white)
                        TextField("Введите логин", text: $login)
                            .background(Color.blue)
                            .frame(maxWidth: 150)
                            .foregroundColor(.blue)


                    }
                    HStack {
                        Spacer()
                        Text("Password:").foregroundColor(.white)
                        SecureField("Введите пароль", text: $password)
                            .background(Color.green)
                            .frame(maxWidth: 150)


                    }

                  Button(action: verifyLoginData) {
                      Text("Войти")
                            .frame(width: 100, height: 25, alignment: .center)
                            .background()
                            .colorMultiply(.blue)
                  }.padding(50)
                      .accentColor(.pink)
                      //.disabled(self.login.isEmpty || self.password.isEmpty)
                      Spacer()
//                        Button(action: verifyLoginData() {
//                            print("Вы вошли")
//                        }, label: {
//                            Text("Войти")
//                                .frame(width: 100, height: 25, alignment: .center)
//                                .background()
//                                .colorMultiply(.blue)
//
//                        })
//

                  Button(action: {
                      print("Регистрируемся")
                  }, label: {
                      Text("Забыли пароль?")
                  })
                  Spacer()
              }.autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: 250)
                .padding()
          }
            //Лучше картинки так не размещать, а использовать Geometry
                       //.background(Image("theme"))

      }.onTapGesture {
          UIApplication.shared.endEditing()
      }.alert(isPresented: $showInCorrecentCredentialsWarning, content: { Alert(title: Text("Ошибка"), message: Text("Введите корректные Логин/Пароль"))
      })
    }
 
}


extension UIApplication {
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isUserLoginIn: .constant(false))
    }
}

