//
//  OnboardingView.swift
//  Restart
//
//  Created by Scrambleapps on 16/03/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Color("colorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                //MARK: - HEADER
                Spacer()
                VStack(spacing: 0) {
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put in giving.
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                } //: HEADER
                
                //MARK: - CENTER
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40.0)
                            .frame(width: 250.0, height: 250.0, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80.0)
                            .frame(width: 250.0, height: 250.0, alignment: .center)
                    } //: ZSTACK
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: CENTER
                
                Spacer()
                
                //MARK: - FOOTER
                ZStack {
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(10)
                    
                    // 2. CALL TO ACTION (STATIC)
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
//                        .offset(x: 20.0)
                    
                    // 3. CAPSULE (DYNAMIC WIDTH)
                    HStack {
                        Capsule()
                            .fill(Color("colorRed"))
                            .frame(width: 80.0)
                        Spacer()
                    }
                    
                    // 4. CIRCLE (DRAGABLE)
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("colorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(10)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 25, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80.0, height: 80.0, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        
                        Spacer()
                    }
                    
                } //: FOOTER
                .frame(height: 80.0, alignment: .center)
                .padding()
                
            } //: VSTACK
        } //: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
