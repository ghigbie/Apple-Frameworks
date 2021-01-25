//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/24/21.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.colorScheme) var colorScheme
    var framework: Framework = MockData.sampleFramework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(){
                    print("Close \(framework.name)")
                }label: {
                    Image(systemName:"xmark")
                }
                .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Spacer()
            Text(framework.description)
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
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
           // .preferredColorScheme(.dark)
    }
}
