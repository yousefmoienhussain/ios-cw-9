//
//  ContentView.swift
//  ios-cw-9
//
//  Created by Retaj Al-Otaibi on 09/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var enterGrade = ""
    var body: some View {
        ZStack {
            Color(.black)
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Text("حاسبة الدرجات")
                    .bold()
                    .font(.largeTitle)
                
                TextField("ادخل درجتك", text: $enterGrade)
                    .background(.white)
                    .padding()
                    .foregroundColor(.black)
                
                Text("احسب درجتي")
                    .padding()
                    .background(Color(#colorLiteral(red: 0.2379182279, green: 0.3681719899, blue: 0.7421068549, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .onTapGesture {
                        // enter the code here  اكتب الكود هنا
                        // if statement
                        // here يجب أن تتغير الصورة على حسب الدرجة
                    }
                
                Text("لقد حصلت على درجة")
                    .bold()
                    .font(.title2)
                    .padding()
                Image(grade)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
