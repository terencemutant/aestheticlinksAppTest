import SwiftUI

struct CarouselitemCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .leading) {
                Image("img_image6")
                    .resizable()
                    .frame(width: getRelativeWidth(73.0), height: getRelativeWidth(75.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(76.0),
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
            .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(76.0),
                   alignment: .leading)
            HStack {
                Text(StringConstants.kLblDrJohn)
                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black90099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                Spacer()
                ZStack(alignment: .center) {
                    Image("img_image17")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                               alignment: .leading)
                        .scaledToFit()
                        .clipShape(Circle())
                        .clipShape(Circle())
                        .padding(.trailing, getRelativeWidth(10.0))
                    Image("img_image16")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                               alignment: .leading)
                        .scaledToFit()
                        .clipShape(Circle())
                        .clipShape(Circle())
                        .padding(.horizontal, getRelativeWidth(5.0))
                    Image("img_image5")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                               alignment: .leading)
                        .scaledToFit()
                        .clipShape(Circle())
                        .clipShape(Circle())
                        .padding(.leading, getRelativeWidth(10.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(17.0), height: getRelativeHeight(9.0),
                       alignment: .leading)
                .clipShape(Capsule())
            }
            .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(14.0),
                   alignment: .leading)
            .clipShape(Capsule())
            .padding(.top, getRelativeHeight(5.0))
        }
        .frame(width: getRelativeWidth(73.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct CarouselitemCell_Previews: PreviewProvider {

 static var previews: some View {
 			CarouselitemCell()
 }
 } */
