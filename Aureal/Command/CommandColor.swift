import Cocoa

struct CommandColor {
    let r: UInt8
    let g: UInt8
    let b: UInt8

    init(r: UInt8, g: UInt8, b: UInt8) {
        self.r = r
        self.g = g
        self.b = b
    }

    init(color: NSColor) {
        let rgb = color.usingColorSpace(NSColorSpace.sRGB)!
//        let rgb = color

        let r: UInt8 = UInt8(rgb.redComponent * 255)
        let g: UInt8 = UInt8(rgb.greenComponent * 255)
        let b: UInt8 = UInt8(rgb.blueComponent * 255)

        self.init(r: r, g: g, b: b)
    }
}

extension CommandColor {
    static let red = CommandColor(r: 0xff, g: 0x00, b: 0x00)
    static let blue = CommandColor(r: 0x00, g: 0x00, b: 0xff)
    static let green = CommandColor(r: 0x00, g: 0xff, b: 0x00)
    static let white = CommandColor(r: 0xff, g: 0xff, b: 0xff)
    static let lwhite = CommandColor(r: 0x40, g: 0x40, b: 0x40)
    static let black = CommandColor(r: 0x00, g: 0x00, b: 0x00)

    static var random: CommandColor {
        CommandColor(
            r: UInt8.random(in: 0...255),
            g: UInt8.random(in: 0...255),
            b: UInt8.random(in: 0...255)
        )
    }
}
