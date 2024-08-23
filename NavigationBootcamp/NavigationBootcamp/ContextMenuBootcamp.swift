//
//  ContextMenuBootcamp.swift
//  NavigationBootcamp
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.purple
    
    var body: some View {
        
        VStackLayout(alignment: .leading, spacing: 10 ) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftFul Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
                
            
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30.0)
        
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .brown
            }, label: {
                HStack {
                    Text("Like post 3")
                    Image(systemName: "heart.fill")
                }
                
            })
            
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
