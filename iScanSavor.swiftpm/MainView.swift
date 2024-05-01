//
//import SwiftUI
//import VisionKit
//
//
//struct MainView: View {
//    @State private var isSettingViewActive = false
//    @State private var isMainViewActive = false
//    @State var isActive: Bool = false
//    @GestureState private var dragOffset: CGSize = .zero
//    
//    
//    @EnvironmentObject var vm: AppViewModel
//    
//    private let textContentTypes: [(title: String, textContentType: DataScannerViewController.TextContentType?)] = [
//        ("All", .none),
//        ("URL", .URL),
//        ("Phone", .telephoneNumber),
//        ("Email", .emailAddress),
//        ("Address", .fullStreetAddress)
//    ]
//    
//    var body: some View {
//        switch vm.dataScannerAccessStatus {
//        case .scannerAvailable:
//            mainView
//        case .cameraNotAvailable:
//            Text("Your device doesn't have a camera")
//        case .scannerNotAvailable:
//            Text("Your device doesn't have support for scanning barcode with this app")
//        case .cameraAccessNotGranted:
//            Text("Please provide access to the camera in settings")
//        case .notDetermined:
//            Text("Requesting camera access")
//        }
//    }
//    
//    private var mainView: some View {
//        DataScannerView(
//            recognizedItems: $vm.recognizedItems,
//            recognizedDataType: vm.recognizedDataType,
//            recognizesMultipleItems: vm.recognizesMultipleItems)
//        .background { Color.gray.opacity(0.3) }
//        .ignoresSafeArea()
//        .id(vm.dataScannerViewId)
//        .sheet(isPresented: .constant(true)) {
//            bottomContainerView
//                .background(.ultraThinMaterial)
//                .presentationDetents([.medium, .fraction(0.25)])
//                .presentationDragIndicator(.visible)
//                .interactiveDismissDisabled()
//                .onAppear {
//                    guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//                          let controller = windowScene.windows.first?.rootViewController?.presentedViewController else {
//                        return
//                    }
//                    controller.view.backgroundColor = .clear
//                }
//        }
//        .onChange(of: vm.scanType) { _ in vm.recognizedItems = [] }
//        .onChange(of: vm.textContentType) { _ in vm.recognizedItems = [] }
//        .onChange(of: vm.recognizesMultipleItems) { _ in vm.recognizedItems = []}
//    }
//    
//    private var headerView: some View {
//        VStack {
//            HStack {
//                Picker("Scan Type", selection: $vm.scanType) {
//                    Text("Barcode").tag(ScanType.barcode)
//                    Text("Text").tag(ScanType.text)
//                }.pickerStyle(.segmented)
//                
//                Toggle("Scan multiple", isOn: $vm.recognizesMultipleItems)
//            }.padding(.top)
//            
//            if vm.scanType == .text {
//                Picker("Text content type", selection: $vm.textContentType) {
//                    ForEach(textContentTypes, id: \.self.textContentType) { option in
//                        Text(option.title).tag(option.textContentType)
//                    }
//                }.pickerStyle(.segmented)
//            }
//            
//            Text(vm.headerText).padding(.top)
//        }.padding(.horizontal)
//    }
//    
//    private var bottomContainerView: some View {
//        VStack {
//            headerView
//            ScrollView {
//                LazyVStack(alignment: .leading, spacing: 16) {
//                    ForEach(vm.recognizedItems) { item in
//                        switch item {
//                        case .barcode(let barcode):
//                            Text(barcode.payloadStringValue ?? "Unknown barcode")
//                            
//                        case .text(let text):
//                            Text(text.transcript)
//                            
//                        @unknown default:
//                            Text("Unknown")
//                        }
//                    }
//                }
//                .padding()
//            }
//        }
//    }
//}
//



import SwiftUI
import VisionKit


struct MainView: View {
    @State private var isSettingViewActive = false
    @State private var isMainViewActive = false
    @State var isActive: Bool = false
    @GestureState private var dragOffset: CGSize = .zero
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var vm: AppViewModel
    
    private let textContentTypes: [(title: String, textContentType: DataScannerViewController.TextContentType?)] = [
    ]
    
