import SwiftUI

struct RowCell: View {
    var body: some View {
        HStack {
            HStack {
                ZStack(alignment: .center) {
                    Image("img_vector_cyan_600_34x26")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .scaledToFit()
                    VStack {
                        Image("img_festivallogo1")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(22.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                    }
                    .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(22.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(ColorConstants.Bluegray101))
                    .padding(.bottom, getRelativeHeight(10.0))
                    .padding(.horizontal, getRelativeWidth(2.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(34.0),
                       alignment: .leading)
                Text(StringConstants.kLblClinicNumber1)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(8.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black905)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(34.0),
                   alignment: .leading)
            HStack {
                ZStack(alignment: .center) {
                    Image("img_vector_cyan_600_34x26")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .scaledToFit()
                    VStack {
                        Image("img_festivallogo1")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(22.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                    }
                    .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(22.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(ColorConstants.Bluegray101))
                    .padding(.bottom, getRelativeHeight(10.0))
                    .padding(.horizontal, getRelativeWidth(2.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(34.0),
                       alignment: .leading)
                Text(StringConstants.kLblClinicNumber1)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(8.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black905)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(34.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(140.0))
        }
        .frame(width: getRelativeWidth(317.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowCell()
 }
 } */
