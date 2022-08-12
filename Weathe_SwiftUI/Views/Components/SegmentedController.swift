//
//  SegmentedController.swift
//  Weathe_SwiftUI
//
//  Created by Вячеслав Терентьев on 12.08.2022.
//

import SwiftUI

struct SegmentedController: View {
    @Binding var selection: Int
    
    var body: some View {
        VStack(spacing: 5) {
            //MARK: - Segmented Buttons
            HStack {
                Button {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        selection = 0
                    }
                } label: {
                    Text("Hourly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        selection = 1
                    }
                } label: {
                    Text("Weekly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.secondary)
            
            //MARK: - Separator
            Divider()
                .background(.white.opacity(0.5))
                .blendMode(.overlay)
                .shadow(color: .black.opacity(0.2), radius: 0, x: 0, y: 1)
                .blendMode(.overlay)
                .overlay {
                    //MARK: - Underline
                    HStack {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width / 2,
                                   height: 3)
                            .background(Color.underLine)
                            .blendMode(.overlay)
                    }
                    .frame(maxWidth: .infinity, alignment: selection == 0 ? .leading : .trailing)
                    .offset(y: -1)
                }
        }
        .padding(.top, 25)
    }
}

struct SegmentedController_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedController(selection: .constant(0))
    }
}
