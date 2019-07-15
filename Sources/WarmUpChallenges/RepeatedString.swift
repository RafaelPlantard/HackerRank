//
//  RepeatedString.swift
//  WarmUpChallenges
//
//  Created by Rafael Ferreira on 7/14/19.
//

/// Lilah has a string, `s`, of lowercase English letters that she repeated infinitely many times.
/// Given an integer, `n`, find and print the number of letter a's in the first `n` letters of Lilah's infinite string.
///
/// For example, if the string `s = 'abcac'` and `n = 10`, the substring we consider is `abcacabcac`,
/// the first `10` characters of her infinite string. There are `4` occurrences of `a` in the substring.
final class RepeatedString {
    /// A string to repeat
    private let s: String

    /// The number of characters to consider
    private let n: Int

    // MARK: Initializer

    init(s: String, n: Int) {
        self.s = s
        self.n = n
    }

    // MARK: Functions

    func run() -> Int {
        let originalNumberOfA = s.filter({ char in char == "a" }).count
        let multiplier = n / s.count
        let rest = n % s.count
        var totalNumberOfA = originalNumberOfA * multiplier

        (0 ..< rest).forEach { i in
            let index = s.index(s.startIndex, offsetBy: i)

            if s[index] == "a" {
                totalNumberOfA += 1
            }
        }

        return totalNumberOfA
    }
}
