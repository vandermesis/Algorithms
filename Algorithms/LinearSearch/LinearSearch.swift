//
//  LinearSearch.swift
//  Algorithms
//
//  Created by Marek Skrzelowski on 21/09/2019.
//  Copyright © 2019 vandermesis. All rights reserved.
//

import Foundation

func linearSearch<T: Equatable>(_ input: [T], _ object: T) -> Int? {
    for i in 0..<input.count where input[i] == object {
        return i
    }
    return nil
}
