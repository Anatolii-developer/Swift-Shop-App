import SwiftUI

struct MoreProductsView: View {
    var body: some View {
       
        VStack{
            Text("More products")
                .font(.system(size: 24))
                .foregroundColor(Color("Primary-1"))
                .frame(maxWidth: .infinity,alignment: .leading)
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
        .background(Color("BG").ignoresSafeArea())
    }
}

struct MoreProductsView_Previews: PreviewProvider {
    static var previews: some View {
        MoreProductsView()
    }
}
