public protocol StackBase
{
    associatedtype Item

    func size() -> Int
    func peek() -> Item?
    mutating func pop() -> Item?
    mutating func push(_ item: Item)
    mutating func removeAll()
}


public struct Stack<T> : StackBase
{    
    fileprivate var items_: [T]

    init()
    { self.init(items: []) }

    init(items: [T])
    { self.items_ = items }

    public func size() -> Int
    { return self.items_.count }

    public func peek() -> T?
    { return self.items_.last }

    public mutating func pop() -> T?
    { return self.items_.popLast() }

    public mutating func push(_ item: T)
    { self.items_.append(item) }

    public mutating func removeAll()
    { self.items_.removeAll() }
}


public func createStack<T>(initialItems: [T]) -> Stack<T>
{
    return Stack<T>(items: initialItems)
}
