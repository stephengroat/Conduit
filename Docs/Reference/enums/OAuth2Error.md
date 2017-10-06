<sub>**ENUM**</sub>
# OAuth2Error

<sub>**Declaration**</sub>
```swift
public enum OAuth2Error: Error
```

<sub>**Infered Type**</sub>
```swift
OAuth2Error.Type
```

An error that occurs while attempting to grant or access a token

--------------------

## Cases
### noResponse

<sub>**Declaration**</sub>
```swift
case noResponse
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Error.Type) -> OAuth2Error
```

The server application failed to respond within the timeout

### clientFailure

<sub>**Declaration**</sub>
```swift
case clientFailure(Data?, HTTPURLResponse?)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Error.Type) -> (Data?, HTTPURLResponse?) -> OAuth2Error
```

The server response indicates a bad request

### internalFailure

<sub>**Declaration**</sub>
```swift
case internalFailure
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Error.Type) -> OAuth2Error
```

An unexpected error occurred within the framework

### serverFailure

<sub>**Declaration**</sub>
```swift
case serverFailure(Data?, HTTPURLResponse)
```

<sub>**Infered Type**</sub>
```swift
(OAuth2Error.Type) -> (Data?, HTTPURLResponse) -> OAuth2Error
```

The server application responded with an unexpected failure



