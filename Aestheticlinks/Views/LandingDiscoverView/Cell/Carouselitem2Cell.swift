import SwiftUI

struct Carouselitem2Cell: View {
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Image("img_101789276592")
                    .resizable()
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(164.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                               bottomRight: 7.0))
                VStack {
                    Text(StringConstants.kLblClinicNo1)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(132.0))
                        .padding(.horizontal, getRelativeWidth(17.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(164.0),
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
            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(164.0),
                   alignment: .leading)
            HStack {
                Text(StringConstants.kMsgDubaiUnitedA)
                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black90099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(14.0),
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
                    Text(StringConstants.kLbl123456Reviews)
                        .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black90099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
            }
            .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(14.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(7.0))
            .padding(.trailing, getRelativeWidth(10.0))
        }
        .frame(width: getRelativeWidth(335.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Carouselitem2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Carouselitem2Cell()
 }
 } */
