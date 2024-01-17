import Foundation
import SwiftUI

class CheckoutnewcardViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var group222Text: String = ""
    @Published var groupfiftyText: String = ""
    @Published var isValidGroupfiftyText: Bool = true
    @Published var groupfortynineText: String = ""
    @Published var isValidGroupfortynineText: Bool = true
    @Published var languageText: String = ""
}
