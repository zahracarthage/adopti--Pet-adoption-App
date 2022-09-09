//
//  customTabBar.swift
//  adopti
//
//  Created by Zahra chouchane on 6/9/2022.
//

import SwiftUI





struct customTabBar: View {
    
    @Binding var selectedTab: String
  

    @State var tabPoint: [CGFloat] = []
    
    var body: some View {
        HStack(spacing : 0){
            
            
            TabBarButton(image: "houseicon", selectedTab: $selectedTab, tabPoints: $tabPoint)
            TabBarButton(image: "listingsicon", selectedTab: $selectedTab, tabPoints: $tabPoint)
            TabBarButton(image: "addlistingicon", selectedTab: $selectedTab, tabPoints: $tabPoint)
            TabBarButton(image: "notificationsicon", selectedTab: $selectedTab, tabPoints: $tabPoint)
            TabBarButton(image: "profileicon", selectedTab: $selectedTab, tabPoints: $tabPoint)
            
            
        }
        .padding()
        //.hoverEffect(style: style)
        
        .background(
       
            // Color.gray.blur(radius: 30)
            Color.white
                
             //    .clipShape(tabCurve(tabPoint: getCurvePoint() - 15))
        )
        
        .cornerRadius(30)
        .padding(.horizontal)
    }
    
    func getCurvePoint() -> CGFloat
    {
        if tabPoint.isEmpty{
            return 10
        }
        else {
            switch selectedTab {
            case "house" :
                
                return tabPoint[0]
            case "bookmark" :

                return tabPoint[1]

            case "message" :
                return tabPoint[2]

            default:
                return tabPoint[3]
                

            }
        }
    }
}
 

struct customTabBar_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}





struct TabBarButton : View{
    var image : String
    @Binding var selectedTab: String
    @Binding var tabPoints: [CGFloat]
    @State var navigated = false

    
    var body: some View{
        GeometryReader{
            reader -> AnyView in
            let midx = reader.frame(in: .global).midX
            
            DispatchQueue.main.async {
                if tabPoints.count <= 4 {
                    tabPoints.append(midx)
                }
            }
            

                // NavigationLink("", destination: ProfileView(), isActive: $navigated)
          //  NavigationLink("", destination: NewListingView(), isActive: $navigated)
           // NavigationLink("", destination: NotificationView(), isActive: $navigated)


            
            return AnyView (
                Button(action: {
                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5, blendDuration: 0.5))
                                  {
                                      
                        selectedTab = image
                                   /*   print(selectedTab)
                                      
                                      switch selectedTab {
                                      case "houseicon" :
                                          NavigationLink("homepage", destination: HomePage(), isActive: $navigated)

                                          self.navigated.toggle()
                                      //HomePage()
                                          
                                      case "listingsicon" :
                                          print("listings")
                                          
                                          
                                          self.navigated.toggle()
                                          

                                      case "addlistingicon" :
                                          print("add listing")
                                          self.navigated.toggle()
                                          
                                      case "notificationsicon" :
                                          print("noticiation")
                                          self.navigated.toggle()

                                          
                                      default:
                                          print("profile")
                                          self.navigated.toggle()
                                          

                                      }*/
                    }
                    
                }, label: {
                    
                    Image("\(image)\(selectedTab == image ? "Selected" : "")")
                        .font(.system(size:25, weight: .semibold))
                        .foregroundColor(selectedTab == image ? Color("PrimaryPink") : Color("gray") )
                        .offset(y : selectedTab == image ? -2 : 0)
                    
                    
                   
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            )
           
        }
        .frame(height: 50)
    }
}
