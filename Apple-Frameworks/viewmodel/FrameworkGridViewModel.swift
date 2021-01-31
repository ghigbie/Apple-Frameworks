//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/26/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet{ //anytime the selected framework changes, we make isShowingDetalView true
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
    
    
}
