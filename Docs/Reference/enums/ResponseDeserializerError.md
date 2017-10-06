<sub>**ENUM**</sub>
# ResponseDeserializerError

<sub>**Declaration**</sub>
```swift
public enum ResponseDeserializerError: Error
```

<sub>**Infered Type**</sub>
```swift
ResponseDeserializerError.Type
```

Errors that signify failures within `ResponseDeserializer`
- unknown: Deserialization could not be completed due to an unexpected error
- noResponse: No response was provided, or the response was empty
- badResponse: The response is not valid or indicates a failure
- noData: No response data was provided, or the data is empty
- serializationFailure: The response data could not be deserialized

--------------------

## Cases
### unknown

<sub>**Declaration**</sub>
```swift
case unknown
```

<sub>**Infered Type**</sub>
```swift
(ResponseDeserializerError.Type) -> ResponseDeserializerError
```

Deserialization could not be completed due to an unexpected error

### noResponse

<sub>**Declaration**</sub>
```swift
case noResponse
```

<sub>**Infered Type**</sub>
```swift
(ResponseDeserializerError.Type) -> ResponseDeserializerError
```

No response was provided, or the response was empty

### badResponse

<sub>**Declaration**</sub>
```swift
case badResponse(responseObject: Any?)
```

<sub>**Infered Type**</sub>
```swift
(ResponseDeserializerError.Type) -> (Any?) -> ResponseDeserializerError
```

The response is not valid or indicates a failure

### noData

<sub>**Declaration**</sub>
```swift
case noData
```

<sub>**Infered Type**</sub>
```swift
(ResponseDeserializerError.Type) -> ResponseDeserializerError
```

No response data was provided, or the data is empty

### deserializationFailure

<sub>**Declaration**</sub>
```swift
case deserializationFailure
```

<sub>**Infered Type**</sub>
```swift
(ResponseDeserializerError.Type) -> ResponseDeserializerError
```

The response data could not be deserialized



