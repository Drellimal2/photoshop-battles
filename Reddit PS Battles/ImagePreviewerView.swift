//
//  ImagePreviewerView.swift
//  Reddit PS Battles
//
//  Created by Shane Richards on 3/23/20.
//  Copyright © 2020 DevCore Studios. All rights reserved.
//

import SwiftUI

struct ImagePreviewerView: View {
    let imageUrl: String
    
    var body: some View {
        VStack{
            Image(imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImagePreviewerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePreviewerView(imageUrl: "running")
    }
}
