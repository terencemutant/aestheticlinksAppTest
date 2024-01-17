import SwiftUI

struct ServicefilterView: View {
    @StateObject var servicefilterViewModel = ServicefilterViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblCategory)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                HStack {
                    TextField(StringConstants.kLblAll,
                              text: $servicefilterViewModel.groupseventynineText)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .foregroundColor(ColorConstants.Gray901)
                        .padding()
                    Image("img_vector_black_901")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(4.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.bottom, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        .padding(.trailing, getRelativeWidth(9.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                        bottomRight: 4.0)
                        .stroke(ColorConstants.Black9004c,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                           bottomRight: 4.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.horizontal, getRelativeWidth(10.0))
                Text(StringConstants.kLblServiceType)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                HStack {
                    TextField(StringConstants.kLblAny,
                              text: $servicefilterViewModel.groupeightyText)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .foregroundColor(ColorConstants.Gray901)
                        .padding()
                    Image("img_vector_black_901")
                        .resizable()
                        .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(4.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.bottom, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        .padding(.trailing, getRelativeWidth(9.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                        bottomRight: 4.0)
                        .stroke(ColorConstants.Black9004c,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                           bottomRight: 4.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.horizontal, getRelativeWidth(10.0))
                Text(StringConstants.kLblDateTime)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                HStack {
                    HStack {
                        Text(StringConstants.kLblDate)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray701)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(6.0))
                        Image("img_vector_black_901")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(4.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(44.0))
                            .padding(.trailing, getRelativeWidth(9.0))
                    }
                    .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(30.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                            bottomRight: 4.0)
                            .stroke(ColorConstants.Black9004c,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                               bottomRight: 4.0)
                            .fill(Color.clear.opacity(0.7)))
                    Spacer()
                    HStack {
                        Text(StringConstants.kLblTime)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray701)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(6.0))
                        Image("img_vector_black_901")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(4.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(44.0))
                            .padding(.trailing, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(30.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                            bottomRight: 4.0)
                            .stroke(ColorConstants.Black9004c,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                               bottomRight: 4.0)
                            .fill(Color.clear.opacity(0.7)))
                }
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(4.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblDone)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(10.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(ColorConstants.Gray900))
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                    }
                })
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                           bottomRight: 4.0)
                        .fill(ColorConstants.Gray900))
                .padding(.top, getRelativeHeight(17.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblReset)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(10.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray900,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.vertical, getRelativeHeight(4.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                    }
                })
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(30.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                        bottomRight: 4.0)
                        .stroke(ColorConstants.Gray900,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                           bottomRight: 4.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.vertical, getRelativeHeight(4.0))
                .padding(.horizontal, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(277.0),
                   alignment: .leading)
            .overlay(RoundedCorners().stroke(ColorConstants.Black9004c, lineWidth: 0))
            .background(RoundedCorners().fill(ColorConstants.WhiteA700))
            .padding(.bottom, getRelativeHeight(4.0))
        }
        .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(281.0))
        .shadow(color: ColorConstants.Black90026, radius: 15, x: 0, y: 0)
        .hideNavigationBar()
    }
}

struct ServicefilterView_Previews: PreviewProvider {
    static var previews: some View {
        ServicefilterView()
    }
}
