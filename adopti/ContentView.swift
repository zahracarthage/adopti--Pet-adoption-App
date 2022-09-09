//
//  ContentView.swift
//  adopti
//
//  Created by Zahra chouchane on 13/7/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 0
    
    var body: some View{
        VStack{
            ZStack{
                
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
