import SwiftUI

struct StackrectanglethirtysevenCell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(194.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Gray90000,
                                                                         ColorConstants.Gray9003f]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)))
                .padding(.trailing, getRelativeWidth(14.0))
            ZStack(alignment: .bottomLeading) {
                Image("img_101789276592_194x174")
                    .resizable()
                    .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(194.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                HStack {
                    Image("img_vector_cyan_600_11x11")
                        .resizable()
                        .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(11.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(28.0))
                    Text(StringConstants.kMsgDiamondMembers)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(9.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Cyan600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(11.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                        .padding(.trailing, getRelativeWidth(29.0))
                }
                .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(30.0),
                       alignment: .leading)
                .overlay(RoundedCorners(bottomLeft: 7.0, bottomRight: 7.0)
                    .stroke(ColorConstants.Black90019, lineWidth: 1))
                .background(RoundedCorners(bottomLeft: 7.0, bottomRight: 7.0)
                    .fill(ColorConstants.WhiteA700))
                .padding(.top, getRelativeHeight(164.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(194.0),
                   alignment: .leading)
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(172.0), alignment: .leading)
    }
}

/* struct StackrectanglethirtysevenCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackrectanglethirtysevenCell()
 }
 } */
