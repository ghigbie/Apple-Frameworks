//
//  FrameworkListView.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/31/21.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            
            List {
                ForEach(MockData.frameworks){ framework in //id is not needed if model conforms to "identifiable" (constrains and gains)
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkListTitleView(framework: framework)
                    }
                }//foreach
            }//list
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }//navigation
    
}



struct FrameworkListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
