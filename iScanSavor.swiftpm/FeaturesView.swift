import SwiftUI

struct FeaturesView: View {
    var body: some View {
        List {
            Group {
                Section {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Feature Extraction")
                            .font(.title)
                            .bold()
                        
                        Text("Certainly! In iScanSavor, feature extraction involves the process of analyzing and identifying important characteristics from scanned food items. This process is crucial for providing users with detailed and relevant information about the foods they consume.")
                        
                        Text("Additionally, the app estimates portion sizes based on the nutritional content of the scanned item, providing users with guidance on appropriate serving sizes.")
                    }.padding()
                }
                
                Section {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Data Collection")
                            .font(.title)
                            .bold()
                        
                        Text("Data collection in iScanSavor involves gathering and aggregating information from various sources to provide users with comprehensive insights into the food they consume.")
                        
                        Text("Scanned Images: Users capture images of food items using their device's camera within the iScanSavor app. These images serve as the primary source of data for analysis.")
                        
                        
                        Text("Nutritional Databases: iScanSavor integrates with nutritional databases containing information about thousands of food products. These databases provide data on the nutritional content of foods, including calories, macronutrients, vitamins, and minerals.")
                        
                        
                        Text("Food Categories: iScanSavor categorizes scanned food items into different groups such as fruits, vegetables, grains, meats, dairy, and processed foods. This categorization enhances organization and helps users understand their dietary habits.")
                        
                        
                        
                        
                        
                    }.padding()
                }
                
            }
            
              
                
                
            
        }
        .navigationTitle("iScanSavor Features")
    }
}


#Preview{
    FeaturesView()
}
