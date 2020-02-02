//
//  Post.swift
//  Sample
//
//  Created by jdj on 2020/01/31.
//  Copyright © 2020 jdj. All rights reserved.
//

import Foundation

struct Post : Identifiable,Hashable, Encodable,Decodable{
    let id: Int
    let title: String
    let body: String
}
