<sub>**EXTENSION**</sub>
# XMLNode

--------------------

## Properties
### description

<sub>**Declaration**</sub>
```swift
public var description: String
```

<sub>**Infered Type**</sub>
```swift
String
```

Serialized XML string output

## Methods
### init(_:)

<sub>**Declaration**</sub>
```swift
public init?(_ description: String)
```

<sub>**Infered Type**</sub>
```swift
(XMLNode.Type) -> (String) -> XMLNode?
```

Attempts to produce an XMLNode with the provided XML string

- Parameter description: The XML string to deserialize

#### Parameters
| Name | Description |
| ---- | ----------- |
| *description* | The XML string to deserialize |

### getValue(_:traversal:)

<sub>**Declaration**</sub>
```swift
public func getValue<T: XMLTextNodeInitializable>(_ name: String, traversal: XMLNodeTraversal = .breadthFirst) throws -> T
```

<sub>**Infered Type**</sub>
```swift
<T where T : XMLTextNodeInitializable> (XMLNode) -> (String, XMLNodeTraversal) throws -> T
```

Retrieve the first descendant node with the given name, converted to the given type

- Parameter name: Node name to retrieve
- Parameter traversal: Node Traversal technique. Defaults to Breadth first
- Returns: Node value (text node) converted to given type
- Throws: XMLError if no descendant found, node has no value (does not contain a text node)
          and no default has been provided, or if casting to type fails

#### Parameters
| Name | Description |
| ---- | ----------- |
| *name* | Node name to retrieve |
| *traversal* | Node Traversal technique. Defaults to Breadth first |

### getValue(_:traversal:)

<sub>**Declaration**</sub>
```swift
public func getValue<T: XMLTextNodeInitializable>(_ name: String, traversal: XMLNodeTraversal = .breadthFirst) -> T?
```

<sub>**Infered Type**</sub>
```swift
<T where T : XMLTextNodeInitializable> (XMLNode) -> (String, XMLNodeTraversal) -> T?
```

Retrieve the first descendant node with the given name, converted to the given type

- Parameter name: Node name to retrieve
- Parameter traversal: Node Traversal technique. Defaults to Breadth first
- Returns: Node value (text node) converted to given type
- Throws: XMLError if no descendant found, node has no value (does not contain a text node)
          or if casting to type fails

#### Parameters
| Name | Description |
| ---- | ----------- |
| *name* | Node name to retrieve |
| *traversal* | Node Traversal technique. Defaults to Breadth first |

### getValue()

<sub>**Declaration**</sub>
```swift
public func getValue<T: XMLTextNodeInitializable>() throws -> T
```

<sub>**Infered Type**</sub>
```swift
<T where T : XMLTextNodeInitializable> (XMLNode) -> () throws -> T
```

Get node value (text node) converted to given type

- Returns: Node value (text node) converted to given type
- Throws: XMLError if node has no value (does not contain a text node) or if casting to type fails



### getValue()

<sub>**Declaration**</sub>
```swift
public func getValue<T: XMLTextNodeInitializable>() -> T?
```

<sub>**Infered Type**</sub>
```swift
<T where T : XMLTextNodeInitializable> (XMLNode) -> () -> T?
```

Get node valye (text node) converted to a given type

- Returns: Node value (text node) converted to a given type, otherwise nil

