import SwiftUI



struct BarcodeTextScannerView: View {
    @StateObject private var vm = AppViewModel()

    var body: some View {
        MainView()
            .environmentObject(vm)
            .task {
                await vm.requestDataScannerAccessStatus()
            }
    }
}
struct BarcodeTextScannerApp: App {

    
    var body: some Scene {
        WindowGroup {
            BarcodeTextScannerView()
//            ContentView()
//                .environmentObject(vm)
//                .task {
//                    await vm.requestDataScannerAccessStatus()
//                }
        }
    }
}

