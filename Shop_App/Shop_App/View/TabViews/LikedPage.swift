import SwiftUI

struct LikedPage: View {
    // For Designing...
   
    @EnvironmentObject var sharedData: SharedDataModel
    
    // MARK: Delete options.
    @State var showDeleteOption: Bool = false
    
    var body: some View {
       
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    HStack{
                        
                        Text("Favourites")
                            .font(.system(size: 28).bold())
                            .foregroundColor(Color("Primary-1"))
                        
                        Spacer()
                        
                        Button {
                            withAnimation{
                                showDeleteOption.toggle()
                            }
                        } label: {
                            Image("Delete")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25,height: 25)
                                //.padding(15)
                                .padding(.horizontal,20)
                                .padding(.vertical,15)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
                        }
                        .opacity(sharedData.likedProducts.isEmpty ? 0 : 1)
                    }
                    
                    if sharedData.likedProducts.isEmpty{
                        
                        Group{
                            Image(systemName: "globe.americas")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("green"))
                                .padding()
                                .padding(.top,35)
                            
                            Text("No favorites yet")
                                .font(.system(size: 25))
                                .fontWeight(.semibold)
                                 
                            Text("Choose your product and hit the like button on each product page to save favorite ones.")
                                .font(.system(size: 18))
                                .foregroundColor(Color.gray)
                                .padding(.horizontal)
                                .padding(.top,10)
                                .multilineTextAlignment(.center)
                            
                        }
                    }
                    else{
                        
                        // Displaying Products...
                        VStack(spacing: 15) {
                            
                            ForEach(sharedData.likedProducts){product in
                                
                                HStack(spacing: 0) {
                                    
                                    if showDeleteOption{
                                        
                                        Button {
                                            deleteProduct(product: product)
                                        } label: {
                                            Image(systemName: "minus.circle.fill")
                                                .font(.title2)
                                                .foregroundColor(Color("Orange"))
                                        }
                                        .padding(.trailing)
                                    }
                                    
                                    CardView(product: product)
                                }
                            }
                        }
                        .padding(.top,25)
                        .padding(.horizontal)
                    }
                }
                .padding()
            }
            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
            
                Color("BG")
                    .ignoresSafeArea()
            )
        }
    }
    
    @ViewBuilder
    func CardView(product: Product)->some View{
        
        HStack(spacing: 15) {
            
            Image(product.productImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 8){
                
                Text(product.title)
                    .font(.system(size: 18).bold())
                    .lineLimit(1)
                
                Text(product.subtitle)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("green"))
                
                Text("Type: \(product.type.rawValue)")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal,10)
        .padding(.vertical,10)
        .frame(maxWidth: .infinity,alignment: .leading)
        .background(
          
            Color.white
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
        )
    }
    
    func deleteProduct(product: Product) {
        
        if let index = sharedData.likedProducts.firstIndex(where: { currentProduct in
            return product.id == currentProduct.id
        }){
            
            let _ = withAnimation{
                sharedData.likedProducts.remove(at: index)
            }
        }
    }
}

struct LikedPage_Previews: PreviewProvider {
    static var previews: some View {
        LikedPage()
            .environmentObject(SharedDataModel())
    }
}
