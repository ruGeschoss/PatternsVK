//
//  AFServiceAdapter.swift
//  homeWork_1
//
//  Created by Alexander Andrianov on 24.05.2021.
//  Copyright © 2021 Марат Нургалиев. All rights reserved.
//

import Foundation

final class AFServiceAdapter {
  
  private let afService = AlamofireService.instance
  
  private var recievedFriends: (([AdapterFriend]) -> Void)?
  
  func loadFriends(completion: @escaping ([AdapterFriend]) -> Void) {
    recievedFriends = { completion($0) }
    afService.getFriends(delegate: self)
  }
  
}

extension AFServiceAdapter: VkApiFriendsDelegate {
  
  func returnFriends(_ friends: [VkFriend]) {
    let myFriends = friends.map { AdapterFriend($0) }
    recievedFriends?(myFriends)
  }
  
}
