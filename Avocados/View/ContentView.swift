//
//  ContentView.swift
//  Avocados
//
//  Created by MahDi SaeDi on 4/17/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var  headers : [Header] = headersData
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical,showsIndicators:false){
            VStack(alignment: .center, spacing: 20){
                // MARK: - HEADER
                ScrollView(.horizontal,showsIndicators:false) {
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headers) {item in
                            HeaderView(header: item)
                        }//:LOOP
                    }//:HSTACK
                }//:SCROLL
                // MARK: - FOOTER
                VStack(alignment: .center, spacing: 20){
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                }//:VSTACK
                .frame(maxWidth:640)
                .padding()
                .padding(.bottom,85)
            }//:VSTACK
        }//:SCROLL
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
