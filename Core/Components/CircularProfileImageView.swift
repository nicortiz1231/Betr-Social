//
//  CircularProfileImageView.swift
//  Betr Social
//
//  Created by Nick Ortiz on 5/8/24.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge

var dimension: CGFloat {
    switch self {
    case .xxSmall: return 28
    case .xSmall: return 32
    case .small: return 40
    case .medium: return 48
    case .large: return 64
    case .xLarge: return 80
    }
  }
}

    struct CircularProfileImageView: View {
        var user: User?
        var size: ProfileImageSize
        
        
        var body: some View {
            if let imageUrl = user?.profileImageUrl {
                KFImage(URL(string: imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: size.dimension, height: size.dimension)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: size.dimension, height: size.dimension)
                    .foregroundColor(Color(.systemGray4))
            }
        }
    }
    
    struct CircularProfileImageView_Previews: PreviewProvider {
        static var previews: some View {
            CircularProfileImageView(user: dev.user, size: .medium)
        }
    }