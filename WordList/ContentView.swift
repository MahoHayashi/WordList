//
//  ContentView.swift
//  WordList
//
//  Created by maho hayashi on 2025/07/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 32) {
                Text("My単語帳")
                    .font(.largeTitle)
                
                NavigationLink{
                    QuizView()
                } label:{
                    Text("QUIZ START")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
                
                NavigationLink{
                    WorldListView()
                } label:{
                    Text("単語一覧")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
            }
            .padding(.horizontal, 60)
        }
    }
}

#Preview {
    ContentView()
}
