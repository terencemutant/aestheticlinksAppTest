import SwiftUI

struct ScheduleExpertsView: View {
    @StateObject var scheduleExpertsViewModel = ScheduleExpertsViewModel()
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
                                .padding(.horizontal, getRelativeWidth(15.0))
                            Text(StringConstants.kMsgChooseAnExper)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(142.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(33.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            Divider()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(3.0), alignment: .leading)
                                .background(ColorConstants.Cyan600)
                                .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(76.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0))
                        Text(StringConstants.kMsgAvailableExper)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.horizontal, getRelativeWidth(13.0))
                        HStack {
                            HStack {
                                Image("img_image39")
                                    .resizable()
                                    .frame(width: getRelativeWidth(50.0),
                                           height: getRelativeWidth(50.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0))
                                Text(StringConstants.kMsgAnyNoPrefer)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(139.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(14.0))
                            }
                            .frame(width: getRelativeWidth(203.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            VStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(8.0),
                                           height: getRelativeWidth(8.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(ColorConstants.Cyan600))
                                    .padding(.all, getRelativeWidth(4.0))
                                    .padding(.vertical, getRelativeHeight(4.0))
                                    .padding(.horizontal, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(ColorConstants.Black90099,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.vertical, getRelativeHeight(17.0))
                            .padding(.leading, getRelativeWidth(131.0))
                        }
                        .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(174.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(14.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Black90026)
                            .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(14.0))
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        RowellipsethirteenCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(350.0), alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(128.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(13.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Black90026)
                            .padding(.horizontal, getRelativeWidth(13.0))
                        Button(action: {
                            scheduleExpertsViewModel.nextScreen = "CheckoutexistingView"
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
                                    .padding(.top, getRelativeHeight(33.0))
                                    .padding(.horizontal, getRelativeWidth(13.0))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(ColorConstants.Gray900))
                        .padding(.top, getRelativeHeight(33.0))
                        .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(74.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CheckoutexistingView(),
                                   tag: "CheckoutexistingView",
                                   selection: $scheduleExpertsViewModel.nextScreen,
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

struct ScheduleExpertsView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleExpertsView()
    }
}
