//
//  FotoFriends.swift
//  VKStartPage
//
//  Created by emil kurbanov on 31.10.2021.
//

import SwiftUI

struct FotoFriends: View {
    var body: some View {
       
         ZStack {
            VStack {
                    Image("ava1")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.horizontal, -120)
                        .padding(.bottom, 180)
            Text("Иванов Владимир")
                .padding(.vertical, -230)
                .padding(.trailing, -50)
                
                
                
            Image("кот")
                .resizable()
                .frame(width: 150, height: 150)
                .border(Color.black)
                .padding(.vertical, -100)
                .padding(.leading, -150)
            Image("ёжик")
                .resizable()
                .frame(width: 150, height: 150)
                .border(Color.black)
                .padding(.vertical, -106)
                .padding(.leading, 200)
            Image("приведение")
                .resizable()
                .frame(width: 150, height: 150)
                .border(Color.black)
                
                .padding(.vertical, 50)
                .padding(.leading, -150)
                
            }.padding(.bottom, 150)
            
        }.ignoresSafeArea(.all)
    
    
}
}


struct FotoFriends_Previews: PreviewProvider {
    static var previews: some View {
        FotoFriends()
    }
}
