import SwiftUI

struct RowellipsethirteenCell: View {
    var body: some View {
        HStack {
            HStack {
                ZStack(alignment: .leading) {
                    Image("img_image6")
                        .resizable()
                        .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0))
                    ZStack {
                        Image("img_image7_50x50")
                            .resizable()
                            .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                        .Gray90000,
                                    ColorConstants
                                        .Gray900]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgDrNikolaKova)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                    HStack {
                        ZStack(alignment: .center) {
                            Image("img_image17")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                                       alignment: .leading)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                                .padding(.trailing, getRelativeWidth(8.0))
                            Image("img_image16")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                                       alignment: .leading)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                                .padding(.horizontal, getRelativeWidth(4.44))
                            Image("img_image5")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                                       alignment: .leading)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                                .padding(.leading, getRelativeWidth(8.89))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(16.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                        .clipShape(Capsule())
                        Text(StringConstants.kMsgEnglishArabic)
                            .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black90066)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .clipShape(Capsule())
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(36.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(13.0))
            }
            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(50.0),
                   alignment: .leading)
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(14.0), height: getRelativeWidth(16.0),
                       alignment: .leading)
                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                        bottomRight: 8.0)
                        .stroke(ColorConstants.Black90099,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.leading, getRelativeWidth(155.0))
        }
        .frame(width: getRelativeWidth(348.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowellipsethirteenCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowellipsethirteenCell()
 }
 } */
