<sub>**CLASS**</sub>
# XMLRequestSerializer

<sub>**Declaration**</sub>
```swift
public final class XMLRequestSerializer: HTTPRequestSerializer
```

<sub>**Infered Type**</sub>
```swift
XMLRequestSerializer.Type
```

An HTTPRequestSerializer that serializes request content into XML data

--------------------



## Methods
### init()

<sub>**Declaration**</sub>
```swift
public override init()
```

<sub>**Infered Type**</sub>
```swift
(XMLRequestSerializer.Type) -> () -> XMLRequestSerializer
```





### serialize(request:bodyParameters:)

<sub>**Declaration**</sub>
```swift
public override func serialize(request: URLRequest, bodyParameters: Any? = nil) throws -> URLRequest
```

<sub>**Infered Type**</sub>
```swift
(XMLRequestSerializer) -> (URLRequest, Any?) throws -> URLRequest
```



