import SwiftUI


struct HealthPlannerContentView: View {
    @StateObject private var eventData = EventData()

    var body: some View {
        NavigationView {
            EventList()
            Text("Select an Event")
                .foregroundStyle(.secondary)
        }
        .environmentObject(eventData)
    }
}

//@main
struct HealthPlannerAppView: App {
    var body: some Scene {
        WindowGroup {
  //     HealthPlannerContentView()
        }
    }
}

