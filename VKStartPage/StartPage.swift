//
//  StartPage.swift
//  VKStartPage
//
//  Created by emil kurbanov on 01.11.2021.
//

import SwiftUI

struct StartPage: View {
   
    
    @State var selected = 0
    var body: some View {
        
        VStack {
            
            Spacer()
            
    ZStack{
        
        HStack{
            Button(action: {
                self.selected = 0
            })
            {
                Image(systemName: "magnifyingglass").font(.system(size: 16, weight: .regular))
                
            }
            .foregroundColor(self.selected == 0 ? .pink : .white )
                
                
            Spacer(minLength: 30)
            
            Button(action: {
                self.selected = 1
            })
            {
                Image(systemName: "person")
            }.foregroundColor(self.selected == 1 ? .pink : .white)
            
            Spacer(minLength: 30)
            
            Button(action: {
                self.selected = 2
            })
            {
                Image(systemName: "person.3").font(.system(size: 16, weight: .regular))
            }.foregroundColor(self.selected == 2 ? .pink : .white)
            Spacer(minLength: 12)
        }.padding(.leading, 80)
            .padding(.vertical, 400)
    }
        }.background(Color.cyan)
    }
}
struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
