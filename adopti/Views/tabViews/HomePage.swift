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
      
            
       
        ZStack{
            VStack(spacing:30){
                

                SearchBar().padding(.horizontal)
                
                ScrollView(.vertical)
                {
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack(spacing: 30){
                            PetCard()
                            PetCard()
                            PetCard()
                            PetCard()
                            
                        }.padding(30)
                    }
                    
                    HStack(spacing:50){
                        filters(image: "dog", FilterText: "Dog")
                        filters(image: "Bird1", FilterText: "Bird")
                        filters(image: "Cat1", FilterText: "Cat")
                        
                    }
                    
                    
                    
                    
                
                        HStack{
                            Text("Nearby")
                                .font(.custom(poppinsRegular, size: 18))
                                .foregroundColor(Color(PrimaryColor))
                            Spacer()
                            Text("See all")
                                .font(.custom(poppinsRegular, size: 12))
                                .foregroundColor(Color(PrimaryColor))
                        }.padding()
                    
                        nearbyPets()
                    
                    
                    
                }
              
              //  customTabBar(selectedTab: $selectedTab)
           
                
            }.padding(.horizontal)
        }.background(.gray.opacity(0.05))
         
                
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
           
        
    }
}


struct PetCard: View{
    @State var heartTapped: Bool = false
    
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .foregroundColor(.white)
                .shadow(color: .gray.opacity(0.2), radius:10, x: 3, y: 10)
            
            
            
            
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    Image("hr")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(10)
                    VStack(alignment: .leading){
                        Text("Alonzo A.Cain")
                            .font(.custom(poppinsRegular, size: 12))
                        Text("Owner")
                            .font(.custom(poppinsRegular, size: 8))
                    }
                    Spacer()
                    Image(systemName: heartTapped ? "heart.fill" : "heart")
                        .foregroundColor(Color(primaryPink))
                        .onTapGesture {
                            heartTapped.toggle()
                        }
                }
                
                Image("doggo")
                    .resizable()
                    .frame(width: .infinity, height: 170)
                    .cornerRadius(15)
                
                HStack(spacing:20){
                    
               
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(Color("buttonpinkbg"))
                       

                HStack{
                    Image(systemName: "heart.fill" )
                        .foregroundColor(Color(primaryPink))
                    Text("2.5k")
                        .font(.custom(poppinsRegular, size: 10))
                        .foregroundColor(Color(primaryPink))
                       
                }
                
                }.frame(width: 70, height: 30)
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("buttonBluebg"))
                        
                        
                        HStack{
                            Image(systemName: "text.bubble.fill" )
                                .foregroundColor(Color("buttonBlue"))
                            Text("1.4k")
                                .font(.custom(poppinsRegular, size: 10))
                                .foregroundColor(Color("buttonBlue"))
                            
                        }
                        
                    }.frame(width: 70, height: 30)
                }
                
            }.padding(.horizontal)
            
            
            
        }.frame(width: 300, height: 320)
    }
}


struct filters: View{
    var image: String
    var FilterText: String
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .foregroundColor(.white)
                .shadow(color: .gray.opacity(0.2), radius:10, x: 3, y: 10)
            HStack{
                Image(image)
                Text(FilterText)
                    .font(.custom(poppinsRegular, size: 10))
            }
            
            
            
        }.frame(width: 90, height: 50)
    }
}


struct nearbyPets: View {
    var body: some View{
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .foregroundColor(.white)
                .shadow(color: .gray.opacity(0.2), radius:10, x: 3, y: 10)
            
            HStack(alignment: .top, spacing: 30){
                Image("doggo")
                    .resizable()
                    .frame(width: 140, height: 120)
                    .cornerRadius(10)
                
                VStack(alignment: .leading){
                    HStack(alignment: .top){
                        Image("hr")
                            .resizable()
                            .frame(width: 20, height: 30)
                        VStack(alignment: .leading){
                            Text("Thomas S. Langston")
                                .font(.custom(poppinsRegular, size: 10))
                            Text("Owner")
                                .font(.custom(poppinsRegular, size: 8))
                        }
                    }
                        HStack{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(Color("buttonBluebg"))
                                
                                
                                HStack{
                                    Image(systemName: "pawprint.fill" )
                                        .foregroundColor(Color("buttonBlue"))
          
                                }
                                
                            }.frame(width: 30, height: 30)
                            Text("Gender :")
                                .font(.custom(poppinsRegular, size: 8))
                            Text("male")
                                .font(.custom(poppinsRegular, size: 8))
                            
                        }
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("buttonpinkbg"))
                            
                            
                            HStack{
                                Image(systemName: "map.fill" )
                                    .foregroundColor(Color(primaryPink))
                                
                            }
                            
                        }.frame(width: 30, height: 30)
                        Text("274 East: Alderwood Drive")
                            .font(.custom(poppinsRegular, size: 8))
                       
                        
                    }
    
                    
                }
            }
        }.frame(width: 340, height: 150)
    }
}
