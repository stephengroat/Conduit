<sub>**ENUM**</sub>
# RequestSerializerError

<sub>**Declaration**</sub>
```swift
public enum RequestSerializerError: Error
```

<sub>**Infered Type**</sub>
```swift
RequestSerializerError.Type
```

Errors that signify failures within a `RequestSerializer`

--------------------

## Cases
### unknown

<sub>**Declaration**</sub>
```swift
case unknown
```

<sub>**Infered Type**</sub>
```swift
(RequestSerializerError.Type) -> RequestSerializerError
```

Serialization could not be completed due to an unexpected error

### httpVerbDoesNotAllowBodyParameters

<sub>**Declaration**</sub>
```swift
case httpVerbDoesNotAllowBodyParameters
```

<sub>**Infered Type**</sub>
```swift
(RequestSerializerError.Type) -> RequestSerializerError
```

The serializer was asked to serialize "body parameters," but
the specified HTTP verb does not submit a body (i.e. GET and HEAD)

### serializationFailure

<sub>**Declaration**</sub>
```swift
case serializationFailure
```

<sub>**Infered Type**</sub>
```swift
(RequestSerializerError.Type) -> RequestSerializerError
```

Something went wrong when attempting to serialize the request

### invalidURL

<sub>**Declaration**</sub>
```swift
case invalidURL
```

<sub>**Infered Type**</sub>
```swift
(RequestSerializerError.Type) -> RequestSerializerError
```

Invalid URL



