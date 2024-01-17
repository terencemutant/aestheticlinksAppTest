import SwiftUI

struct Columnpricelowtoh1Cell: View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.kMsgPriceLowToH)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                Spacer()
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(7.0), height: getRelativeWidth(9.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                            bottomRight: 2.0)
                            .stroke(ColorConstants.Gray901,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                               bottomRight: 2.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.bottom, getRelativeHeight(4.0))
            }
            .frame(width: getRelativeWidth(175.0), height: getRelativeHeight(15.0),
                   alignment: .leading)
            .padding(.horizontal, getRelativeWidth(6.0))
            Divider()
                .frame(width: getRelativeWidth(189.0), height: getRelativeHeight(1.0),
                       alignment: .leading)
                .background(ColorConstants.Black9004c)
        }
        .frame(width: getRelativeWidth(189.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0, bottomRight: 2.0))
        .hideNavigationBar()
    }
}

/* struct Columnpricelowtoh1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Columnpricelowtoh1Cell()
 }
 } */
