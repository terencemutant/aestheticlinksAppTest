import SwiftUI

struct MorefiltersView: View {
    @StateObject var morefiltersViewModel = MorefiltersViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
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
                            Spacer()
                            Text(StringConstants.kLblMoreFilters)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.trailing)
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblCity)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kLblDubaiUae,
                                          text: $morefiltersViewModel.grouptwentytwoText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .padding()
                                Image("img_vector_black_901")
                                    .resizable()
                                    .frame(width: getRelativeWidth(7.0),
                                           height: getRelativeHeight(4.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.bottom, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(22.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(77.0),
                               alignment: .center)
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblArea)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(39.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.trailing, getRelativeWidth(4.0))
                            HStack {
                                TextField(StringConstants.kMsgAlBarshaDuba,
                                          text: $morefiltersViewModel.grouptwentyeightText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .padding()
                                Image("img_vector_black_901")
                                    .resizable()
                                    .frame(width: getRelativeWidth(7.0),
                                           height: getRelativeHeight(4.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.bottom, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(17.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(14.0))
                        }
                        .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(78.0),
                               alignment: .center)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(78.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(34.0))
                    Text(StringConstants.kMsgGenderPreferen)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblAll)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(6.0))
                                        .foregroundColor(ColorConstants.Gray901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(113.0),
                                               height: getRelativeHeight(30.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                                bottomLeft: 4.0, bottomRight: 4.0)
                                                .stroke(ColorConstants.Cyan600,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                                   bottomLeft: 4.0,
                                                                   bottomRight: 4.0)
                                                .fill(ColorConstants.Cyan60066))
                                }
                            })
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Cyan600,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(ColorConstants.Cyan60066))
                            Text(StringConstants.kLblMale)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black90099)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(29.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(37.0))
                        }
                        .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(30.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(5.0))
                        .padding(.leading, getRelativeWidth(5.0))
                        Spacer()
                        Text(StringConstants.kLblFemale)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black90099)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(11.0))
                            .padding(.trailing, getRelativeWidth(53.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                            bottomRight: 7.0)
                            .stroke(ColorConstants.Black9004c,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                               bottomRight: 7.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(13.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSpecialization)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(115.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kLblAny,
                                          text: $morefiltersViewModel.grouptwentythreeText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .padding()
                                Image("img_vector_black_901")
                                    .resizable()
                                    .frame(width: getRelativeWidth(7.0),
                                           height: getRelativeHeight(4.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.bottom, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(22.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(77.0),
                               alignment: .center)
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblServiceType)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(101.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.trailing, getRelativeWidth(4.0))
                            HStack {
                                TextField(StringConstants.kLblAny,
                                          text: $morefiltersViewModel.grouptwentynineText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .padding()
                                Image("img_vector_black_901")
                                    .resizable()
                                    .frame(width: getRelativeWidth(7.0),
                                           height: getRelativeHeight(4.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(18.0))
                                    .padding(.bottom, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(17.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(77.0),
                               alignment: .center)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(77.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(20.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblPrice)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        HStack {
                            HStack {
                                Text(StringConstants.kLblFrom)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black9004c)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(31.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(16.0))
                                Text(StringConstants.kLbl500Aed)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(49.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(39.0))
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            HStack {
                                Text(StringConstants.kLblUpTo)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black9004c)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(22.0))
                                Text(StringConstants.kLbl1000Aed)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(53.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(39.0))
                                    .padding(.trailing, getRelativeWidth(30.0))
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(15.0))
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(79.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                               bottomRight: 7.0))
                    .padding(.top, getRelativeHeight(18.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblTimeDate)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        HStack {
                            HStack {
                                TextField(StringConstants.kMsgOctober10202,
                                          text: $morefiltersViewModel.grouptwentysevenText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
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
                                    .padding(.trailing, getRelativeWidth(18.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                            Spacer()
                            HStack {
                                TextField(StringConstants.kLbl13001700,
                                          text: $morefiltersViewModel.grouptwentysixText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
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
                                    .padding(.trailing, getRelativeWidth(17.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Black9004c,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.WhiteA700))
                        }
                        .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(15.0))
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(79.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(18.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblApply)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(ColorConstants.Gray900))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.Gray900))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblReset)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(363.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                            bottomLeft: 4.0, bottomRight: 4.0)
                                            .stroke(ColorConstants.Gray900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(8.0))
                            }
                        })
                        .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                bottomRight: 4.0)
                                .stroke(ColorConstants.Gray900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(8.0))
                    }
                    .frame(width: getRelativeWidth(363.0), height: getRelativeHeight(88.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                               bottomRight: 4.0))
                    .padding(.top, getRelativeHeight(124.0))
                }
                .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(742.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(26.8))
                .padding(.horizontal, getRelativeWidth(15.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct MorefiltersView_Previews: PreviewProvider {
    static var previews: some View {
        MorefiltersView()
    }
}
