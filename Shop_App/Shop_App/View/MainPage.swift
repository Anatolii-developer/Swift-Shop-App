import SwiftUI

struct MainPage: View {
    // Current Tab...
    @State var currentTab: Tab = .Home
    
    @StateObject var sharedData: SharedDataModel = SharedDataModel()
    
    // Animation Namespace
    @Namespace var animation
    
    // Hidding Tab Bar...
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
       
        VStack(spacing: 0){
            
            // Tab View...
            TabView(selection: $currentTab) {
                
                Home(animation: animation)
                    .environmentObject(sharedData)
                    .tag(Tab.Home)
                
               LikedPage()
                    .environmentObject(sharedData)
                    .tag(Tab.Liked)
                
                ProfilePage()
                    .tag(Tab.Profile)
                
                CartPage()
                    .environmentObject(sharedData)
                    .tag(Tab.Cart)
            }
            
            // Custom Tab Bar...
            HStack(spacing: 0){
                ForEach(Tab.allCases,id: \.self){tab in
                    
                    Button {
                        // updating tab...
                        currentTab = tab
                    } label: {
                        
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22,height: 22)
                        // Shadow
                            .background(
                              Color("green")
                                .opacity(0.1)
                                .cornerRadius(5)
                              //blurring...
                                .blur(radius: 5)
                              // Making Bigger...
                                .padding(-7)
                                .opacity(currentTab == tab ?  1 : 0)
                              
                            )
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? Color("green") : Color.black.opacity(0.3))
                    }
                }
            }
            .padding([.horizontal,.top])
            .padding(.bottom,10)
        }
        .background(Color("BG").ignoresSafeArea())
        .overlay(
        
            ZStack {
                // MARK: Detail Page...
                if let product = sharedData.detailProduct,sharedData.showDetailProduct{
                    
                    ProductDetailView(product: product, animation: animation)
                        .environmentObject(sharedData)
                    // adding transion...
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .opacity))
                }
            }
        )
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

// Making Case iterateble...
// Tab Cases...
enum Tab: String,CaseIterable {
    
    case Home = "Home"
    case Liked = "Liked"
    case  Profile = "Profile"
    case Cart = "Cart"
}
