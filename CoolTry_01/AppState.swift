import Foundation
import Combine

class AppState: ObservableObject {
    static let shared = AppState()
    @Published var name: String {
        didSet {
            UserDefaults.standard.set(name, forKey: "nameKey")
        }
    }
    private init() {
        self.name = UserDefaults.standard.string(forKey: "nameKey") ?? ""
    }
}
