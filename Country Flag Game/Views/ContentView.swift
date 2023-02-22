//
//  ContentView.swift
//  Country Flag Game
//
//  Created by Dylan Koehler on 1/17/23.
//
//Merged into Main

import SwiftUI

struct ContentView: View {
    @State private var quizManager = QuizManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Country Flag Game")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.yellow)
                    Text("Ready to test your skills?")
                        .foregroundColor(.yellow)
                }
                NavigationLink {
                    QuestionView()
                        .environmentObject(quizManager)
                } label: {
                    CustomButton(text: "Start")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all)
            .background(.cyan)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
