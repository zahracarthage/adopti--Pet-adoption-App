//
//  HomePage.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import SwiftUI

struct HomePage: View {
    @State var selectedTab = "house"

    var body: some View {
        NavigationView{
            
       
        ZStack{
            VStack{
                
            
                VStack{
                    
                    VStack{
                        SearchBar()
                       
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack(spacing: 30){
                                 PetCard()
                                 PetCard()
                                 PetCard()
                                 PetCard()

                             }
                        }.padding()
                        

                    }.padding()
                   
                   
                      
                    
                    
                    Spacer()
                    customTabBar(selectedTab: $selectedTab)

                }.background(.gray.opacity(0.05))
                
            }
        }.navigationTitle("Home")
         .navigationBarTitleDisplayMode(.inline)
         
                
        }
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


struct SearchBar: View{
    
    @State var searchText: String = ""
    
    var body: some View{
        HStack{
            TextField("Search for your pet", text: $searchText)
                .foregroundColor(.black)
                .padding()
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .foregroundColor(Color("PrimaryPink"))
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            
                                searchText = ""
                            }
                    , alignment: .trailing
                        
                )
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 60, height: 60)
                .foregroundColor(Color("PrimaryPink"))
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                )
            
            
        }.font(.headline)
            .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 14)
            )
            .padding()
        
    }
}


struct PetCard: View{
    
    var body: some View{
        
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 270, height: 300)
            .foregroundColor(.white)
            .shadow(color: .gray.opacity(0.2), radius:10, x: 3, y: 10)
            .overlay(
                
                
                VStack(alignment: .leading){
                    Text("John Doe")
                }
                   
                )

        
    }
}




