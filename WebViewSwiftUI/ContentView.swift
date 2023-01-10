//
//  ContentView.swift
//  WebViewSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 10/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Group {
                    WebViewRepresentable()
 
                }
                 
            }
            .navigationBarTitle(Text("Urway"), displayMode: .inline)
//            .navigationBarItems(leading: Button(action: {
//               // webViewModel.shouldGoBack.toggle()
//            }, label: {
//                if webViewModel.canGoBack {
//                    Image(systemName: "arrow.left")
//                        .frame(width: 44, height: 44, alignment: .center)
//                        .foregroundColor(.black)
//                } else {
//                    EmptyView()
//                        .frame(width: 0, height: 0, alignment: .center)
//                }
//            })
//            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
