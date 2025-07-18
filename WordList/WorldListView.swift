//
//  WorldListView.swift
//  WordList
//
//  Created by maho hayashi on 2025/07/18.
//

import SwiftUI
import SwiftData

struct WorldListView: View {
    @Environment(\.modelContext) var context
    @Query var words: [Word]
    
    var body: some View {
        List{
            if words.isEmpty {
                Text("登録されている単語がありません")
            }
            
            ForEach(words) { word in
                HStack{
                    Text(word.english)
                    Spacer()
                    Text(word.japanese)
                }
            }
        }
        .navigationTitle("単語一覧")
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                NavigationLink{ AddWordView()
                }label:{
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    WorldListView()
        .modelContainer(wordContainer)
}
