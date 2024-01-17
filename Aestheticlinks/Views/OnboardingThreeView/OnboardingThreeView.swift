import SwiftUI

struct OnboardingThreeView: View {
    @StateObject var onboardingThreeViewModel = OnboardingThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .leading) {
                    Image("img_bgcoveral1_794x393")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(794.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack {
                        HStack {
                            Text(StringConstants.kLblAesthetic)
                                .font(FontScheme.kPoppinsExtraLight(size: getRelativeHeight(30.0)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(45.0), alignment: .topLeading)
                            Image("img_layer2_white_a700")
                                .resizable()
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(27.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.bottom, getRelativeHeight(8.0))
                                .padding(.leading, getRelativeWidth(8.0))
                            Text(StringConstants.kLblLinks)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(30.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(68.0),
                                       height: getRelativeHeight(45.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(4.0))
                        }
                        .frame(width: getRelativeWidth(237.0), height: getRelativeHeight(45.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(79.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                        Text(StringConstants.kMsgYourGatewayTo)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(214.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(15.0))
                        PageIndicator(numPages: 3, currentPage: .constant(1),
                                      selectedColor: ColorConstants.WhiteA700,
                                      unSelectedColor: ColorConstants.Gray401, spacing: 4.0)
                        Button(action: {
                            onboardingThreeViewModel.nextScreen = "WelcomeView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblGetStarted)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(ColorConstants.Gray900))
                                    .padding(.vertical, getRelativeHeight(59.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(ColorConstants.Gray900))
                        .padding(.vertical, getRelativeHeight(59.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(794.0),
                           alignment: .leading)
                    .background(ColorConstants.Black90033)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WelcomeView(),
                                   tag: "WelcomeView",
                                   selection: $onboardingThreeViewModel.nextScreen,
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

struct OnboardingThreeView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingThreeView()
    }
}
