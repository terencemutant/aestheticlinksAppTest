import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kPoppinsExtraLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsExtraLight, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kDMSansBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kDMSansBold, size: size)
    }

    static func kDMSansRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kDMSansRegular, size: size)
    }

    static func kActionSansMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kActionSansMedium, size: size)
    }

    static func kSFProTextSemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextSemibold, size: size)
    }

    static func kSFProTextRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kPoppinsExtraLight":
            result = self.kPoppinsExtraLight(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kDMSansBold":
            result = self.kDMSansBold(size: size)
        case "kDMSansRegular":
            result = self.kDMSansRegular(size: size)
        case "kActionSansMedium":
            result = self.kActionSansMedium(size: size)
        case "kSFProTextSemibold":
            result = self.kSFProTextSemibold(size: size)
        case "kSFProTextRegular":
            result = self.kSFProTextRegular(size: size)
        default:
            result = self.kPoppinsRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsExtraLight: String = "Poppins-ExtraLight"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "InterMedium"
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "InterSemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kDMSansBold: String = "DMSans-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kDMSansRegular: String = "DMSans-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kActionSansMedium: String = "ActionSans-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextSemibold: String = "SFProText-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextRegular: String = "SFProText-Regular"
    }
}
