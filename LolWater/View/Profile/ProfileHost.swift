//
//  ProfileHost.swift
//  LolWater
//
//  Created by Daniel Gaeta on 12/28/19.
//  Copyright © 2019 Daniel Gaeta. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var mode
    @State var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if self.mode?.wrappedValue == .active {
                    Button("Cancel") {
                        self.mode?.animation().wrappedValue = .inactive
                    }
                }
                
                Spacer()
                EditButton()
            }
            
            if self.mode?.wrappedValue == .inactive {
                Text("Profile Summary View")
            } else {
                ProfileEditor(profile: $draftProfile)
                .onAppear {
                    //
                }
                .onDisappear {
                    //
                }
            }
            
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
