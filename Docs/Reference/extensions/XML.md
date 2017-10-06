<sub>**EXTENSION**</sub>
# XML

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
(XML.Type) -> (String) -> XML?
```

Attempts to produce an XML document with the provided XML string

- Parameter description: The XML string to deserialize

#### Parameters
| Name | Description |
| ---- | ----------- |
| *description* | The XML string to deserialize |