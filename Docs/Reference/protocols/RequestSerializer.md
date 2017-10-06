<sub>**PROTOCOL**</sub>
# RequestSerializer

<sub>**Declaration**</sub>
```swift
public protocol RequestSerializer
```

<sub>**Infered Type**</sub>
```swift
RequestSerializer.Protocol
```

A structure that serializes a provided URLRequest and body parameters for transport

--------------------



## Methods
### serialize(request:bodyParameters:)

<sub>**Declaration**</sub>
```swift
func serialize(request: URLRequest, bodyParameters: Any?) throws -> URLRequest
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : RequestSerializer> (Self) -> (URLRequest, Any?) throws -> URLRequest
```

Serializes a request for transport based on the concrete structure's desired MIME type
- Parameters:
    - request: The non-parameterized request to serialize
    - bodyParameters: Parameters to serialize into the HTTP Body
- Throws: A `RequestSerializerError` if serialization is not possible
- Returns: A serialized URLRequest

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The non-parameterized request to serialize |
| *bodyParameters* | Parameters to serialize into the HTTP Body |