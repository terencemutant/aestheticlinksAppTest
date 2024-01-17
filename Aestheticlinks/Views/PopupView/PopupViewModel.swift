import Foundation
import SwiftUI

class PopupViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var groupthreeText: String = ""
}
