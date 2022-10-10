import Foundation

public func validBraces(_ string:String) -> Bool {
    var leftPart:[String] = []
    let lefts = ["[","(","{"]
    var result = true;
    for x in string {
        let s = String(x)
        if lefts.contains(s) {
            leftPart.insert(s, at: 0)
        } else  {
            guard let c = leftPart.popFirst() else {
                return false
            }
            switch s {
            case "]":
                if c != "[" {
                    return false
                }
            case "}":
                if c != "{" {
                    return false
                }
            case ")":
                if c != "(" {
                    return false
                }
            default:
                break
            }
        }
    }
    result = leftPart.count == 0
    return result
}


extension Array {
    @inlinable
    public mutating func popFirst() -> Element? {
        if isEmpty {
            return nil
        } else {
            return removeFirst()
        }
    }
}


/// 其他大神的,简化版 https://www.codewars.com/kata/reviews/58d058d93f4a4d7213000259/groups/5b0c7866e86c54df8e000042

public func validBraces2(_ string:String) -> Bool {
    var stack = [Character]()
    for c in string {
        switch c {
        case "(", "{", "[":
          stack.append(c)
        default:
          guard let prev = stack.popLast() else { return false }
          switch (prev, c) {
          case ("(", ")"), ("{", "}"), ("[", "]"): break
          default: return false
          }
        }
    }
    return stack.isEmpty
}

