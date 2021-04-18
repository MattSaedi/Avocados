//
//  FactModel.swift
//  Avocados
//
//  Created by MahDi SaeDi on 4/18/21.
//

import SwiftUI
// MARK: - FACT MODEL
struct Fact : Identifiable{
    var id = UUID()
    var image:String
    var content:String
}
