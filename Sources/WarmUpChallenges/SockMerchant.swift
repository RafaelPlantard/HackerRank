//
//  SockMerchant.swift
//  HackerRank
//
//  Created by Rafael Ferreira on 7/14/19.
//

/// John works at a clothing store. He has a large pile of socks that he must pair by color for sale.
/// Given an array of integers representing the color of each sock,
/// determine how many pairs of socks with matching colors there are.
final class SockMerchant {
    /// The number of socks in the pile.
    private let n: Int

    /// The colors of each sock.
    private let ar: [Int]

    // MARK: Initializer

    init(n: Int, ar: [Int]) {
        self.n = n
        self.ar = ar
    }

    // MARK: Functions

    func run() -> Int {
        var numberOfMatchingPairsOfSocks = 0
        var dictionary = Dictionary<Int, Int>()

        (0 ..< n).forEach { index in
            let item = ar[index]

            if dictionary[item] != nil {
                dictionary.removeValue(forKey: item)
                numberOfMatchingPairsOfSocks += 1
            } else {
                dictionary[item] = 1
            }
        }

        return numberOfMatchingPairsOfSocks
    }
}
