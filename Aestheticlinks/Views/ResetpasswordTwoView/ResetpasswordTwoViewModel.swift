import Foundation
import SwiftUI

class ResetpasswordTwoViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var otpviewOTP1: String = ""
}
