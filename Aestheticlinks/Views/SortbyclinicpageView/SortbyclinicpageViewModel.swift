import Foundation
import SwiftUI

class SortbyclinicpageViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var groupfiftytwoText: String = ""
    @Published var group312Text: String = ""
    @Published var isValidGroup312Text: Bool = true
    @Published var group314Text: String = ""
    @Published var isValidGroup314Text: Bool = true
    @Published var group316Text: String = ""
    @Published var group318Text: String = ""
}
