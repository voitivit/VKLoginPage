//
//  ContentView.swift
//  VKStartPage
//
//  Created by emil kurbanov on 21.10.2021.
//

import SwiftUI
import Combine


struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    
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
                   
                       
                        Button(action: {
                            print("Вы вошли")
                        }, label: {
                            Text("Войти")
                                .frame(width: 100, height: 25, alignment: .center)
                                .background()
                                .colorMultiply(.blue)
                             
                        })
                            .padding(50)
                            .accentColor(.pink)
                            //.disabled(self.login.isEmpty || self.password.isEmpty)
                            Spacer()
                  
                  Button(action: {
                      print("Регистрируемся")
                  }, label: {
                      Text("Забыли пароль?")
                  })
                  Spacer()
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: 250)
                .padding()
          }
            //Лучше картинки так не размещать, а использовать Geometry
                       //.background(Image("theme"))
        
        }
    }
}



    
 




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

