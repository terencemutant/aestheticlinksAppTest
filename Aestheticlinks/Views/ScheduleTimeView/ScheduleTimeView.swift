import SwiftUI

struct ScheduleTimeView: View {
    @StateObject var scheduleTimeViewModel = ScheduleTimeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        HStack {
                            VStack {
                                Divider()
                                    .frame(width: getRelativeWidth(60.0),
                                           height: getRelativeHeight(4.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                               bottomLeft: 2.0, bottomRight: 2.0)
                                            .fill(ColorConstants.Gray900))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                HStack {
                                    Text(StringConstants.kLblChooseATime)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(121.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kMsgDuration45Mi)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray701)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(104.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(6.0))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.top, getRelativeHeight(30.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                                Divider()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(3.0), alignment: .leading)
                                    .background(ColorConstants.Cyan600)
                                    .padding(.top, getRelativeHeight(14.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(76.0), alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0))
                        Text(StringConstants.kMsgOctober10202)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl800)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Gray402)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Gray402,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Gray402,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl900)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Gray402)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Gray402,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Gray402,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl1000)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Gray402)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Gray402,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Gray402,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl1100)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Black90099,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black90099,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl1200)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Gray402)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Gray402,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Gray402,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl1300)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Cyan600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Cyan600,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.Cyan6003f))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Cyan600,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.Cyan6003f))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl1400)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Black90099,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black90099,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl1500)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.Gray402)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(176.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Gray402,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.WhiteA700))
                                }
                            })
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Gray402,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                        Button(action: {
                            scheduleTimeViewModel.nextScreen = "ScheduleExpertsView"
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
                                    .padding(.top, getRelativeHeight(52.0))
                                    .padding(.horizontal, getRelativeWidth(13.0))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(ColorConstants.Gray900))
                        .padding(.top, getRelativeHeight(52.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(418.0),
                           alignment: .topLeading)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ScheduleExpertsView(),
                                   tag: "ScheduleExpertsView",
                                   selection: $scheduleTimeViewModel.nextScreen,
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

struct ScheduleTimeView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleTimeView()
    }
}
