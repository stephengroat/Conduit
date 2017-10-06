<sub>**CLASS**</sub>
# JSONRequestSerializer

<sub>**Declaration**</sub>
```swift
public final class JSONRequestSerializer: HTTPRequestSerializer
```

<sub>**Infered Type**</sub>
```swift
JSONRequestSerializer.Type
```

An HTTPRequestSerializer that serializes request content into JSON data

--------------------



## Methods
### init(writingOptions:)

<sub>**Declaration**</sub>
```swift
public init(writingOptions: JSONSerialization.WritingOptions = [])
```

<sub>**Infered Type**</sub>
```swift
(JSONRequestSerializer.Type) -> (JSONSerialization.WritingOptions) -> JSONRequestSerializer
```

Creates a new JSONRequestSerializer
- Parameters:
  - writingOptions: (Optional) A list of writing options for JSON serialization

#### Parameters
| Name | Description |
| ---- | ----------- |
| *writingOptions* | (Optional) A list of writing options for JSON serialization |

### serialize(request:bodyParameters:)

<sub>**Declaration**</sub>
```swift
public override func serialize(request: URLRequest, bodyParameters: Any? = nil) throws -> URLRequest
```

<sub>**Infered Type**</sub>
```swift
(JSONRequestSerializer) -> (URLRequest, Any?) throws -> URLRequest
```



