//
//  LearnMoreButton.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/24/21.
//

import SwiftUI

struct PrimaryButton: View {
    var title: String
    var textColor: Color = .white
    var backgroundColor: Color = .red
    
    var body: some View {
        Text(title)
            .font(.system(size: 22, weight: .bold, design: .default))
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(12)
    }
}

struct LearnMoreButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "moo moo")
    }
}
