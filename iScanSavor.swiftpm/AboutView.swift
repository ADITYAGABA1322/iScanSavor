//
//  AboutView.swift
//  iScanSavor
//
//  Created by Aditya Gaba on 25/02/24.
//


import SwiftUI

struct AboutView: View {
    
    var body: some View {
        
        List {
            Section {
                VStack(alignment: .center, spacing: 20) {
                    Image("myPic")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        .padding(4)
                    
                    Text("Hey 👋")
                        .font(.title)
                        .bold()
                    
                    Text("I am Aditya Gaba")
                        .font(.title)
                        .bold()
                    
                    Text("I'm a Computer Science student from India 🇮🇳")
                        .font(.headline)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("I am very passionate about Coding & Technology, as well as converting my ideas into apps, encouraging others to code through my Blogs & Instagram Page.")
                            .multilineTextAlignment(.center)
                        
                        Text("I aimed to build iScanSavor - a Swift Playground App designed to revolutionize the way we interact with food labels. With iScanSavor, my goal is to empower users, especially those with allergies or dietary restrictions, to make informed and healthy food choices. By providing comprehensive information about the ingredients and nutritional content of packaged foods, iScanSavor helps users identify potential allergens and harmful additives more easily. Leveraging advanced technology such as barcode scanning and machine learning algorithms, iScanSavor offers a convenient and efficient way for individuals to analyze food labels and ensure the safety of their diet. My aspiration is for iScanSavor to become a trusted companion for people with allergies, helping them navigate the complex landscape of packaged foods and lead healthier, happier lives")
                            .multilineTextAlignment(.center)
                    }
                    
                    Text("Thank you for checking out my Swift Playground App! 😊")
                        .font(.title)
                        .bold()
                }.padding()
            }
        }
        .navigationTitle("About Me")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    AboutView()
}
