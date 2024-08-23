//
//  ListItemsBootcamps.swift
//  NavigationBootcamp
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct ListItemsBootcamps: View {
    
    @State var fruits: [String] = [
        "Apple",
        "Orange",
        "Banana",
        "Peach"
    ]
    
    @State var veggies: [String] = [
        "tomato",
        "potato",
        "carrot",
        "beans"
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text("\(fruit)")
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame")
                        
                    }
                    .foregroundStyle(.orange)
                    .font(.title3)
                    .bold()
                }
               
                
                Section {
                    ForEach(veggies, id: \.self) { vegetable in
                        Text("\(vegetable.capitalized)")
                    }
                } header: {
                    Text("Vegetables")
                }
            }
           // .listStyle(.grouped)
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    
    func add() {
        fruits.append("coconut")
    }
}

#Preview {
    ListItemsBootcamps()
}
