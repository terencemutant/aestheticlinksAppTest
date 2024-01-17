import Foundation
import SwiftUI

class ResetpasswordViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var emailoneText: String = ""
    @Published var isValidEmailoneText: Bool = true
}
