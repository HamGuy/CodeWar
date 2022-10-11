import Foundation

public func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
     let sr = String(format: "%02X", r > 0 ? min(r,255): 0)
     let sg = String(format: "%02X", g > 0 ? min(g,255): 0)
     let sb = String(format: "%02X", b > 0 ? min(b,255): 0)
     return "\(sr)\(sg)\(sb)"
}

public func rgb2(_ r: Int, _ g: Int, _ b: Int) -> String {
    return String(format: "%02X%02X%02X", UInt8(clamping: r), UInt8(clamping: g), UInt8(clamping: b))
}


