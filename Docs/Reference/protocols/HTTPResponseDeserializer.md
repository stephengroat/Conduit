<sub>**PROTOCOL**</sub>
# HTTPResponseDeserializer

<sub>**Declaration**</sub>
```swift
public protocol HTTPResponseDeserializer: ResponseDeserializer
```

<sub>**Infered Type**</sub>
```swift
HTTPResponseDeserializer.Protocol
```

A ResponseDeserializer that interacts with responses from an HTTP server

--------------------

## Properties
### acceptableStatusCodes

<sub>**Declaration**</sub>
```swift
var acceptableStatusCodes: IndexSet
```

<sub>**Infered Type**</sub>
```swift
IndexSet
```

A range of HTTP status codes that are considered valid (usually 200-299)

### acceptableContentTypes

<sub>**Declaration**</sub>
```swift
var acceptableContentTypes: [String]?
```

<sub>**Infered Type**</sub>
```swift
[String]?
```

A range of MIME types that are considered valid in the response "Content-Type" header.
This usually associates directly with the concrete implementations of HTTPResponseDeserializer.

