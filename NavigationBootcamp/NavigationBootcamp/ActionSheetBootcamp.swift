//
//  ActionSheetBootcamp.swift
//  NavigationBootcamp
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Click Me") {
            showActionSheet.toggle()
        }
        
        .confirmationDialog("Server Error", isPresented: $showActionSheet, titleVisibility: .visible) {
            
            Button("Done", role: .none) {
                
            }
            
            Button("Delete", role: .destructive) {
                // Action for delete
                print("Delete button pressed")
            }
            
            Button("Cancel", role: .cancel) {
                // Action for cancel
                print("OK button pressed")
            }
        } message: {
            Text("This is an error message body from the backend")
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
