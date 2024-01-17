import Foundation
import SwiftUI

class OnboardingOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var dropdownboxPicker1: String = "Option 1"
    @Published var dropdownboxPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
