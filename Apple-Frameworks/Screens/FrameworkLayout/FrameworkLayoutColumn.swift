//
//  FrameworkLayoutColumn.swift
//  Apple-Frameworks
//
//  Created by Curi on 23/12/24.
//

import SwiftUI

struct FrameworkLayoutColumn: View {
    
    @ObservedObject var viewModel: FrameworkGridViewModel
    
    var body: some View {
        
        NavigationStack() {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView,
                    columnLayout: viewModel.columnLayout)
            }
        }
            
    }
    
}

#Preview {
    @Previewable var viewModel = FrameworkGridViewModel()
    FrameworkLayoutColumn(viewModel: viewModel)
}
