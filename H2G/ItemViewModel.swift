//
//  File.swift
//  H2G
//
//  Created by Vardhan Chopada on 4/18/24.
//

import SwiftUI

@Observable
final class ItemViewModel {
    static let shared = ItemViewModel()
    var items: [ItemModel] = []
    var errorMessage: String?
    
    func fetchItems() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            self.errorMessage = "Invalid URL"
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                guard let data = data, error == nil else {
                    self.errorMessage = error?.localizedDescription ?? "Unknown error"
                    return
                }
                do {
                    self.items = try JSONDecoder().decode([ItemModel].self, from: data)
                } catch {
                    self.errorMessage = error.localizedDescription
                }
            }
        }.resume()
    }
}
