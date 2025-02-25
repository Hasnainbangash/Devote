//
//  NewTaskItemView.swift
//  Devote
//
//  Created by Elexoft on 25/02/2025.
//

import SwiftUI

struct NewTaskItemView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.managedObjectContext) private var viewContext
    @State var task: String = ""
    
    private var isButtonDisabled: Bool {
        return task.isEmpty
    }
    
    // MARK: - FUNCTION
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = task
            newItem.completion = false
            newItem.id = UUID()
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
            
            task = ""
            hideKeyboard()
        }
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                TextField("New Task", text: $task)
                    .foregroundColor(.pink)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .padding()
                    .background(
                        Color(UIColor.systemGray6)
                    )
                    .cornerRadius(10)
                
                Button(action: {
                    addItem()
                }, label: {
                    Spacer()
                    Text("SAVE")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                })
                .disabled(isButtonDisabled)
                .padding()
                .foregroundColor(.white)
                .background(isButtonDisabled ? Color.blue : Color.pink)
                .cornerRadius(10)
            } //: VSTACK
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(
                Color.white
            )
            .cornerRadius(16)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.65), radius: 24)
            .frame(maxWidth: 640)
        } //: VSTACK
        .padding()
    }
}

// MARK: - PREVIEW

#Preview {
    NewTaskItemView()
        .background(Color.gray.edgesIgnoringSafeArea(.all))
}
