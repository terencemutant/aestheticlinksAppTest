import SwiftUI

struct AppointmentsscheduledView: View {
    @StateObject var appointmentsscheduledViewModel = AppointmentsscheduledViewModel()
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
                                        appointmentsscheduledViewModel
                                            .nextScreen = "Landingpage1View"
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
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblScheduled)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(6.0))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(176.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .topLeading)
                                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                                       bottomLeft: 2.0,
                                                                       bottomRight: 2.0)
                                                    .fill(ColorConstants.Cyan60099))
                                            .padding(.vertical, getRelativeHeight(5.0))
                                            .padding(.leading, getRelativeWidth(5.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(176.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Cyan60099))
                                .padding(.vertical, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(5.0))
                                Spacer()
                                Text(StringConstants.kLblHistory)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black90099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(41.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.bottom, getRelativeHeight(10.0))
                                    .padding(.trailing, getRelativeWidth(65.0))
                                    .onTapGesture {
                                        appointmentsscheduledViewModel
                                            .nextScreen = "AppointmentshistoryView"
                                    }
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
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    ZStack(alignment: .leading) {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(75.0),
                                                   height: getRelativeWidth(75.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                       bottomLeft: 8.0,
                                                                       bottomRight: 8.0)
                                                    .fill(ColorConstants.Bluegray50))
                                        ZStack(alignment: .leading) {
                                            Image("img_rectangle29")
                                                .resizable()
                                                .frame(width: getRelativeWidth(76.0),
                                                       height: getRelativeWidth(76.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(76.0),
                                                       height: getRelativeWidth(76.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 8.0,
                                                                           topRight: 8.0,
                                                                           bottomLeft: 8.0,
                                                                           bottomRight: 8.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .Black90000,
                                                                ColorConstants
                                                                    .Black9008c]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(76.0),
                                               height: getRelativeWidth(76.0), alignment: .leading)
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(76.0),
                                           height: getRelativeWidth(76.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblClinicName)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(74.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                        ZStack(alignment: .bottomLeading) {
                                            Text(StringConstants.kMsgFacialTreatmen2)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black90099)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(77.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .topLeading)
                                                .padding(.bottom, getRelativeHeight(13.0))
                                            Text(StringConstants.kLblDrJohn)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black90099)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(37.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(12.05))
                                                .padding(.trailing, getRelativeWidth(40.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(77.0),
                                               height: getRelativeHeight(25.0), alignment: .leading)
                                        Text(StringConstants.kLblOct182023)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(10.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black90099)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(58.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        Text(StringConstants.kLblStartsAt1300)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(10.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black90099)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(67.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(9.0))
                                    }
                                    .frame(width: getRelativeWidth(77.0),
                                           height: getRelativeHeight(68.0), alignment: .center)
                                    Spacer()
                                    VStack(alignment: .trailing, spacing: 0) {
                                        HStack {
                                            Text(StringConstants.kLbl45Mins)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray701)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(40.0),
                                                       height: getRelativeHeight(15.0),
                                                       alignment: .topLeading)
                                            Spacer()
                                            Text(StringConstants.kLblEdit)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray701)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(22.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                                .onTapGesture {
                                                    appointmentsscheduledViewModel
                                                        .nextScreen = "AppointmentseditpageView"
                                                }
                                        }
                                        .frame(width: getRelativeWidth(199.0),
                                               height: getRelativeHeight(18.0), alignment: .leading)
                                        Text(StringConstants.kLbl500Aed)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(75.0),
                                                   height: getRelativeHeight(27.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(6.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(199.0),
                                           height: getRelativeHeight(51.0), alignment: .top)
                                    .padding(.vertical, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(76.0), alignment: .leading)
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .leading)
                                    .background(ColorConstants.Black90026)
                                    .padding(.top, getRelativeHeight(10.0))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(87.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0))
                            .padding(.top, getRelativeHeight(30.0))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(216.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(216.0),
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
                                   selection: $appointmentsscheduledViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AppointmentshistoryView(),
                                   tag: "AppointmentshistoryView",
                                   selection: $appointmentsscheduledViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AppointmentseditpageView(),
                                   tag: "AppointmentseditpageView",
                                   selection: $appointmentsscheduledViewModel.nextScreen,
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

struct AppointmentsscheduledView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentsscheduledView()
    }
}
