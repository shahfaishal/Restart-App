//
//  ContentView.swift
//  Restart
//
//  Created by Scrambleapps on 16/03/22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        } //: ZSTACK
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
