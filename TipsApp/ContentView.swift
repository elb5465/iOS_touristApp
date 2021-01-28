//
//  ContentView.swift
//  TipsApp
//
//  Created by Eric Baker on 1/27/21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
//            Image(Location.example.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
//            Text(Location.example.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
//            Text(Location.example.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
//            Text(Location.example.description)
                .padding(.horizontal)

            Text("Did you know?")
                .bold()
                .foregroundColor(.secondary)
                .padding(.top)
            
            
            Text(location.more)
//            Text(Location.example.more)
                .padding(.horizontal)

        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            NavigationView{ //Wrapping the contentView() in a navigationView adds the "frosted glass" bar to the top of the screen, preventing text and all from interfering with how the time and stuff are displayed at the top.
                ContentView(location: Locations().primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
            
            NavigationView{
                WorldView()
            }
            .tabItem{
                Image(systemName: "star.fill")
                Text("Locations")
            }
        }
    }
}
