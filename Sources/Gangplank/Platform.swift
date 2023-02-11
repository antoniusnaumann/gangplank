import Foundation

public func platform<T>(
    macOS: T? = nil, 
    iOS: T? = nil, 
    watchOS: T? = nil, 
    tvOS: T? = nil, 
    linux: T? = nil,  
    others: T? = nil
) -> T {
    #if os(macOS)
    guard let value = macOS ?? others else { fatalError("No value provided for platform macOS!") }
    #elseif os(iOS)
    guard let value = iOS ?? others else { fatalError("No value provided for platform iOS!") }
    #elseif os(watchOS)
    guard let value = watchOS ?? others else { fatalError("No value provided for platform watchOS!") }
    #elseif os(tvOS)
    guard let value = tvOS ?? others else { fatalError("No value provided for platform tvOS!") }
    #elseif os(Linux)
    guard let value = linux ?? others else { fatalError("No value provided for platform Linux!") }
    #else
    guard let value = others else { fatalError("No value provided for unknown platform!") }
    #endif

    return value
}