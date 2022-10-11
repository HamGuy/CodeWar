import Foundation

public func digPow(for number: Int, using power: Int) -> Int {
    let strNUm = "\(number)"
    var tmpResult = 0
    var start = power
    for c in strNUm {
        let str = String(c)
        if let n = Int(str) {
            let decimal = Decimal(n)
            let value = Int(truncating: pow(decimal, start) as NSDecimalNumber)
            tmpResult += value
        }
        start += 1
    }
    if tmpResult % number == 0 {
        return tmpResult / number
    }
    return -1
}
