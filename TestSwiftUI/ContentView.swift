//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Mitya Kim on 7/13/22.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .navigationBarTitle("People")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 100)
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}
