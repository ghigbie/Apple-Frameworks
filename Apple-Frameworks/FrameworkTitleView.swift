//
//  FrameworkView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/22/21.
//

import SwiftUI

struct FrameworkTitleView: View {
    var title: String = "Test Title"
    var imageName: String = "app-clip"
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
                
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .foregroundColor(.white)
        }//vstack
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView().background(Color.black)
    }
}
