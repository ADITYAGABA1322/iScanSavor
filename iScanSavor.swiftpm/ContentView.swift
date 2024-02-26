import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: effect)
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = effect
    }
}

@ViewBuilder
func ArtWork() -> some View {
    GeometryReader { proxy in
        let size = proxy.size
        let minY = proxy.frame(in: .named("SCROLL")).minY
        let safeAreaTop = UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
        let height = size.height * 5.45 + safeAreaTop // Adjusted height to include safe area top
        
        let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
        
        LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 165/255, blue: 115/255), Color(red: 255/255, green: 215/255, blue: 185/255).opacity(0)]), startPoint: .top, endPoint: .bottom)
           // .resizable()
           // .aspectRatio(contentMode: .fill)
            .frame(width: size.width, height: height + (minY > 0 ? minY : 0))
            .clipped()
            .offset(y: -minY)
    }
}

struct ContentView: View {
    @State private var selection = 0
    @State private var isSettingViewActive = false
    @State private var isMainViewActive = false
    @State var isActive: Bool = false
    @GestureState private var dragOffset: CGSize = .zero

    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack {
                   
                    ScrollView {
                        VStack {
                            ArtWork()
                        }
                     
                        Spacer() // Push the TabView to the bottom of the screen
                    }
                   
                    // Bottom View with Buttons
                    VStack {
                        // Bottom Bar with Glass Morphism Effect
                        ZStack {
                            // Background color with opacity
                            Color.clear // Use clear color to make it invisible
                            
                            // Blur effect
                            VisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
                                .opacity(0.5) // Adjust opacity of the blur effect
                            
                            // Bottom bar content
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom))
                                .frame(height: 120)
                        }
                        .frame(height: 80)
                        .offset(y: 40)
                    }
                    
                    TabView(selection: $selection) {
                        // Home Tab
                        
                        BrowseView()
                            .tabItem {
                                CustomTabItem(imageName: "house.fill", text: "Home")
                            }
                            .tag(0)
                        
                        // Scanner Tab
                        
                        BarcodeTextScannerView()
                           
                            .tabItem {
                                CustomTabItem(imageName: "barcode.viewfinder", text: "Scanner")
                            }
                            .tag(1)
                        
                        // Browse Tab
                        HealthPlannerContentView()
                            .tabItem {
                                CustomTabItem(imageName: "square.grid.2x2.fill", text: "Browse")
                            }
                            .tag(2)
                    }

                    


                    .accentColor(.blue) // Change the color of the selected tab icon and text
                    
                  
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct CustomTabItem: View {
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .frame(width: 50, height: 50) // Adjust the frame size as needed
            Text(text)
        }
    }
}
