//
//  File.swift
//  H2G
//
//  Created by Vardhan Chopada on 4/18/24.
//

import SwiftUI

struct DetailView: View {
    let item: ItemModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(item.title)
                .font(.title)
            Text(item.body)
                .font(.body)
                .foregroundColor(.gray)
        }
        .padding()
        .navigationBarTitle("Detail")
    }
}

