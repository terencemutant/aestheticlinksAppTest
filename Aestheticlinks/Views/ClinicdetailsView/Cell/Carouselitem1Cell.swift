import SwiftUI

struct Carouselitem1Cell: View {
    var body: some View {
        ZStack(alignment: .center) {
            Image("img_rectangle31_164x363")
                .resizable()
                .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(164.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(14.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblJamesSmith)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kMsgLoremIpsumDol4)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(45.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(14.0))
                HStack {
                    Image("img_star_teal_400")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .scaledToFit()
                    Image("img_star_teal_400")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(4.0))
                    Image("img_star_teal_400")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(4.0))
                    Image("img_star_teal_400")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(4.0))
                    Image("img_star_gray_701")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(4.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(12.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(14.0))
                .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(104.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(29.0))
            .padding(.bottom, getRelativeHeight(31.0))
            .padding(.leading, getRelativeWidth(38.0))
            .padding(.trailing, getRelativeWidth(23.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(375.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0, bottomRight: 8.0))
        .shadow(color: ColorConstants.Black90026, radius: 15, x: 0, y: 0)
    }
}

/* struct Carouselitem1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Carouselitem1Cell()
 }
 } */
