//
//  JumpingOnTheClouds.swift
//  WarmUpChallenges
//
//  Created by Rafael Ferreira on 7/14/19.
//

/// Emma is playing a new mobile game that starts with consecutively numbered clouds.
/// Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that
/// is equal to the number of the current cloud plus `1` or `2`. She must avoid the thunderheads.
/// Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud.
/// It is always possible to win the game.
///
/// For each game, Emma will get an array of clouds numbered `0` if they are safe or `1` if they must be avoided.
/// For example, `c = [0, 1, 0, 0, 0, 1, 0]` indexed from `0 ... 6`. The number on each cloud is its index in the list
/// so she must avoid the clouds at indexes `1` and `5`. She could follow the following two paths:
/// `0 -> 2 -> 4 -> 6` or `0 -> 2 -> 3 -> 4 -> 6`. The first path takes `3``jumps while the second takes `4`.
final class JumpingOnTheClouds {
    /// An array of binary integers
    private let c: [Int]

    // MARK: Initializer

    init(c: [Int]) {
        self.c = c
    }

    // MARK: Functions

    func run() -> Int {
        var numberOfJumps = 0
        var i = 0

        while (i < c.count - 1) {
            if i + 2 < c.count && c[i + 2] != 1 {
                i += 2
            } else {
                i += 1
            }

            numberOfJumps += 1
        }

        return numberOfJumps
    }
}
