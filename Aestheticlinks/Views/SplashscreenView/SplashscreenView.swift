import SwiftUI

struct SplashscreenView: View {
    @StateObject var splashscreenViewModel = SplashscreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Text(StringConstants.kLblAesthetic)
                            .font(FontScheme.kPoppinsExtraLight(size: getRelativeHeight(40.0)))
                            .fontWeight(.light)
                            .foregroundColor(ColorConstants.Cyan600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(181.0), height: getRelativeHeight(60.0),
                                   alignment: .topLeading)
                        Image("img_layer2")
                            .resizable()
                            .frame(width: getRelativeWidth(26.0), height: getRelativeHeight(36.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.bottom, getRelativeHeight(11.0))
                            .padding(.leading, getRelativeWidth(4.0))
                        Text(StringConstants.kLblLinks)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(40.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Cyan600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(60.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(5.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(338.0))
                    .padding(.horizontal, getRelativeWidth(42.0))
                    Text(StringConstants.kMsgYourGatewayTo)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(42.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OnboardingOneView(),
                                   tag: "OnboardingOneView",
                                   selection: $splashscreenViewModel.nextScreen,
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

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
