//
//  ContentView.swift
//  SecondLogin
//
//  Created by Muralidhar reddy Kakanuru on 12/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Career")
                .foregroundColor(Color.red)
                .font(.largeTitle)
                .bold(true)
            Image("login")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .padding(.bottom, -30)
            Text("Login to Post a Job")
                .fontWeight(.bold)
                .font(.system(size: 24))
                .padding(.bottom, 20)
            InputField(icon: "download", placeholder: "Continue with FaceBook")
            InputField(icon: "google", placeholder: "Continue with Google")
            InputField(icon: "apple", placeholder: "Continue with Apple")
            InputField(icon: "email", placeholder: "Continue with Email")
            Text("Don't have an account to Post a Job?")
                .foregroundColor(Color.red)
                .padding(.top, 10)
            Text("By Loggining in I agree to the terms and Conditions")
                .font(.system(size: 15))
                .foregroundColor(Color.gray)
            
            
        }
        .padding()
    }
}

struct InputField: View {
    var icon: String
    var placeholder: String
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(width: 300, height: 50)
                .foregroundColor(Color.white)
                .border(Color.gray, width: 2)
                .padding()
            HStack(spacing:(10)){
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                    .padding(.leading, 20)
                Text(placeholder)
                    .foregroundColor(Color.gray)
            }
        }
        .padding(.top, -20)
    }
}

#Preview {
    ContentView()
}
