//
//  DetailedView.swift
//  ToDoList
//
//  Created by Dylan Kim on 2023/04/23.
//

import SwiftUI

struct DetailedView: View {
    @Environment(\.dismiss) private var dismiss
    
    var passedValue: String
    
    var body: some View {
        VStack{
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
            
            Text("You Are a Swifty Legend!\n And you passed over the value \(passedValue )")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back"){
                dismiss() 
            }
            
            
        }
        .padding()
     }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(passedValue: "1")
    }
}
