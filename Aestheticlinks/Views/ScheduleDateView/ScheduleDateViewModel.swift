import Foundation
import SwiftUI

class ScheduleDateViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var group186Text: String = ""
    @Published var zipcodeText: String = ""
}
