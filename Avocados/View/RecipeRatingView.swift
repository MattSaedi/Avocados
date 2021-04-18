//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by MahDi SaeDi on 4/18/21.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - PROPERTIES
    var recipe:Recipe
    // MARK: - BODY
    var body: some View {
        HStack {
            ForEach(1...(recipe.rating),id:\.self){_ in
            Image(systemName: "star.fill")
                .font(.body)
                .foregroundColor(.yellow)
            }
        }
    }
}
// MARK: - PREVIEW
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
