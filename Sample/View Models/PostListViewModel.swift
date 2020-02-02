//
//  PostListViewModel.swift
//  Sample
//
//  Created by jdj on 2020/01/31.
//  Copyright © 2020 jdj. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class PostListViewModel: ObservableObject {
    init() {
        fetchPosts()
    }
    
    @Published var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    private func fetchPosts() {
        Webservice().getAllPosts {
            self.posts = $0
        }
    }
    let didChange = PassthroughSubject<PostListViewModel, Never>()
    
}
