//
//  AlertsBootcamp.swift
//  NavigationBootcamp
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            Button("Click Here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
               Alert(title: Text("Server Error"),
                     message: Text("This is an error"),
                     primaryButton: .destructive(Text("Delete"), 
                                                 action: {
               }),
                     secondaryButton: .cancel(Text("Ok"), action: {
               }))
            }
            
           
        }
    }
}

#Preview {
    AlertsBootcamp()
}
