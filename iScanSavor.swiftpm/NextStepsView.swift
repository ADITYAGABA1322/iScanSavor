import SwiftUI

struct NextStepsView: View {
    
    @State private var showSheet = false
    
    var body: some View {
        List {
            Section {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Prevention Techniques")
                        .font(.title)
                        .bold()
                    
                    Text("1. Regular Updates: Ensure the app is regularly updated with the latest nutritional information and safety guidelines to provide accurate analysis.")
                        .bold()
                    
                    Text("2. Data Validation: Implement stringent data validation processes to ensure the accuracy and reliability of the nutritional database used by the app")
                        .bold()
                    
                    Text("3. User Feedback: Encourage users to provide feedback on scan results to improve the app's accuracy and effectiveness over time.")
                        .bold()
                    
                    Text("4. Collaboration: Collaborate with nutrition experts, food scientists, and health organizations to enhance the app's capabilities and effectiveness in promoting healthy eating habits.")
                        .bold()
                    

                }.padding()
            }
            
            Section {
                VStack(alignment: .leading, spacing: 16) {
                    Text("What should I do after a Food Package Analyze")
                        .font(.title)
                        .bold()
                    
                    Text("1. Review the Results: Take a close look at the analysis provided by the app. Understand the nutritional information and any potential allergens or harmful ingredients detected in the food product.")
                        .bold()
                    
                    Text("2. Make Informed Decisions: Use the information obtained from the analyzer to make informed decisions about whether to consume the food product. Consider factors such as your dietary preferences, health goals, and any allergies or intolerances you may have.")
                        .bold()
                    
                    Text("3. Explore Alternatives: If the analyzed food product is found to be unsuitable or unhealthy based on your preferences or nutritional needs, explore alternative options. Look for similar products that better align with your dietary requirements and preferences.")
                        .bold()
                    
                    Text("4. Seek Professional Advice: If you have specific dietary concerns, health conditions, or questions about the analyzed food product, consider seeking advice from a registered dietitian or healthcare professional. They can provide personalized guidance and recommendations tailored to your individual needs.")
                        .bold()
                    
                    Text("5. Track Your Consumption: Consider keeping track of your food choices and consumption habits, especially if you're working towards specific health or wellness goals. Tracking your food intake can help you stay mindful of your eating habits and make adjustments as needed.")
                        .bold()
                }.padding()
            }
            
            Section {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Food Choices")
                        .font(.title)
                        .bold()
                    
                    
                    Text("1. Nutritional Content: People often consider the nutritional value of foods when making choices. This includes factors such as macronutrients (carbohydrates, proteins, and fats), micronutrients (vitamins and minerals), fiber content, and overall caloric density.")
                        .bold()
                    
                    Text("2. Dietary Preferences: Individuals may have personal preferences or dietary restrictions that influence their food choices. This could include following specific diets such as vegetarianism, veganism, gluten-free, or paleo diets, or avoiding certain ingredients due to allergies or intolerances.")
                        .bold()
                    
                    Text("3. Explore Alternatives: If the analyzed food product is found to be unsuitable or unhealthy based on your preferences or nutritional needs, explore alternative options. Look for similar products that better align with your dietary requirements and preferences.")
                        .bold()
                    
                    Text("4. Health Goals: Many individuals make food choices based on their health and wellness goals. This could include goals such as weight management, improving athletic performance, managing chronic conditions like diabetes or hypertension, or simply maintaining overall health and vitality.")
                        .bold()
                    
                    
                 
                }.padding()
            }
        }
        .navigationTitle("Next Steps")
        
    }
    
}


#Preview{
    NextStepsView()
}
