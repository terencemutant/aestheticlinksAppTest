import SwiftUI

struct ConfirmchangesView: View {
    @StateObject var confirmchangesViewModel = ConfirmchangesViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            Divider()
                                .frame(width: getRelativeWidth(60.0),
                                       height: getRelativeHeight(4.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Gray900))
                                .padding(.horizontal, getRelativeWidth(167.0))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(3.0), alignment: .leading)
                                .background(ColorConstants.Cyan600)
                                .padding(.top, getRelativeHeight(69.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(76.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(76.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(14.0))
                    VStack {
                        Button(action: {}, label: {
                            Image("img_illustrationsu")
                        })
                        .frame(width: getRelativeWidth(91.0), height: getRelativeWidth(91.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 45.5, topRight: 45.5, bottomLeft: 45.5,
                                                   bottomRight: 45.5)
                                .fill(ColorConstants.Cyan60063))
                        .padding(.horizontal, getRelativeWidth(13.0))
                        Text(StringConstants.kLblChangesSaved)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(199.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(13.0))
                        Text(StringConstants.kMsgLoremIpsumDol6)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(307.0), height: getRelativeHeight(37.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(13.0))
                        Button(action: {
                            confirmchangesViewModel.nextScreen = "AppointmentsscheduledView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblConfirm)
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
                                    .padding(.top, getRelativeHeight(66.0))
                                    .padding(.horizontal, getRelativeWidth(13.0))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(ColorConstants.Gray900))
                        .padding(.top, getRelativeHeight(66.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(300.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(42.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: AppointmentsscheduledView(),
                                   tag: "AppointmentsscheduledView",
                                   selection: $confirmchangesViewModel.nextScreen,
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

struct ConfirmchangesView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmchangesView()
    }
}
