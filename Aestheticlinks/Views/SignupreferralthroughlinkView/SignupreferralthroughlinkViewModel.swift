import Foundation
import SwiftUI

class SignupreferralthroughlinkViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var inputText: String = ""
}
