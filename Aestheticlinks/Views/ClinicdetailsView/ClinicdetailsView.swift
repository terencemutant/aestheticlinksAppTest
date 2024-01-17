import SwiftUI

struct ClinicdetailsView: View {
    @StateObject var clinicdetailsViewModel = ClinicdetailsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            HStack {
                                Image("img_unitedarabemi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblDubai)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(6.0))
                                Image("img_vector_gray_901_3x6")
                                    .resizable()
                                    .frame(width: getRelativeWidth(6.0),
                                           height: getRelativeHeight(3.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(21.0),
                                   alignment: .top)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.bottom, getRelativeHeight(6.0))
                            Spacer()
                            Image("img_hamburgermenu")
                                .resizable()
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeWidth(33.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    clinicdetailsViewModel.nextScreen = "MenuView"
                                }
                        }
                        .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(33.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(154.0))
                        .padding(.trailing, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(67.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .shadow(color: ColorConstants.Black90026, radius: 15, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                ZStack(alignment: .leading) {
                                    Image("img_image")
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(196.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    ZStack(alignment: .topLeading) {
                                        Image("img_101789276591_196x393")
                                            .resizable()
                                            .frame(width: UIScreen.main.bounds.width,
                                                   height: getRelativeHeight(196.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(8.0))
                                            .foregroundColor(ColorConstants.Gray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeWidth(25.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                                    bottomLeft: 12.5,
                                                                    bottomRight: 12.5)
                                                    .stroke(ColorConstants.WhiteA700,
                                                            lineWidth: 1))
                                            .background(ColorConstants.WhiteA700)
                                            .padding(.bottom, getRelativeHeight(155.0))
                                            .padding(.trailing, getRelativeWidth(353.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(196.0), alignment: .leading)
                                }
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(196.0), alignment: .leading)
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        HStack {
                                            Text(StringConstants.kLblAlBiraaClinic)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Black905)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(99.0),
                                                       height: getRelativeHeight(21.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kLbl45)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black90099)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(17.0),
                                                       height: getRelativeHeight(16.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(4.0))
                                                .padding(.leading, getRelativeWidth(10.0))
                                            Image("img_star_teal_400")
                                                .resizable()
                                                .frame(width: getRelativeWidth(10.0),
                                                       height: getRelativeWidth(10.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(7.0))
                                            Spacer()
                                        }
                                        .frame(width: getRelativeWidth(139.0),
                                               height: getRelativeHeight(21.0), alignment: .leading)
                                        .padding(.trailing)
                                        Text(StringConstants.kMsgDubaiUnitedA)
                                            .font(FontScheme
                                                .kDMSansRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black90099)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(155.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        HStack {
                                            Spacer()
                                            Image("img_vector_gray_900")
                                                .resizable()
                                                .frame(width: getRelativeWidth(6.0),
                                                       height: getRelativeHeight(11.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Spacer()
                                            Image("img_female1363")
                                                .resizable()
                                                .frame(width: getRelativeWidth(8.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Spacer()
                                            Text(StringConstants.kMsgForMaleFema)
                                                .font(FontScheme
                                                    .kDMSansRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black90099)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(149.0),
                                                       height: getRelativeHeight(16.0),
                                                       alignment: .topLeading)
                                            Spacer()
                                        }
                                        .frame(width: getRelativeWidth(170.0),
                                               height: getRelativeHeight(16.0), alignment: .center)
                                        Image("img_group101")
                                            .resizable()
                                            .frame(width: getRelativeWidth(24.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.trailing, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(172.0),
                                           height: getRelativeHeight(73.0), alignment: .center)
                                    Spacer()
                                    HStack {
                                        Button(action: {}, label: {
                                            Image("img_locationsvgrep")
                                        })
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                                bottomLeft: 12.5, bottomRight: 12.5)
                                                .stroke(ColorConstants.Gray901,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                                   bottomLeft: 12.5,
                                                                   bottomRight: 12.5)
                                                .fill(Color.clear.opacity(0.7)))
                                        Button(action: {}, label: {
                                            Image("img_group145")
                                        })
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                                bottomLeft: 12.5, bottomRight: 12.5)
                                                .stroke(ColorConstants.Gray901,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 12.5, topRight: 12.5,
                                                                   bottomLeft: 12.5,
                                                                   bottomRight: 12.5)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(5.0))
                                        ZStack(alignment: .leading) {
                                            Image("img_path20884")
                                                .resizable()
                                                .frame(width: getRelativeWidth(12.0),
                                                       height: getRelativeHeight(11.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.top, getRelativeHeight(7.35))
                                                .padding(.horizontal, getRelativeWidth(7.0))
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(25.0),
                                                       height: getRelativeWidth(25.0),
                                                       alignment: .leading)
                                                .overlay(RoundedCorners(topLeft: 12.5,
                                                                        topRight: 12.5,
                                                                        bottomLeft: 12.5,
                                                                        bottomRight: 12.5)
                                                        .stroke(ColorConstants.Gray901,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 12.5,
                                                                           topRight: 12.5,
                                                                           bottomLeft: 12.5,
                                                                           bottomRight: 12.5)
                                                        .fill(Color.clear.opacity(0.7)))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(25.0),
                                               height: getRelativeWidth(25.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(6.0))
                                    }
                                    .frame(width: getRelativeWidth(86.0),
                                           height: getRelativeHeight(26.0), alignment: .top)
                                    .padding(.vertical, getRelativeHeight(3.0))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(73.0), alignment: .center)
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Text(StringConstants.kMsgAestheticsIsA)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(54.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                HStack {
                                    Text(StringConstants.kLblOurExperts)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(93.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    HStack {
                                        Text(StringConstants.kLblViewMore)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(64.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                        Image("img_arrowright_black_905")
                                            .resizable()
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(8.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(5.0))
                                    }
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(18.0), alignment: .top)
                                    .padding(.vertical, getRelativeHeight(1.0))
                                }
                                .frame(width: getRelativeWidth(363.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 5, id: \.self) { index in
                                                CarouselitemCell()
                                                    .onTapGesture {
                                                        clinicdetailsViewModel
                                                            .nextScreen = "DrMaryView"
                                                    }
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                HStack {
                                    Text(StringConstants.kLblGender)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black90099)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(44.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Image("img_vector_black_901")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(3.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(10.0))
                                        .padding(.bottom, getRelativeHeight(11.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    HStack {
                                        TextField(StringConstants.kMsgSearchHereFor,
                                                  text: $clinicdetailsViewModel.group105Text)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(9.0)))
                                            .foregroundColor(ColorConstants.Gray500)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(233.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(ColorConstants.Bluegray50))
                                    .padding(.leading, getRelativeWidth(18.0))
                                    Image("img_sortamountdow")
                                        .resizable()
                                        .frame(width: getRelativeWidth(16.0),
                                               height: getRelativeHeight(14.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(13.0))
                                        .onTapGesture {
                                            clinicdetailsViewModel
                                                .nextScreen = "SortbyclinicpageView"
                                        }
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(339.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(1.0), alignment: .leading)
                                    .background(ColorConstants.Gray301)
                                    .padding(.top, getRelativeHeight(11.0))
                                HStack {
                                    Spacer()
                                    VStack {
                                        Text(StringConstants.kLblFace)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black905)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .topLeading)
                                            .padding(.horizontal, getRelativeWidth(45.0))
                                        Divider()
                                            .frame(width: getRelativeWidth(120.0),
                                                   height: getRelativeHeight(3.0),
                                                   alignment: .leading)
                                            .background(ColorConstants.Cyan600)
                                            .padding(.top, getRelativeHeight(10.0))
                                    }
                                    .onTapGesture {
                                        clinicdetailsViewModel.nextScreen = "DrJohnView"
                                    }
                                    .frame(width: getRelativeWidth(120.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    Spacer()
                                    VStack {
                                        Text(StringConstants.kLblBody)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black90099)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(30.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.horizontal, getRelativeWidth(45.0))
                                        Divider()
                                            .frame(width: getRelativeWidth(120.0),
                                                   height: getRelativeHeight(3.0),
                                                   alignment: .leading)
                                            .background(ColorConstants.Black9004c)
                                            .padding(.top, getRelativeHeight(8.0))
                                    }
                                    .onTapGesture {
                                        clinicdetailsViewModel.nextScreen = "DrMaryView"
                                    }
                                    .frame(width: getRelativeWidth(120.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    Spacer()
                                    VStack {
                                        Text(StringConstants.kMsgHealthAndWell)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black90099)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(121.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .topLeading)
                                            .padding(.horizontal, getRelativeWidth(15.0))
                                        Divider()
                                            .frame(width: getRelativeWidth(153.0),
                                                   height: getRelativeHeight(3.0),
                                                   alignment: .leading)
                                            .background(ColorConstants.Black9004c)
                                            .padding(.top, getRelativeHeight(10.0))
                                    }
                                    .frame(width: getRelativeWidth(153.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    Spacer()
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(11.0))
                            }
                            Group {
                                Text(StringConstants.kLblOurServices)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(102.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 4, id: \.self) { index in
                                                RowpriceCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(363.0), alignment: .center)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                                Divider()
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(1.0), alignment: .center)
                                    .background(ColorConstants.Black90026)
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                Text(StringConstants.kMsgCustomerReview)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(152.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(31.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblJamesSmith)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(80.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(28.0))
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                        Text(StringConstants.kMsgLoremIpsumDol4)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(299.0),
                                                   height: getRelativeHeight(46.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(15.0))
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                        HStack {
                                            Image("img_star_teal_400")
                                                .resizable()
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Image("img_star_teal_400")
                                                .resizable()
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(4.0))
                                            Image("img_star_teal_400")
                                                .resizable()
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(4.0))
                                            Image("img_star_teal_400")
                                                .resizable()
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(4.0))
                                            Image("img_star_gray_701")
                                                .resizable()
                                                .frame(width: getRelativeWidth(13.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(4.0))
                                            Spacer()
                                        }
                                        .frame(width: getRelativeWidth(85.0),
                                               height: getRelativeHeight(12.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(24.0))
                                    }
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(164.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA700))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    Carouselitem1Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(15.0), alignment: .center)
                                    .padding(.trailing, getRelativeWidth(744.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(164.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(13.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Servicedetails2View(),
                                   tag: "Servicedetails2View",
                                   selection: $clinicdetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SortbyclinicpageView(),
                                   tag: "SortbyclinicpageView",
                                   selection: $clinicdetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MenuView(),
                                   tag: "MenuView",
                                   selection: $clinicdetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CityfiltersView(),
                                   tag: "CityfiltersView",
                                   selection: $clinicdetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DrMaryView(),
                                   tag: "DrMaryView",
                                   selection: $clinicdetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DrJohnView(),
                                   tag: "DrJohnView",
                                   selection: $clinicdetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ServicedetailsBooknowBookconsultationView(),
                                   tag: "ServicedetailsBooknowBookconsultationView",
                                   selection: $clinicdetailsViewModel.nextScreen,
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

struct ClinicdetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ClinicdetailsView()
    }
}
