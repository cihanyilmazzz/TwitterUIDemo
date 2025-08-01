//
//  TweetFilterViewModel.swift
//  TwitterDemo
//
//  Created by Cihan Yilmaz on 28/07/2025.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
