//
//  ContentView.swift
//  Sample
//
//  Created by jdj on 2020/01/31.
//  Copyright © 2020 jdj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PostListViewModel()
    
    var body: some View {
        List(model.posts) { post in
            Text(post.title)
            //print(post.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
