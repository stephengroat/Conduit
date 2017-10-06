<sub>**STRUCT**</sub>
# XML

<sub>**Declaration**</sub>
```swift
public struct XML
```

<sub>**Infered Type**</sub>
```swift
XML.Type
```

Represents an XML document

--------------------

## Properties
### root

<sub>**Declaration**</sub>
```swift
public var root: XMLNode?
```

<sub>**Infered Type**</sub>
```swift
XMLNode?
```

The root of the document

### processingInstructions

<sub>**Declaration**</sub>
```swift
public var processingInstructions: [XMLNode]
```

<sub>**Infered Type**</sub>
```swift
[XMLNode]
```

A list of processing instructions at the root of the document

## Methods
### init(root:processingInstructions:)

<sub>**Declaration**</sub>
```swift
public init(root: XMLNode, processingInstructions: [XMLNode] = [])
```

<sub>**Infered Type**</sub>
```swift
(XML.Type) -> (XMLNode, [XMLNode]) -> XML
```

Produces an XML document with the provided root and processing instructions.

- Parameter root: The root of the document
- Parameter processingInstructions: Processing instructions at the root of the document

#### Parameters
| Name | Description |
| ---- | ----------- |
| *root* | The root of the document |
| *processingInstructions* | Processing instructions at the root of the document |