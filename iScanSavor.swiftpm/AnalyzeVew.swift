//
//  AnalyzeVew.swift
//  iScanSavor
//
//  Created by Aditya Gaba on 25/02/24.
//

import SwiftUI

struct AnalyzeView: View {

    var body: some View {
        List {
            
            Section(header: Image("cover").resizable().scaledToFit().cornerRadius(12)) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Welcome to Package Food Analyzer!")
                        .font(.title)
                        .bold()
                    
                    Text("1. Objective:")
                        .bold()
            
                        Text("Description: Package Food Analyzer is a mobile application designed to help users make informed decisions about packaged food products.")
                    
                    Text("2. Features:")
                        .bold()
            
                        Text("Description: The app offers various features such as barcode scanning, nutritional analysis, ingredient evaluation, and personalized recommendations.")
                    
                    Text("3. Barcode Scanning:")
                        .bold()
            
                        Text("Description: Users can scan the barcode of packaged food items using their device's camera. The app retrieves product information from an extensive database.")
                    
                    Text("4. Nutritional Analysis:")
                        .bold()
            
                        Text("Description: Package Food Analyzer analyzes the nutritional content of scanned products, providing details on calories, macronutrients, vitamins, minerals, and more.")
                    
                    Text("5. Ingredient Evaluation:")
                        .bold()
            
                        Text("Description: The app examines the ingredient list of scanned items, highlighting allergens, additives, preservatives, and other components. Users receive alerts for ingredients they may want to avoid.")
                   
                }.padding()
            }
            
            Section {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Ingredient Scanner: VisionKit Model")
                        .font(.title)
                        .bold()
                    
                    Text("1. Barcode Scanner:")
                        .bold()
            
                        Text("This refers to the functionality within an application that enables users to scan barcodes using their device's camera. When a barcode is scanned, the application captures the barcode image and extracts the encoded information.")
                    
                    Text("2. Text Recognition:")
                        .bold()
            
                        Text("Text recognition is a process where the text contained within an image is extracted and converted into machine-readable text. In the context of the Barcode Text Ingredient Scanner, text recognition is used to extract the textual information encoded in the barcode image.")
                    
                    Text("3. VisionKit:")
                        .bold()
            
                        Text("VisionKit is a framework provided by Apple for iOS applications that enables developers to integrate powerful computer vision capabilities, including image analysis, text recognition, and object detection, into their apps. It provides easy-to-use APIs for working with images and processing visual data.")
                    
               
                  
                    
                }.padding()
            }
            
            Section {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Result")
                        .font(.title)
                        .bold()
                    
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                            .imageScale(.large)
                            .foregroundColor(.green)
                        
                        Text("Meets safety standards")
                            .bold()
                        
                        Spacer()
                    }
                    

                    
                    HStack {
                        Image(systemName: "multiply.square.fill")
                            .imageScale(.large)
                            .foregroundColor(.red)
                        
                        Text("Contains harmful ingredients ")
                            .bold()
                        
                        Spacer()
                    }
                }.padding()
            }
            
            
        }
        .navigationTitle("Package Food Analyzer")
    }
    
}


#Preview{
    AnalyzeView()
}
