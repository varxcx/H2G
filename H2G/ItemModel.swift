//
//  ItemModel.swift
//  H2G
//
//  Created by Vardhan Chopada on 4/18/24.
//

import SwiftUI

struct ItemModel: Decodable, Identifiable {
    let id: Int
    let title: String
    let body: String
}
