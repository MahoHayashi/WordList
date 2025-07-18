//
//  AddWordView.swift
//  WordList
//
//  Created by maho hayashi on 2025/07/18.
//

import SwiftUI
import SwiftData

struct AddWordView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    @State var english = ""
    @State var japanese = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack(spacing: 16){
            Spacer()
            
            TextField("英単語", text: $english)
                .textFieldStyle(.roundedBorder)
            TextField("意味", text: $japanese)
                .textFieldStyle(.roundedBorder)
            
            Button{
                save()
            }label:{
                Text("保存")
            }
            .font(.title)
            .foregroundColor(.white)
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .clipShape(.capsule)
            
            Spacer()
                
        }
        .padding()
        .alert("両方の欄に入力してください", isPresented: $showAlert){
            Button("OK", role: .cancel) { }
        }
    }
    func save() {
        if english.isEmpty || japanese.isEmpty {
            showAlert = true
            return
        }
        let word = Word(english: english, japanese: japanese)
        context.insert(word)
        dismiss()
        
    }
}

#Preview {
    AddWordView()
}
