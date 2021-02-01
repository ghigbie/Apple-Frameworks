//
//  FrameworkListDetail.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/31/21.
//

import SwiftUI

struct FrameworkListDetail: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            Spacer()
            
            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
                PrimaryButton(
                    title: "Learn More",
                    textColor: .white,
                    backgroundColor: .red
                )
            }//button
        
        } //vstack
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListDetail(
            framework: MockData.sampleFramework,
            isShowingDetailView: .constant(false)
        )
            .preferredColorScheme(.dark)
    }
}

