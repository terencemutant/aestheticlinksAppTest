import Foundation
import SwiftUI

class LocationpermissionViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var preciseswitcheText: String = ""
}
