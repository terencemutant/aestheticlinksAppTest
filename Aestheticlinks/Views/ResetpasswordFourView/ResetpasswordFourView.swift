import SwiftUI

struct ResetpasswordFourView: View {
    @StateObject var resetpasswordFourViewModel = ResetpasswordFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        ZStack {
                            Image("img_iconsuccess")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeWidth(100.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(11.5))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(124.0), height: getRelativeWidth(124.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 62.0, topRight: 62.0, bottomLeft: 62.0,
                                                   bottomRight: 62.0)
                                .fill(ColorConstants.Cyan60063))
                        .padding(.horizontal, getRelativeWidth(119.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(124.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(195.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack(alignment: .trailing, spacing: 0) {
                        Text(StringConstants.kMsgPasswordChange)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(237.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(50.0))
                        Text(StringConstants.kMsgPasswordChange2)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(262.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(38.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(79.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(40.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                    VStack {
                        Button(action: {
                            resetpasswordFourViewModel.nextScreen = "SigninView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSignIn)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(ColorConstants.Gray900))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Gray900))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(291.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SigninView(),
                                   tag: "SigninView",
                                   selection: $resetpasswordFourViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ResetpasswordFourView_Previews: PreviewProvider {
    static var previews: some View {
        ResetpasswordFourView()
    }
}
