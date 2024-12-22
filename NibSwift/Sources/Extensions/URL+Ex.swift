#if canImport(Foundation)
import Foundation

extension URL {
    
    /// parse url query string in URL and return Array of URLQueryItem
    ///
    ///     https://www.somebase.com?query1=1&query2=some ->
    ///         [
    ///             name: query1, value: 1,
    ///             name: query2, value: some
    ///         ]
    public var querys: [URLQueryItem] {
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: true), let queryItems = components.queryItems else { return [] }
        return queryItems
    }
}

/// Adds String type rhs to Optional URL type lhs and returns Optional URL
///
///     URL(string: "www.github.com") + String("some") ->
///     
///     Optional(www.github.com/some)
///
/// - Parameters:
///     - lhs: underlying URL
///     - rhs: String to be added
/// - Return:
///     - url with String added
public func +(lhs: URL?, rhs: String) -> URL? {
    return lhs?.appendingPathComponent(rhs)
}
#endif
