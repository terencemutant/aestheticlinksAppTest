import SwiftUI

struct ScheduleDateView: View {
    @StateObject var scheduleDateViewModel = ScheduleDateViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(4.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                       bottomRight: 2.0)
                                    .fill(ColorConstants.Gray900))
                            .padding(.horizontal, getRelativeWidth(167.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(4.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblChooseADate)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(15.0))
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(3.0), alignment: .leading)
                            .background(ColorConstants.Cyan600)
                            .padding(.top, getRelativeHeight(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(29.0))
                    VStack {
                        VStack {
                            HStack {
                                HStack {
                                    TextField(StringConstants.kLblOctober,
                                              text: $scheduleDateViewModel.group186Text)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray901)
                                        .padding()
                                    Image("img_vector_gray_400")
                                        .resizable()
                                        .frame(width: getRelativeWidth(7.0),
                                               height: getRelativeHeight(4.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(18.0))
                                        .padding(.bottom, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(12.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(176.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                        bottomLeft: 7.0,
                                                        bottomRight: 7.0)
                                        .stroke(ColorConstants.Black9004c,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.WhiteA700))
                                Spacer()
                                HStack {
                                    TextField(StringConstants.kLbl2023,
                                              text: $scheduleDateViewModel.zipcodeText)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray901)
                                        .padding()
                                    Image("img_vector_gray_400")
                                        .resizable()
                                        .frame(width: getRelativeWidth(7.0),
                                               height: getRelativeHeight(4.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(18.0))
                                        .padding(.bottom, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(12.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(176.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                        bottomLeft: 7.0,
                                                        bottomRight: 7.0)
                                        .stroke(ColorConstants.Black9004c,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(ColorConstants.WhiteA700))
                            }
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 5, id: \.self) { index in
                                            RowsunCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(361.0), alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(2.0))
                            Button(action: {
                                scheduleDateViewModel.nextScreen = "ScheduleTimeView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblConfirm)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(363.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(ColorConstants.Gray900))
                                        .padding(.top, getRelativeHeight(32.0))
                                }
                            })
                            .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.Gray900))
                            .padding(.top, getRelativeHeight(32.0))
                        }
                        .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(329.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(329.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ScheduleTimeView(),
                                   tag: "ScheduleTimeView",
                                   selection: $scheduleDateViewModel.nextScreen,
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

struct ScheduleDateView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleDateView()
    }
}
