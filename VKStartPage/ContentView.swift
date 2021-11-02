//
//  ContentView.swift
//  VKStartPage
//
//  Created by emil kurbanov on 21.10.2021.
//

import SwiftUI

struct ContainerView: View {
    @State private var shouldShowMainView: Bool = false
    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLoginIn: $shouldShowMainView)
                NavigationLink(destination: StartPage(), isActive: $shouldShowMainView) {
                    EmptyView()
                }
            }
        }
    }
    
    
    
    
    
    
//    var body: some View {
//        NavigationView {
//            HStack {
//                LoginView(isUserLoginIn: $shouldShowMainView)
//                NavigationLink(destination: FotoFriends(), isActive: $shouldShowMainView) {
//                    EmptyView()
//                }
//            }
//        }
//    }
}
//
//struct ContentView: View {
//
//
//    var body: some View {
//        ZStack {
//            GeometryReader{ geom in
//                Image("theme")
//                    .resizable()
//                    .scaledToFill()
//                    .ignoresSafeArea(.all)
//                    .frame(width: geom.size.width, height: geom.size.height)
//
//            }
//            ScrollView{ VStack {
//                Text("ЧАТ")
//                    .lineLimit(2)
//                    .modifier(FrameChangedModifier(widthNew: 100, heightNew: 100))
//                    .font(.largeTitle)
//                    .foregroundColor(Color.mint)
//            HStack{
//
//                ChatImage{
//                    Image("ava1" )
//                }
//                Text("Фредди Меркури")
//                    .foregroundColor(Color.white)
//                    .padding(.leading)
//                    .lineLimit(2)
//                Spacer(minLength: 80.0)
//                Image("message")
//                    .resizable()
//                    .padding(.trailing, 5.0)
//                    .modifier(CircleImageModifier(color: .pink))
//                    .frame(width: 50, height: 50)
//                Spacer()
//
//            }
//                Text("В сети")
//                    .foregroundColor(Color.green)
//                    .padding(-45)
//
//            HStack {
//                ChatImage{
//                    Image("ava2")
//                }
//
//                Text("Дзюба")
//                    .foregroundColor(Color.white)
//                    .padding(.leading)
//                Spacer(minLength: 100.0)
//                Image("message")
//                    .resizable()
//                    .padding(.trailing, 5.0)
//                    .modifier(CircleImageModifier(color: .gray))
//                    .frame(width: 50, height: 50)
//                Spacer()
//            }
//                Text("Не в сети")
//                    .foregroundColor(Color.red)
//                    .padding(-45)
//                    //.fixedSize(horizontal: false, vertical: true)
//            HStack{
//                ChatImage{
//                    Image("ava3")
//                }
//                Text("Леонель Месси")
//                    .foregroundColor(Color.white)
//                    .padding(.leading)
//                .lineLimit(2)
//                Spacer(minLength: 20.0)
//                Image("message")
//                    .resizable()
//                    .padding(.trailing, 5.0)
//                    .modifier(CircleImageModifier(color: .pink))
//                    .frame(width: 50, height: 50)
//                Spacer()
//            }
//                Text("В сети")
//                    .foregroundColor(Color.green)
//                    .padding(-45)
//            }
//        }
//        }.debug()
//}
//}
//
////MARK: Modifier:
//struct CircleImageModifier: ViewModifier {
//    let color: Color
//
//    func body(content: Content) -> some View {
//        content
//            .background (
//            Circle()
//            .fill(color)
//            .frame(width: 60, height:60 )
//            )
//
//
//    }
//}
//
//struct FrameChangedModifier: ViewModifier {
//
//    let widthNew: CGFloat
//    let heightNew: CGFloat
//
//    func body(content: Content) -> some View {
//        content
//            .frame(width: widthNew, height: heightNew)
//    }
//}
//
//// MARK: ViewBuilder
//struct ChatImage: View {
//    var content: Image
//    init(@ViewBuilder content: () -> Image) {
//           self.content = content()
//       }
//    var body: some View{
//        content
//            .resizable()
//            .modifier(FrameChangedModifier(widthNew: 100, heightNew: 100))
//            .padding()
//
//    }
//
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//extension View {
//    func debug() -> Self {
//        print(Mirror(reflecting: self).subjectType)
//        return self
//    }
//}

//
//
//
//struct CitcleShadow: ViewModifier {
//    let shadowColors: Color
//    let shadowRadius: CGFloat
//
//    func body(content: Content) -> some View {
//        content.background(Circle()
//                            .fill(Color.white)
//                            .shadow(color: shadowColors, radius: shadowRadius )
//    }
//
//}

// Первый урок:
//struct ContentView: View {
//    @State private var login = ""
//    @State private var password = ""
//
//    var body: some View {
//
//      ZStack {
//            GeometryReader{ geom in
//                Image("theme")
//                    .resizable()
//                    .scaledToFill()
//                    .ignoresSafeArea(.all)
//                    .frame(width: geom.size.width, height: geom.size.height)
//            }
//
//          ScrollView {
//              VStack {
//                    Text("APP")
//                        .padding(.vertical, -140)
//                        .padding(.top, 140)
//                        .foregroundColor(.cyan)
//                        .font(.largeTitle)
//
//                  HStack {
//                      Spacer()
//                        Text ("Login:").foregroundColor(.white)
//                        TextField("Введите логин", text: $login)
//                            .background(Color.blue)
//                            .frame(maxWidth: 150)
//                            .foregroundColor(.blue)
//
//
//                    }
//                    HStack {
//                        Spacer()
//                        Text("Password:").foregroundColor(.white)
//                        SecureField("Введите пароль", text: $password)
//                            .background(Color.green)
//                            .frame(maxWidth: 150)
//
//
//                    }
//
//
//                        Button(action: {
//                            print("Вы вошли")
//                        }, label: {
//                            Text("Войти")
//                                .frame(width: 100, height: 25, alignment: .center)
//                                .background()
//                                .colorMultiply(.blue)
//
//                        })
//                            .padding(50)
//                            .accentColor(.pink)
//                            //.disabled(self.login.isEmpty || self.password.isEmpty)
//                            Spacer()
//
//                  Button(action: {
//                      print("Регистрируемся")
//                  }, label: {
//                      Text("Забыли пароль?")
//                  })
//                  Spacer()
//                }
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .frame(maxWidth: 250)
//                .padding()
//          }
//            //Лучше картинки так не размещать, а использовать Geometry
//                       //.background(Image("theme"))
//
//        }
//    }
//}
//
