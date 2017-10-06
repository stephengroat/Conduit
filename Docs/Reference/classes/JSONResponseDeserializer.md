<sub>**CLASS**</sub>
# JSONResponseDeserializer

<sub>**Declaration**</sub>
```swift
public final class JSONResponseDeserializer: HTTPResponseDeserializer
```

<sub>**Infered Type**</sub>
```swift
JSONResponseDeserializer.Type
```

An HTTPResponseDeserializer that deals with JSON responses

--------------------

## Properties
### readingOptions

<sub>**Declaration**</sub>
```swift
public let readingOptions: JSONSerialization.ReadingOptions
```

<sub>**Infered Type**</sub>
```swift
JSONSerialization.ReadingOptions
```



### acceptableStatusCodes

<sub>**Declaration**</sub>
```swift
public var acceptableStatusCodes: IndexSet = IndexSet(integersIn: 200..<300)
```

<sub>**Infered Type**</sub>
```swift
IndexSet
```



### acceptableContentTypes

<sub>**Declaration**</sub>
```swift
public var acceptableContentTypes: [String]? = ["application/json"]
```

<sub>**Infered Type**</sub>
```swift
[String]?
```



## Methods
### init(readingOptions:)

<sub>**Declaration**</sub>
```swift
public init(readingOptions: JSONSerialization.ReadingOptions = [])
```

<sub>**Infered Type**</sub>
```swift
(JSONResponseDeserializer.Type) -> (JSONSerialization.ReadingOptions) -> JSONResponseDeserializer
```

Creates a new JSONResponseDeserializer
- Parameters:
  - readingOptions: (Optional) A list of reading options for JSON deserialization

#### Parameters
| Name | Description |
| ---- | ----------- |
| *readingOptions* | (Optional) A list of reading options for JSON deserialization |

### deserialize(data:)

<sub>**Declaration**</sub>
```swift
public func deserialize(data: Data?) throws -> Any
```

<sub>**Infered Type**</sub>
```swift
(JSONResponseDeserializer) -> (Data?) throws -> Any
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *data* | The response data |