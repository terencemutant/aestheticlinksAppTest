import SwiftUI

struct AppointmentshistoryView: View {
    @StateObject var appointmentshistoryViewModel = AppointmentshistoryViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Image("img_image12")
                            .resizable()
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(129.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(26.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(20.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Black9004c)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(21.0))
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(8.0))
                                    .foregroundColor(ColorConstants.Gray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                            bottomLeft: 12.5, bottomRight: 12.5)
                                            .stroke(ColorConstants.Black9004c,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                               bottomLeft: 12.5, bottomRight: 12.5)
                                            .fill(Color.clear.opacity(0.7)))
                                    .onTapGesture {
                                        appointmentshistoryViewModel.nextScreen = "Landingpage1View"
                                    }
                                Spacer()
                                Text(StringConstants.kMsgYourAppointmen)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(159.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(77.0))
                            }
                            .frame(width: getRelativeWidth(261.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                            .padding(.trailing)
                            HStack {
                                Text(StringConstants.kLblScheduled)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black90099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(63.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.bottom, getRelativeHeight(11.0))
                                    .padding(.leading, getRelativeWidth(56.0))
                                    .onTapGesture {
                                        appointmentshistoryViewModel
                                            .nextScreen = "AppointmentsscheduledView"
                                    }
                                Spacer()
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblHistory)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(6.0))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(176.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0)
                                                    .fill(ColorConstants.Cyan60099))
                                            .padding(.vertical, getRelativeHeight(5.0))
                                            .padding(.trailing, getRelativeWidth(5.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(176.0),
                                       height: getRelativeHeight(30.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Cyan60099))
                                .padding(.vertical, getRelativeHeight(5.0))
                                .padding(.trailing, getRelativeWidth(5.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(33.0))
                            Image("img_group")
                                .resizable()
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(79.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(198.0))
                                .padding(.horizontal, getRelativeWidth(80.0))
                            Text(StringConstants.kMsgYouDonTHave)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(203.0),
                                       height: getRelativeHeight(44.0), alignment: .center)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(80.0))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(433.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(433.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Landingpage1View(),
                                   tag: "Landingpage1View",
                                   selection: $appointmentshistoryViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AppointmentsscheduledView(),
                                   tag: "AppointmentsscheduledView",
                                   selection: $appointmentshistoryViewModel.nextScreen,
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

struct AppointmentshistoryView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentshistoryView()
    }
}
