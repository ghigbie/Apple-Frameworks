//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/31/21.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button(){
                isShowingDetailView.toggle()
            }label: {
                Image(systemName:"xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }//hstack
            .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
