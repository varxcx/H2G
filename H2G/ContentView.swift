//
//  ContentView.swift
//  H2G
//
//  Created by Vardhan Chopada on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                if let errorMessage = ItemViewModel.shared.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                } else {
                    List(ItemViewModel.shared.items) { item in
                        NavigationLink(destination: DetailView(item: item)) {
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.headline)
                                Text(item.body)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .navigationTitle("Items")
                }
            }
            .onAppear {
                ItemViewModel.shared.fetchItems()
            }
        }
    }
}

#Preview {
    ContentView()
}

