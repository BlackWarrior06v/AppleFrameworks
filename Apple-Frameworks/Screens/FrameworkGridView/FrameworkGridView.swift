//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Curi on 20/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        VStack {
            
            if viewModel.columnLayout {
                FrameworkLayoutColumn(viewModel: viewModel)
            } else {
                FrameworkLayoutList(viewModel: viewModel)
            }
            
            Button {
                viewModel.columnLayout.toggle()
            } label: {
                let title = viewModel.columnLayout ? "list" : "column"
//                AFButton(title: "Swap to \(title)")
                Label("Swap to \(title)", systemImage: "book.fill")
            }
            .padding()
            .buttonStyle(.bordered)
            .controlSize(.large)
    //            .foregroundColor(.yellow)
    //            .buttonBorderShape(.roundedRectangle(radius: 15))
            .tint(.red)
            
        }
            
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
