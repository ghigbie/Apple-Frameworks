//
//  FrameworkListTitleView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/31/21.
//

import SwiftUI

struct FrameworkListTitleView: View {
    var framework: Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
                
            Text(framework.name)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }//vstack
        
    }
}

struct FrameworkListTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListTitleView(framework: MockData.sampleFramework)
    }
}
