//
//  ContentView.swift
//  NavigationBootcamp
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct Navigations: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Helllo, World!!!") {
                    AlertsBootcamp()
                }
                Text("Hello, Word!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.toolbar(.hidden, for: .navigationBar)
            .navigationBarItems(
                leading: 
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                    
                trailing: NavigationLink(
                    destination: SecondScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                .tint(.red)
            )
        }
    }
}

#Preview {
    Navigations()
}


struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen!!!")
                //.toolbar(.hidden, for: .navigationBar)
                
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here") {
                    Text("Third screen")
                }
            }
        }
    }
}
