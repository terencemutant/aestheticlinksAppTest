
import Foundation

extension String {
    // MARK: - Check is valid Text

    func isText(isMandatory: Bool = false) -> Bool {
        if isEmpty() {
            return !isMandatory
        }
        let regExpression = "^[a-zA-Z]+$"
        let str = NSPredicate(format: "SELF MATCHES %@", regExpression)
        if str.evaluate(with: self) {
            if CInt(self) != 0 {
                return true
            }
        }
        return false
    }

    // MARK: - Check is valid Email

    func isValidEmail(isMandatory: Bool = false) -> Bool {
        if isEmpty() {
            return !isMandatory
        }
        let str = self.removeWhiteSpaces()
        let regExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regExpression)
        return predicate.evaluate(with: str)
    }

    // MARK: - Check is valid Password

    // Password should have, at least 1 upper case letter, at least 1 lower case letter, at least 1 digit, at least 1 special character [@#\$%^&+=], length of at least 8, and no white spaces allowed
    func isValidPassword(isMandatory: Bool = false) -> Bool {
        if isEmpty() {
            return !isMandatory
        }
        let regExpression =
            "^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\\d]){1,})(?=(.*[\\W]){1,})(?!.*\\s).{8,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regExpression)
        return predicate.evaluate(with: self)
    }

    // MARK: - Check is valid Number

    func isNumeric(isMandatory: Bool = false) -> Bool {
        if isEmpty() {
            return !isMandatory
        }
        let hasLetters = rangeOfCharacter(from: .letters, options: .numeric, range: nil) != nil
        let hasNumbers = rangeOfCharacter(from: .decimalDigits, options: .literal, range: nil) !=
            nil
        return !hasLetters && hasNumbers
    }

    // MARK: - Removes whitespaces

    func removeWhiteSpaces() -> String {
        var str = self.trimmingCharacters(in: .whitespaces)
        str = str.replacingOccurrences(of: " ", with: "")
        return str
    }

    // MARK: - Check isEmpty

    func isEmpty() -> Bool {
        if self.isEmpty || self == "" {
            return true
        }
        return false
    }
}
