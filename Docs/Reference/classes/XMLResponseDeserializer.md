<sub>**CLASS**</sub>
# XMLResponseDeserializer

<sub>**Declaration**</sub>
```swift
public final class XMLResponseDeserializer: HTTPResponseDeserializer
```

<sub>**Infered Type**</sub>
```swift
XMLResponseDeserializer.Type
```

An HTTPResponseDeserializer that deals with XML responses

--------------------

## Properties
### acceptableContentTypes

<sub>**Declaration**</sub>
```swift
public var acceptableContentTypes: [String]?
```

<sub>**Infered Type**</sub>
```swift
[String]?
```

A range of MIME types that are considered valid in the response "Content-Type" header.
This usually associates directly with the concrete implementations of HTTPResponseDeserializer.

### acceptableStatusCodes

<sub>**Declaration**</sub>
```swift
public var acceptableStatusCodes = IndexSet(integersIn: 200..<300)
```

<sub>**Infered Type**</sub>
```swift
IndexSet
```

A range of HTTP status codes that are considered valid (usually 200-299)

## Methods
### init()

<sub>**Declaration**</sub>
```swift
public init()
```

<sub>**Infered Type**</sub>
```swift
(XMLResponseDeserializer.Type) -> () -> XMLResponseDeserializer
```





### deserialize(data:)

<sub>**Declaration**</sub>
```swift
public func deserialize(data: Data?) throws -> Any
```

<sub>**Infered Type**</sub>
```swift
(XMLResponseDeserializer) -> (Data?) throws -> Any
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *data* | The response data |