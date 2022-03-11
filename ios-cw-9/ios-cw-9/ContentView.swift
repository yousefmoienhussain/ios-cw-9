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
            Color(#colorLiteral(red: 0.6411222816, green: 0.8151980042, blue: 0.8953691125, alpha: 1))
                .ignoresSafeArea()
            VStack{
                Text("حاسبة الدرجات")
                    .bold()
                    .font(.largeTitle)
                Image("cal")
                    .resizable()
                    .scaledToFit()
                    .padding()
                TextField("ادخل درجتك", text: $enterGrade)
                    .padding()
                    .background(.white)
                    .foregroundColor(.black)
                    .padding()
                
                Text("احسب درجتي")
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.07661154121, green: 0.1822937131, blue: 0.2113724947, alpha: 1)))
                    .padding()
                    .background(Color(#colorLiteral(red: 0.975943625, green: 0.7875768542, blue: 0, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .onTapGesture {
                        // enter the code here  اكتب الكود هنا
                        // if statement
                        // here يجب أن تتغير الصورة على حسب الدرجة
                        // image : الصور موجودة في assets
                        
                    }
                
                Text("لقد حصلت على درجة")
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.07661154121, green: 0.1822937131, blue: 0.2113724947, alpha: 1)))
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
