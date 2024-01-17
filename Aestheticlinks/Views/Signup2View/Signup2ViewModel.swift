import Foundation
import SwiftUI

class Signup2ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var inputText: String = ""
    @Published var isValidInputText: Bool = true
    @Published var inputoneText: String = ""
    @Published var isValidInputoneText: Bool = true
    @Published var inputtwoText: String = ""
    @Published var isValidInputtwoText: Bool = true
    @Published var inputthreeText: String = ""
    @Published var iagreewithteCheckbox: Bool = false
}
