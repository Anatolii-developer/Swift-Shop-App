import SwiftUI

struct ProfilePage: View {
    var body: some View {
      
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    Text("My Profile")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack(spacing: 15){
                        
                        Image("Profile-2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 80, height: 80)
                            .offset(y: -30)
                            .padding(.bottom,-30)
                        
                        Text("User1")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        
                        HStack(alignment: .top, spacing: 10) {
                            
                            Image(systemName: "location.north.circle.fill")
                                .foregroundColor(.gray)
                                .rotationEffect(.init(degrees: 180))
                            
                            Text("Addres: 1760 Finch Ave E\nToronto ON\nCanada")
                                .font(.system(size: 15))
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                      }
                    .padding([.horizontal,.bottom])
                    .background(
                    
                        Color.white
                            .cornerRadius(12)
                            .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
                    )
                    .padding()
                    .padding(.top,40)
                    
                    // Custom navigation links...
                    
                    CustomNavigationLink(title: "Edit Profile") {
                        
                        Text("")
                            .navigationTitle("Edit Profile")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color("BG").ignoresSafeArea())
                            
                    }
                    
                    CustomNavigationLink(title: "My Mental Health") {
                        
                        ZStack{
                        
                        Text("")
                            .navigationTitle("My Mental Health")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color("BG").ignoresSafeArea())
                            
                        
                            
                        VStack(spacing: 50) {
                            
                            
                        HStack {
                            VStack(alignment: .center){
                           Text("8")
                                .font(.system(size: 18,weight: .bold, design: .rounded))
                            Text("rank".uppercased())
                                .font(.system(size: 12,weight: .regular, design: .rounded))
                        }
                            Spacer()
                            VStack(alignment: .center){
                           Text("April 4")
                                .font(.system(size: 18,weight: .bold, design: .rounded))
                            Text("birthaday".uppercased())
                                .font(.system(size: 12,weight: .regular, design: .rounded))
                        }
                            Spacer()
                            VStack(alignment: .center){
                           Text("18")
                                .font(.system(size: 18,weight: .bold, design: .rounded))
                            Text("years old".uppercased())
                                .font(.system(size: 12,weight: .regular, design: .rounded))
                        }
                      }
                        .padding()
                        .frame(width: 360)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Mental Health".uppercased())
                                .font(.headline)
                                .padding()
                            HStack(alignment: .top){
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, nsed do eiusmod tempor.")
                                    .font(.caption)
                                    .frame(width: 250, height: 32)
                                Spacer()
                                Text("yesterday")
                                    .font(.caption)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            
                            HStack {
                                VStack(alignment: .center){
                                    Text("4.3")
                                        .font(.system(size: 24, weight: .bold, design: .rounded))
                                    Text("avg text / day" .uppercased())
                                        .font(.system(size: 12, weight: .regular, design: .rounded))
                                }
                                Spacer()
                                
                                VStack(alignment: .center){
                                    Text("+25%")
                                        .font(.system(size: 24, weight: .bold, design: .rounded))
                                        .foregroundColor(.green)
                                    
                                    Text("this month" .uppercased())
                                        .font(.system(size: 12, weight: .regular, design: .rounded))
                                }
                                Spacer()
                                VStack(alignment: .center){
                                    Text("12 hrs")
                                        .font(.system(size: 24, weight: .bold, design: .rounded))
                                    Text("last spoke" .uppercased())
                                        .font(.system(size: 12, weight: .regular, design: .rounded))
                                }
                              }
                              .padding()
                           }
                        .frame(width: 360)
                        .foregroundColor(Color.black.opacity(0.8))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                        }
                      }
                        .edgesIgnoringSafeArea(.all)
                    }
                    
                    CustomNavigationLink(title: "Notifications") {
                        
                        Text("")
                            .navigationTitle("Notifications")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color("BG").ignoresSafeArea())
                            
                    }
                    
                    CustomNavigationLink(title: "Support Ukraine") {
                        
                    ZStack {
                        Text("")
                            .navigationTitle("Support Ukraine")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color("BG").ignoresSafeArea())
                        
                        HStack(alignment: .top,spacing: 10){
                            
                            Image("ukr")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 270, height: 250)
                                .cornerRadius(15)
                                .padding(.bottom,400)
                                .background(
                                
                                    Color(.white)
                                        .frame(width: 300, height: 200)
                                        .cornerRadius(15)
                                        .padding(.bottom,400)
                                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                                )
                                
                         }
                      
                            HStack{
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                    .frame(width: 300,height: 300)
                                  
                                    
                            
                        }
                        HStack(alignment: .bottom ,spacing: 20){
                            
                            Text("president.gov.ua")
                                .font(.system(size: 15))
                                .foregroundColor(.blue)
                                .padding(.top,300)
                                .background(
                                   
                                    Color(.white)
                                        .frame(width: 200, height: 30)
                                        .padding(.top,300)
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                                )
                            
                        }
                            
                       }
                        .background(Color("BG"))
                            
                    }
                    
                }
                .padding(.horizontal,22)
                .padding(.vertical,20)
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
    func CustomNavigationLink<Detail: View>(title: String,@ViewBuilder content: @escaping ()->Detail)->some View{
        
        NavigationLink {
            content()
        } label: {
            
            HStack {
                
                Text(title)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .foregroundColor(.black)
            .padding()
            .background(
            
                Color.white
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4, y: 4)
            )
            .padding(.horizontal)
            .padding(.top,10)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
