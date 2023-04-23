//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Dylan Kim on 2023/04/23.
//

import SwiftUI

struct ToDoListView: View {
    @State private var sheetIsPresented = false
    var toDos = ["Learn Swift",
                 "Build Apps",
                 "Change the World",
                 "Bring the Awesome",
                 "Take a  Vacation"]
    var body: some View {
        NavigationStack{
            List{
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailedView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                    .font(.title2)
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            .sheet(isPresented: $sheetIsPresented) {
                DetailedView(passedValue: "")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
