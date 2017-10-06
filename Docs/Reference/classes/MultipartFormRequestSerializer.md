<sub>**CLASS**</sub>
# MultipartFormRequestSerializer

<sub>**Declaration**</sub>
```swift
public final class MultipartFormRequestSerializer: HTTPRequestSerializer
```

<sub>**Infered Type**</sub>
```swift
MultipartFormRequestSerializer.Type
```

An HTTPRequestSerializer used for constructing multipart/form-data requests
- Important: For safety and readability, this class does not currently utilize I/O streams,
and it therefore will cause memory pressure for massive uploads. If the need arises,
the serializer implementation can be switched to utilize buffers.
- Note: This serializer does not currently support mixed boundaries. Support for all other
content types can be progressively added as needed.

--------------------



## Methods
### init()

<sub>**Declaration**</sub>
```swift
public override init()
```

<sub>**Infered Type**</sub>
```swift
(MultipartFormRequestSerializer.Type) -> () -> MultipartFormRequestSerializer
```





### append(formPart:)

<sub>**Declaration**</sub>
```swift
public func append(formPart: FormPart)
```

<sub>**Infered Type**</sub>
```swift
(MultipartFormRequestSerializer) -> (FormPart) -> ()
```

Appends the form part to the request body
- Parameters
    - formPart: The part to add to the form



### serialize(request:bodyParameters:)

<sub>**Declaration**</sub>
```swift
public override func serialize(request: URLRequest, bodyParameters: Any?) throws -> URLRequest
```

<sub>**Infered Type**</sub>
```swift
(MultipartFormRequestSerializer) -> (URLRequest, Any?) throws -> URLRequest
```



