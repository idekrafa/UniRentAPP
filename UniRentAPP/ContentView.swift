//
//  ContentView.swift
//  UniRentAPP
//
//  Created by Rafael Ribeiro on 5/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color("Bg")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("apt1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                    
                    DescriptionView()
                        .offset(y: -40)
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}




struct DescriptionView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Private Room \nDowntown")
                .font(.title)
                .fontWeight(.bold)
            
            HStack (spacing: 4){
                Text("Affordability")
                    .padding(.horizontal)
                ForEach(0 ..< 4) { item in
                    Image("star")
                }
                Spacer()
            }
            
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("Enjoy ultimate convenience in this bright and quiet private room, located right next to a metro station in the heart of downtown Vancouver.")
                .lineSpacing(5.0)
                .opacity(0.8)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Info")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text("Beds: 1")
                        .opacity(0.8)
                    Text("Furniture: Yes")
                        .opacity(0.8)
                    Text("Lease: 6 Months")
                        .opacity(0.8)
                }
            }
            .padding(.vertical)
        }
        .padding()
        .padding(.top)
        .background(Color("Bg"))
        .cornerRadius(40.0)
    }
}
