import SwiftUI

struct IntroView: View {
    var body: some View {
        List {
            Section(header: Image("cover").resizable().scaledToFit().cornerRadius(12)) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("iScanSavor")
                        .font(.title)
                        .bold()
                    
                    Text("My Swift Playground App designed to enhance your culinary experience by seamlessly scanning and analyzing food items. With iScanSavor, you can effortlessly identify ingredients, nutritional information, and even receive personalized recipe suggestions tailored to your dietary preferences.")
                }.padding()
            }
            
            Section {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Why?")
                        .font(.title)
                        .bold()
                    
                    Text("We used it because iScanSavor provides a convenient and efficient way to analyze food items, helping users make informed decisions about their diet and culinary choices. With its advanced scanning capabilities and personalized features, iScanSavor enhances the overall cooking and dining experience, making it an indispensable tool for anyone passionate about food and nutrition.")
                    
                    Text("Therefore, I aim to create an offline sandbox where a link can be analyzed based on various features using Machine Learning to detect whether the link is legitimate or phishing.")
                }.padding()
            }
            
            Section {
                VStack(alignment: .leading, spacing: 16) {
                    Text("How does it work?")
                        .font(.title)
                        .bold()
                    
                    Text("iScanSavor works by utilizing image recognition technology to identify food items scanned with a mobile device's camera. Here's how it typically works")
                    
                    Text("1.) Scanning: Users point their device's camera at a food item they want to analyze. The app captures an image of the food item.")
                    
                    Text("2.) Image Recognition: The captured image is processed by the app's image recognition algorithms. These algorithms analyze the visual features of the food item to identify it.")
                    
                    Text("3.) Displaying Information: Finally, the app presents the retrieved information to the user in an easy-to-understand format. This allows users to make informed decisions about their food choices based on factors like nutrition, dietary restrictions, and personal preferences.")
                 
                    
                }.padding()
            }
            
            
            
                VStack(alignment: .leading, spacing: 16) {
                    Text("Target Audience for iScanSavor Food Scanner")
                        .font(.title)
                        .bold()
                    
                    Text("1. People with food allergies or intolerances")
                    Text("2. Health-conscious individuals")
                    Text("3. Individuals with specific dietary requirements (e.g., gluten-free, vegan, keto")
                    Text("4. Fitness enthusiasts and athletes")
                    Text("5. Weight management seekers")
                    Text("6. Parents concerned about their children's nutrition")
                    Text("7. Dietitians and nutritionists")
                    Text("8. Food bloggers and influencers")
                }.padding()
            
        }
        .navigationTitle("Getting Started")
    }
}



#Preview{
    IntroView()
}
