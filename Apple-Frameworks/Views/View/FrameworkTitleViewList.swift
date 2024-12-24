//
//  FrameworkTitleViewList.swift
//  Apple-Frameworks
//
//  Created by Curi on 23/12/24.
//

import SwiftUI

struct FrameworkTitleViewList: View {
    
    let framework: Framework
        
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
        
}

#Preview {
    FrameworkTitleViewList(framework: MockData.sampleFramework)
}
