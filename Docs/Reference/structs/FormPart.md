<sub>**STRUCT**</sub>
# FormPart

<sub>**Declaration**</sub>
```swift
public struct FormPart
```

<sub>**Infered Type**</sub>
```swift
FormPart.Type
```

Represents a part of a multipart form with associated content and content information

--------------------

## Properties
### name

<sub>**Declaration**</sub>
```swift
public let name: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The name of the form part

### filename

<sub>**Declaration**</sub>
```swift
public let filename: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

The filename of the associated content data, if the data is binary

### content

<sub>**Declaration**</sub>
```swift
public let content: Content
```

<sub>**Infered Type**</sub>
```swift
FormPart.Content
```

The form part content

### additionalHTTPHeaderFields

<sub>**Declaration**</sub>
```swift
public var additionalHTTPHeaderFields: [String: String] = [:]
```

<sub>**Infered Type**</sub>
```swift
[String : String]
```

Additional header fields to apply to the form part (beyond Content-Disposition and Content-Type)

### contentType

<sub>**Declaration**</sub>
```swift
public var contentType: String?
```

<sub>**Infered Type**</sub>
```swift
String?
```

Specifies a custom (or nonexistent) Content-Type for the part headers. Defaults to the
content's MIME type, or application/octet-stream if there is no MIME type.

## Methods
### init(name:filename:content:)

<sub>**Declaration**</sub>
```swift
public init(name: String? = nil, filename: String? = nil, content: Content)
```

<sub>**Infered Type**</sub>
```swift
(FormPart.Type) -> (String?, String?, FormPart.Content) -> FormPart
```

Creates a new FormPart with the provided name, filename, and content

