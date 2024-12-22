import Foundation


// MARK: - Stack
public struct Stack<Element> {

    private var elements: [Element] = [Element]()
    
    public init() { }
    
    public init(_ elements: [Element]) {
        self.elements = elements
    }
    
    public mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        return elements.popLast()
    }
    
    public var peek: Element? { elements.first }
    
    public var isEmpty: Bool { peek == nil }

    public var count: Int { elements.count }
}

extension Stack: CustomStringConvertible {

    public var description: String { elements.description }
}

// MARK: - Queue
public struct Queue<Element> {
    
    private var elements: [Element] = [Element]()
    
    public init() {}
    
    public init(_ elements: [Element]) {
        self.elements = elements
    }
    
    public mutating func enqueue(_ element: Element) {
        elements.append(element)
    }
    
    @discardableResult
    public mutating func dequque() -> Element? {
        return isEmpty ? nil : elements.removeFirst()
    }
    
    public var isEmpty: Bool { elements.isEmpty }
    
    public var peek: Element? { elements.first }

    public var count: Int { elements.count }
}

extension Queue: CustomStringConvertible {
    public var description: String { elements.description }
}

// MARK: - Deque
public struct Deque<Element> {
    private var elements: [Element] = [Element]()
    
    public init() { }
    
    public init(_ elements: [Element]) {
        self.elements = elements
    }
    
    public mutating func front(_ element: Element) {
        elements.insert(element, at: 0)
    }
    
    public mutating func back(_ element: Element) {
        elements.append(element)
    }
    
    @discardableResult
    public mutating func front() -> Element? {
        return isEmpty ? nil : elements.removeFirst()
    }
    
    @discardableResult
    public mutating func back() -> Element? {
        return isEmpty ? nil : elements.removeLast()
    }
    
    public var isEmpty: Bool { elements.isEmpty }
    
    public var frontPeek: Element? { elements.first }
    
    public var backPeek: Element? { elements.last }
    
    public var count: Int { elements.count }
}

extension Deque: CustomStringConvertible {
    public var description: String { elements.description }
}
