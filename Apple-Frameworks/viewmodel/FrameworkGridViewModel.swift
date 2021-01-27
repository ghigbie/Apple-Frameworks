//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by George Higbie on 1/26/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
    
    
}
