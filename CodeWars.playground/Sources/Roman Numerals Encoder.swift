import Foundation

/// ref: https://medium.com/nerd-for-tech/write-up-code-wars-roman-numerals-encoder-solutions-javascript-875b2cc8da28
public func RomanNumeralsEncoder(_ number:Int) -> String {
    let dict = ["M": 1000, "CM": 900, "D": 500, "CD": 400, "C": 100, "XC": 90,
                "L": 50, "XL": 40, "X": 10, "IX": 9, "V": 5, "IV": 4, "I": 1]
    let keys = ["M", "CM", "D", "CD", "C", "XC",
                "L", "XL", "X", "IX", "V", "IV", "I"]
    var result = ""
    var res = number
    for k in keys {
        if let tmp = dict[k]{
            let count = res/tmp
            res -= count * tmp
            if(count > 0){
                result.append(String.init(repeating: k, count: count))
            }
        }
    }
    
    return result
}
