import SwiftUI

struct RowsunCell: View {
    var body: some View {
        HStack {
            Text(StringConstants.kLblSun)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
            Text(StringConstants.kLblMon)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(32.0))
            Text(StringConstants.kLblTue)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(31.0))
            Text(StringConstants.kLblWed)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(34.0))
            Text(StringConstants.kLblThu)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(26.0))
            Text(StringConstants.kLblFri)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(30.0))
            Text(StringConstants.kLblSat)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(28.0))
        }
        .frame(width: getRelativeWidth(359.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowsunCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowsunCell()
 }
 } */
