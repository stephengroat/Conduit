<sub>**PROTOCOL**</sub>
# ResponseDeserializer

<sub>**Declaration**</sub>
```swift
public protocol ResponseDeserializer
```

<sub>**Infered Type**</sub>
```swift
ResponseDeserializer.Protocol
```

A structure that deserializes a provided NSURLResponse and response data into a loose transport object

--------------------



## Methods
### deserialize(response:data:)

<sub>**Declaration**</sub>
```swift
func deserialize(response: HTTPURLResponse?, data: Data?) throws -> Any
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : ResponseDeserializer> (Self) -> (HTTPURLResponse?, Data?) throws -> Any
```

Deserializes a HTTPURLResponse and response data into a loose transport object
- Parameters:
    - response: The URL response to deserialize and validate against
    - data: The response data
- Throws: A `ResponseDeserializerError` if deserialization is not possible
- Returns: A non-domain specific transport object, such as a Dictionary or an Array

#### Parameters
| Name | Description |
| ---- | ----------- |
| *response* | The URL response to deserialize and validate against |
| *data* | The response data |

### deserialize(data:)

<sub>**Declaration**</sub>
```swift
func deserialize(data: Data?) throws -> Any
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : ResponseDeserializer> (Self) -> (Data?) throws -> Any
```

Deserializes unvalidated response data into a loose transport object
- Parameters:
    - data: The response data
- Throws: A `ResponseDeserializerError` if deserialization is not possible
- Returns: A non-domain specific transport object, such as a Dictionary or an Array

#### Parameters
| Name | Description |
| ---- | ----------- |
| *data* | The response data |