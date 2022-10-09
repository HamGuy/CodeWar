import Foundation

public struct MultiplesOf3OR5 {
    public static func solution(_ num: Int) -> Int {
        if num<0 {
            return 0
        }
        var alreadyCount:[Int] = []
        
        for n in 0..<num {
            if n%3 == 0 || n%5 == 0 {
                if !alreadyCount.contains(n) {
                    alreadyCount.append(n)
                }
            }
        }
        
        let result = alreadyCount.reduce(0, {$0+$1})
        return result
    }
    
    public static func solution2(_ num: Int) -> Int {
        var sum = 0
        for i in 0..<num {
            if (i % 3 == 0 || i % 5 == 0) {
                sum += i
            }
        }
        return sum
        
    }
}

