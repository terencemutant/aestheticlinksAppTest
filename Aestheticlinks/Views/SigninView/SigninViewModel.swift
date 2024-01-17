import Foundation
import SwiftUI

class SigninViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var emailoneText: String = ""
    @Published var isValidEmailoneText: Bool = true
    @Published var passwordoneText: String = ""
    @Published var isValidPasswordoneText: Bool = true
}
