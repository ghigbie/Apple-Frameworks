//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/22/21.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in //id is not needed if model conforms to "identifiable" (constrains and gains)
                        FrameworkTitleView(framework: framework)
                    }
                }//lazyvgrid
            }//scrollview
            .navigationTitle("🍎 Frameworks")
        }//navigation
       // .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
