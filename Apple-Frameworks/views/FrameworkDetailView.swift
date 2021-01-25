//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/24/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(){
                    print("Close \(framework.name)")
                }label: {
                    Image(systemName:"xmark")
                }
                .foregroundColor(Color(.label))
                .imageScale(.large)
                .frame(width: 44, height: 44)
            }//hstack
                .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
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
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
