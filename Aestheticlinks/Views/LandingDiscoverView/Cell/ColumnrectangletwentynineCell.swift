import SwiftUI

struct ColumnrectangletwentynineCell: View {
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Image("img_rectangle29")
                    .resizable()
                    .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(160.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                VStack {
                    Image("img_festivallogo1_35x35")
                        .resizable()
                        .frame(width: getRelativeWidth(33.0), height: getRelativeWidth(35.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0))
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.leading, getRelativeWidth(116.0))
                        .padding(.trailing, getRelativeWidth(8.0))
                    Text(StringConstants.kMsgLoremIpsumDol8)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(96.0))
                        .padding(.horizontal, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(160.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Gray90000,
                                                                         ColorConstants
                                                                             .Black90099]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(160.0),
                   alignment: .leading)
            HStack {
                Text(StringConstants.kLblClinicName)
                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black90099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                Spacer()
                HStack {
                    Text(StringConstants.kLbl45)
                        .font(FontScheme.kDMSansRegular(size: getRelativeHeight(8.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black90099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(11.0),
                               alignment: .leading)
                    Image("img_star_teal_400")
                        .resizable()
                        .frame(width: getRelativeWidth(6.0), height: getRelativeWidth(8.0),
                               alignment: .leading)
                        .scaledToFit()
                }
                .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(11.0),
                       alignment: .leading)
            }
            .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(13.0),
                   alignment: .leading)
            .padding(.horizontal, getRelativeWidth(8.0))
        }
        .frame(width: getRelativeWidth(157.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ColumnrectangletwentynineCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnrectangletwentynineCell()
 }
 } */
