<sub>**EXTENSION**</sub>
# HTTPResponseDeserializer

--------------------



## Methods
### validate(response:responseObject:)

<sub>**Declaration**</sub>
```swift
public func validate(response: HTTPURLResponse?, responseObject: Any?) throws
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : HTTPResponseDeserializer> (Self) -> (HTTPURLResponse?, Any?) throws -> ()
```

Validates the response against acceptable content types and status codes
- Parameters:
  - response: The HTTPURLResponse to validate against
  - responseObject: The deserialized response data

#### Parameters
| Name | Description |
| ---- | ----------- |
| *response* | The HTTPURLResponse to validate against |
| *responseObject* | The deserialized response data |

### deserialize(response:data:)

<sub>**Declaration**</sub>
```swift
public func deserialize(response: HTTPURLResponse?, data: Data?) throws -> Any
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : HTTPResponseDeserializer> (Self) -> (HTTPURLResponse?, Data?) throws -> Any
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *response* | The URL response to deserialize and validate against |
| *data* | The response data |