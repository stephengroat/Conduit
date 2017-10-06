<sub>**STRUCT**</sub>
# XMLNode

<sub>**Declaration**</sub>
```swift
public struct XMLNode
```

<sub>**Infered Type**</sub>
```swift
XMLNode.Type
```

Represents a single node in an XML document

--------------------

## Properties
### name

<sub>**Declaration**</sub>
```swift
public var name: String
```

<sub>**Infered Type**</sub>
```swift
String
```

The name of the element

### children

<sub>**Declaration**</sub>
```swift
public var children: [XMLNode]
```

<sub>**Infered Type**</sub>
```swift
[XMLNode]
```

The child nodes

### attributes

<sub>**Declaration**</sub>
```swift
public var attributes = [String: String]()
```

<sub>**Infered Type**</sub>
```swift
[String : String]
```

The element attributes

### text

<sub>**Declaration**</sub>
```swift
public var text: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The contained text node (value) of the element

### isProcessingInstruction

<sub>**Declaration**</sub>
```swift
public var isProcessingInstruction = false
```

<sub>**Infered Type**</sub>
```swift
Bool
```

Determines whether or not the element is a processing instruction

### isLeaf

<sub>**Declaration**</sub>
```swift
public var isLeaf: Bool
```

<sub>**Infered Type**</sub>
```swift
Bool
```

Determines whether or not the element is a leaf (no children)

## Methods
### init(name:value:attributes:children:)

<sub>**Declaration**</sub>
```swift
public init(name: String, value: CustomStringConvertible? = nil, attributes: [String: String] = [:], children: [XMLNode] = [])
```

<sub>**Infered Type**</sub>
```swift
(XMLNode.Type) -> (String, CustomStringConvertible?, [String : String], [XMLNode]) -> XMLNode
```

Construct XMLNode with optional value, attributes and children

- Parameters:
  - name: Name of the node
  - value: String value (text node)
  - attributes: Node attributes dictionary
  - children: Array of child nodes

#### Parameters
| Name | Description |
| ---- | ----------- |
| *name* | Name of the node |
| *value* | String value (text node) |
| *attributes* | Node attributes dictionary |
| *children* | Array of child nodes |

### init(name:children:)

<sub>**Declaration**</sub>
```swift
public init(name: String, children: XMLDictionary)
```

<sub>**Infered Type**</sub>
```swift
(XMLNode.Type) -> (String, [String : CustomStringConvertible]) -> XMLNode
```

Construct XML node from a dictionary of [String: CustomStringConvertible]
- Supports nesting properties any number of levels
- Supports arrays of nodes with the same node name (tag)
- Supports text nodes from any type that conforms to CustomStringConverible (Int, Double, etc.)
- Does not support node attributes

Example:

    let node = XMLNode(name: "FooBar", children: ["Foo": foo, "Bar": bar])

- Parameters:
  - name: Name of the node
  - children: Dictionary of children nodes

#### Parameters
| Name | Description |
| ---- | ----------- |
| *name* | Name of the node |
| *children* | Dictionary of children nodes |

### nodes(named:traversal:)

<sub>**Declaration**</sub>
```swift
public func nodes(named name: String, traversal: XMLNodeTraversal = .breadthFirst) -> [XMLNode]
```

<sub>**Infered Type**</sub>
```swift
(XMLNode) -> (String, XMLNodeTraversal) -> [XMLNode]
```

Retrieve a list of all descendant nodes with the given name

- Parameter name: Node name to retrieve
- Parameter traversal: Node Traversal technique. Defaults to Breadth first
- Returns: Array of descendant nodes

#### Parameters
| Name | Description |
| ---- | ----------- |
| *name* | Node name to retrieve |
| *traversal* | Node Traversal technique. Defaults to Breadth first |

### node(named:traversal:)

<sub>**Declaration**</sub>
```swift
public func node(named name: String, traversal: XMLNodeTraversal = .breadthFirst) throws -> XMLNode
```

<sub>**Infered Type**</sub>
```swift
(XMLNode) -> (String, XMLNodeTraversal) throws -> XMLNode
```

Retrieve the first descendant node with the given name

- Parameter name: Node name to retrieve
- Parameter traversal: Node Traversal technique. Defaults to Breadth first
- Returns: Descendant nodes
- Throws: XMLError if no descendant found

#### Parameters
| Name | Description |
| ---- | ----------- |
| *name* | Node name to retrieve |
| *traversal* | Node Traversal technique. Defaults to Breadth first |