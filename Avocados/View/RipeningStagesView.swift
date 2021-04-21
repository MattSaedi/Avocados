//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by MahDi SaeDi on 4/17/21.
//

import SwiftUI
struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    var ripeningsStages:[Ripening] = ripeningData
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators:false){
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25){
                    ForEach(ripeningsStages){item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal,25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
// MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningsStages: ripeningData)
    }
}