    var body: some View {
        switch vm.dataScannerAccessStatus {
        case .scannerAvailable:
            mainView
        case .cameraNotAvailable:
            Text("Your device doesn't have a camera")
        case .scannerNotAvailable:
            Text("Your device doesn't have support for scanning barcode with this app")
        case .cameraAccessNotGranted:
            Text("Please provide access to the camera in settings")
        case .notDetermined:
            Text("Requesting camera access")
        }
    }
    
//    private var mainView: some View {
//        DataScannerView(
//            recognizedItems: $vm.recognizedItems,
//            recognizedDataType: vm.recognizedDataType,
//            recognizesMultipleItems: vm.recognizesMultipleItems)
//        .background { Color.gray.opacity(0.3) }
//        .ignoresSafeArea()
//
//
//        .id(vm.dataScannerViewId)
//        .overlay(
//         BackButton()
//                .padding(.top, 44)
//                .padding(.leading, 16),
//                alignment: .topLeading
//            )
//
//        .sheet(isPresented: .constant(true)) {
//
//            bottomContainerView
//                .background(.ultraThinMaterial)
//               .presentationDetents([.medium, .fraction(0.2)])
//                .presentationDragIndicator(.visible)
//                .interactiveDismissDisabled()
//
//
//
//                .onAppear {
//                    guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//                          let controller = windowScene.windows.first?.rootViewController?.presentedViewController else {
//                        return
//                    }
//
//                    controller.view.backgroundColor = .clear
//                }
//
//        }
//
//        .onChange(of: vm.scanType) { _ in vm.recognizedItems = [] }
//        .onChange(of: vm.textContentType) { _ in vm.recognizedItems = [] }
//        .onChange(of: vm.recognizesMultipleItems) { _ in vm.recognizedItems = []}
//
//
//    }
    
    private var mainView: some View {
        VStack(spacing: 0) { // Add spacing between views
            ZStack {
                VStack {
                    DataScannerView(
                        recognizedItems: $vm.recognizedItems,
                        recognizedDataType: vm.recognizedDataType,
                        recognizesMultipleItems: vm.recognizesMultipleItems
                    )
                    .background { Color.gray.opacity(0.3) }
                    .ignoresSafeArea()
                    
//                    bottomContainerView
//                        .offset(y:100)
//                        .background(.ultraThinMaterial)
//                        .presentationDetents([.medium, .fraction(1.2)])
//                        .presentationDragIndicator(.visible)
//                        .interactiveDismissDisabled()
//                        .onAppear {
//                            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//                                  let controller = windowScene.windows.first?.rootViewController?.presentedViewController else {
//                                return
//                            }
//                            controller.view.backgroundColor = .clear
//                        }
                }
            }
            .id(vm.dataScannerViewId)
          
        }

    }

    

    private var headerView: some View {
        VStack {
            
            HStack {
                Picker("Scan Type", selection: $vm.scanType) {
                    Text("Barcode").tag(ScanType.barcode)
                    Text("Text").tag(ScanType.text)
                }
                .pickerStyle(.segmented)
            }
            .padding(.top)
          
            
            if vm.scanType == .text {
                Picker("Text content type", selection: $vm.textContentType) {
                    ForEach(textContentTypes, id: \.self.textContentType) { option in
                        Text(option.title).tag(option.textContentType)
                    }
                }.pickerStyle(.segmented)
            }
            
            Text(vm.headerText).padding(.top)
        }.padding(.horizontal)
    

        
        
    }
    
    private var bottomContainerView: some View {
        VStack {
            headerView
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 16) {
                    ForEach(vm.recognizedItems) { item in
                        switch item {
                        case .barcode(let barcode):
                            Text(barcode.payloadStringValue ?? "Unknown barcode")
                            
                        case .text(let text):
                            Text(text.transcript)
                            
                        @unknown default:
                            Text("Unknown")
                        }
                    }
                }
                
                .padding()
            }
        }
    }
}

struct BackButton: View {
    var body: some View {
        NavigationLink(destination: ContentView()) {
            Image(systemName: "chevron.left")
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(radius: 2)
              
        }
        
    }
}
