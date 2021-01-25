//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/24/21.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework = MockData.sampleFramework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Spacer()
            Text(framework.description)
                .padding()
            Spacer()
            Button{
                print("Do someting \(framework.name)")
            }label: {
                PrimaryButton(
                    title: "Learn More",
                    textColor: .white,
                    backgroundColor: .red
                )
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .
    }
}
