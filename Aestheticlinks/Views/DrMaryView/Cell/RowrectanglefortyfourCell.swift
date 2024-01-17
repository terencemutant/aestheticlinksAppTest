import SwiftUI

struct RowrectanglefortyfourCell: View {
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(73.0), height: getRelativeWidth(75.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.Bluegray50))
                ZStack(alignment: .leading) {
                    Image("img_rectangle29")
                        .resizable()
                        .frame(width: getRelativeWidth(74.0), height: getRelativeWidth(76.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0))
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(74.0), height: getRelativeWidth(76.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .Gray90000,
                                        ColorConstants
                                            .Black9008c]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(74.0), height: getRelativeWidth(76.0),
                       alignment: .leading)
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(74.0), height: getRelativeWidth(76.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblServiceName1)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kMsgDubaiUnitedA)
                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black90099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                HStack {
                    Image("img_female1363")
                        .resizable()
                        .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kMsgForFemalePati)
                        .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black90099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(13.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.trailing, getRelativeWidth(10.0))
                HStack {
                    Text(StringConstants.kLbl45)
                        .font(FontScheme.kDMSansRegular(size: getRelativeHeight(8.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black90099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(11.0),
                               alignment: .leading)
                    Image("img_star")
                        .resizable()
                        .frame(width: getRelativeWidth(6.0), height: getRelativeWidth(8.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLbl123456Reviews)
                        .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black90099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(13.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(10.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(66.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(8.0))
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .bottomLeading) {
                    Text(StringConstants.kMsg599Aed500A)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                    Divider()
                        .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(1.0),
                               alignment: .leading)
                        .background(ColorConstants.Cyan600)
                        .padding(.top, getRelativeHeight(12.68))
                        .padding(.trailing, getRelativeWidth(79.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                Text(StringConstants.kMsgTillOctober13)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray701)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(35.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(23.0))
        }
        .frame(width: getRelativeWidth(361.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowrectanglefortyfourCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowrectanglefortyfourCell()
 }
 } */
