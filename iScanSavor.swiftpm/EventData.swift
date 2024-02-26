import SwiftUI

class EventData: ObservableObject {
    @Published var events: [Event] = [
        Event(symbol: "facemask.fill",
              color: .indigo,
              title: "Doctor's Appointment",
              tasks: [EventTask(text: "Bring medical ID"),
                      EventTask(text: "Record heart rate data"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 30)),
        
        
        
        Event(symbol: "flame.fill",
              color: .red,
              title: "Activity",
              tasks: [EventTask(text: "Cycling"),
                      EventTask(text: "Cardio Recovery"),
                      EventTask(text: "Exercise"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 22)),
        
        
    
        
        
        Event(symbol: "figure.run.square.stack.fill",
              color: .cyan,
              title: "Self Care Practices",
              tasks: [EventTask(text: "Mindfulness Meditation"),
                      EventTask(text: "Physical Activity"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 2)),
        
        
        
        Event(symbol: "allergens.fill",
              color: .cyan,
              title: "Allergy Strategies",
              tasks: [
                  EventTask(text: "Identify Triggers"),
                  EventTask(text: "Medication Adherence"),
                  EventTask(text: "Regular Check-ups"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 365)),
        
        

        
        Event(symbol: "bed.double.fill",
              color: .blue,
              title: "Sleep Schedule",
              tasks: [
                  EventTask(text: "Consistent Bedtime Routine"),
                  EventTask(text: "Optimize Sleep Environment"),
                  EventTask(text: "Limit Stimulants and Alcohol"),
                  EventTask(text: "Mindful Eating"),
              ],
              date: Date.from(month: 6, day: 7, year: 2021)),
        
        
        Event(symbol: "pills.fill",
              color: .orange,
              title: "Medicine Routine",
              tasks: [
                  EventTask(text: "Follow Prescribed Dosage"),
                  EventTask(text: "Store Medications Properly"),

              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 19)),
        
        
    ]

    func delete(_ event: Event) {
        events.removeAll { $0.id == event.id }
    }
    
    func add(_ event: Event) {
        events.append(event)
    }
    
    func exists(_ event: Event) -> Bool {
        events.contains(event)
    }
    
    func sortedEvents(period: Period) -> Binding<[Event]> {
        Binding<[Event]>(
            get: {
                self.events
                    .filter {
                        switch period {
                        case .nextSevenDays:
                            return $0.isWithinSevenDays
                        case .nextThirtyDays:
                            return $0.isWithinSevenToThirtyDays
                        case .future:
                            return $0.isDistant
                        case .past:
                            return $0.isPast
                        }
                    }
                    .sorted { $0.date < $1.date }
            },
            set: { events in
                for event in events {
                    if let index = self.events.firstIndex(where: { $0.id == event.id }) {
                        self.events[index] = event
                    }
                }
            }
        )
    }
}

enum Period: String, CaseIterable, Identifiable {
    case nextSevenDays = "Next 7 days"
    case nextThirtyDays = "Next 30 days"
    case future = "Future"
    case past = "Past"
    
    var id: String { self.rawValue }
    var name: String { self.rawValue }
}

extension Date {
    static func from(month: Int, day: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let calendar = Calendar(identifier: .gregorian)
        if let date = calendar.date(from: dateComponents) {
            return date
        } else {
            return Date()
        }
    }

    static func roundedHoursFromNow(_ hours: Double) -> Date {
        let exactDate = Date(timeIntervalSinceNow: hours)
        guard let hourRange = Calendar.current.dateInterval(of: .hour, for: exactDate) else {
            return exactDate
        }
        return hourRange.end
    }
}
