import SwiftUI

struct ColumntypeCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(StringConstants.kLblType)
                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(33.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.trailing)
            Text(StringConstants.kMsg212HoursBefo)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray901)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(202.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
                .padding(.trailing, getRelativeWidth(10.0))
            HStack {
                Text(StringConstants.kMsgCancellationFe)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLblRescheduleFee)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(289.0), height: getRelativeHeight(21.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(6.0))
            HStack {
                Text(StringConstants.kMsg25OfAppointm)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLblFreeOfCharge)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(23.0))
            }
            .frame(width: getRelativeWidth(264.0), height: getRelativeHeight(18.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(9.0))
            .padding(.trailing, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(289.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ColumntypeCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumntypeCell()
 }
 } */
