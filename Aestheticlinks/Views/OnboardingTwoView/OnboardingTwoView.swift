import SwiftUI

struct OnboardingTwoView: View {
    @StateObject var onboardingTwoViewModel = OnboardingTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        HStack {
                            Text(StringConstants.kLblAesthetic)
                                .font(FontScheme.kPoppinsExtraLight(size: getRelativeHeight(30.0)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.Cyan600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(45.0), alignment: .topLeading)
                            Image("img_layer2")
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
                                .foregroundColor(ColorConstants.Cyan600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(68.0),
                                       height: getRelativeHeight(45.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(4.0))
                        }
                        .frame(width: getRelativeWidth(237.0), height: getRelativeHeight(45.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(19.0))
                        Text(StringConstants.kMsgYourGatewayTo)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(214.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(19.0))
                        Text(StringConstants.kMsgWelcomeToAest)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(32.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(83.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(103.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                        Text(StringConstants.kMsgLoremIpsumDol2)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(19.0))
                        Picker(StringConstants.kLblSelectACity,
                               selection: $onboardingTwoViewModel.dropdownboxPicker1) {
                            ForEach(onboardingTwoViewModel.dropdownboxPicker1Values,
                                    id: \.self) { value in
                                Text(value)
                            }
                        }
                        .foregroundColor(ColorConstants.Gray600)
                        .font(.system(size: getRelativeHeight(16)))
                        .pickerStyle(MenuPickerStyle())
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(8.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Gray9003f))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(8.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Gray900))
                                .padding(.leading, getRelativeWidth(4.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(8.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Gray9003f))
                                .padding(.leading, getRelativeWidth(4.0))
                        }
                        .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(8.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(179.0))
                        .padding(.horizontal, getRelativeWidth(19.0))
                        HStack {
                            Text(StringConstants.kLblBack)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .onTapGesture {
                                    onboardingTwoViewModel.nextScreen = "OnboardingOneView"
                                }
                            Spacer()
                            HStack {
                                Text(StringConstants.kLblNext)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                Image("img_icon_gray_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeHeight(10.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(10.0))
                            }
                            .onTapGesture {
                                onboardingTwoViewModel.nextScreen = "OnboardingThreeView"
                            }
                            .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(21.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(39.0))
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(632.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(91.48))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OnboardingOneView(),
                                   tag: "OnboardingOneView",
                                   selection: $onboardingTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: OnboardingThreeView(),
                                   tag: "OnboardingThreeView",
                                   selection: $onboardingTwoViewModel.nextScreen,
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

struct OnboardingTwoView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTwoView()
    }
}
