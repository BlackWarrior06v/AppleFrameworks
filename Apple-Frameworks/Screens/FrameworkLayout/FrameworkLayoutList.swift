//
//  FrameworkLayoutList.swift
//  Apple-Frameworks
//
//  Created by Curi on 23/12/24.
//

import SwiftUI

struct FrameworkLayoutList: View {
    
    @ObservedObject var viewModel: FrameworkGridViewModel
    var body: some View {
        
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework,
                        isShowingDetailView: $viewModel.isShowingDetailView,
                        columnLayout: viewModel.columnLayout)) {
                        FrameworkTitleViewList(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
        
    }
    
}

#Preview {
    @Previewable var viewModel = FrameworkGridViewModel()
    FrameworkLayoutList(viewModel: viewModel)
}
