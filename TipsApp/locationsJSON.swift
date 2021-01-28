//
//  locationsJSON.swift
//  TipsApp
//
//  Created by Eric Baker on 1/27/21.
//

import SwiftUI

@main
struct locationsJSON: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{ //Wrapping the contentView() in a navigationView adds the "frosted glass" bar to the top of the screen, preventing text and all from interfering with how the time and stuff are displayed at the top.
                    ContentView(location: locations.primary)
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
            .environmentObject(locations)
        }
    }
}
