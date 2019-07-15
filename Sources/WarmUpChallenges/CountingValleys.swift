//
//  CountingValleys.swift
//  WarmUpChallenges
//
//  Created by Rafael Ferreira on 7/14/19.
//

/// Gary is an avid hiker. He tracks his hikes meticulously, paying close attention to small details like topography.
/// During his last hike he took exactly  steps. For every step he took, he noted if it was an uphill,
/// `U`, or a downhill, `D` step. Gary's hikes start and end at sea level and each step up or down represents a `1`
/// unit change in altitude. We define the following terms:
///
/// - A mountain is a sequence of consecutive steps above sea level, starting with a step up from sea level and ending
/// with a step down to sea level.
/// - A valley is a sequence of consecutive steps below sea level, starting with a step down from sea level and ending
/// with a step up to sea level.
final class CountingValleys {
    /// The number of steps Gary takes
    private let n: Int

    /// A string describing his path
    private let s: String

    // MARK: Initializer

    init(n: Int, s: String) {
        self.n = n
        self.s = s
    }

    // MARK: Function

    func run() -> Int {
        var seaLevel = 0
        var valleys = 0

        s.forEach { char in
            let isUpperhill = char == "U"
            seaLevel += isUpperhill ? 1 : -1

            if seaLevel == 0 && isUpperhill {
                valleys += 1
            }
        }

        return valleys
    }
}
