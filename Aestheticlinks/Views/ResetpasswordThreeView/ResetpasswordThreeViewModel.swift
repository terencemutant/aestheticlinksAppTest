import Foundation
import SwiftUI

class ResetpasswordThreeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var passwordText: String = ""
    @Published var isValidPasswordText: Bool = true
    @Published var inputText: String = ""
}
