//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/24/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(){
                    isShowingDetailView.toggle()
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
                isShowingSafariView = true
            }label: {
                PrimaryButton(
                    title: "Learn More",
                    textColor: .white,
                    backgroundColor: .red
                )
            }//button
        
        } //vstack
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(
            framework: MockData.sampleFramework,
            isShowingDetailView: .constant(false)
        )
            .preferredColorScheme(.dark)
    }
}
