<sub>**STRUCT**</sub>
# Response

<sub>**Declaration**</sub>
```swift
public struct Response
```

<sub>**Infered Type**</sub>
```swift
ImageDownloader.Response.Type
```

Represents a network or cached image response

--------------------

## Properties
### image



<sub>**Infered Type**</sub>
```swift
NSImage?
```

The resulting image

### image

<sub>**Declaration**</sub>
```swift
public let image: UIImage?
```

<sub>**Infered Type**</sub>
```swift
UIImage?
```

The resulting image

### error

<sub>**Declaration**</sub>
```swift
public let error: Error?
```

<sub>**Infered Type**</sub>
```swift
Error?
```

The error that occurred from transport or cache retrieval

### urlResponse

<sub>**Declaration**</sub>
```swift
public let urlResponse: HTTPURLResponse?
```

<sub>**Infered Type**</sub>
```swift
HTTPURLResponse?
```

The URL response, if a download occurred

### isFromCache

<sub>**Declaration**</sub>
```swift
public let isFromCache: Bool
```

<sub>**Infered Type**</sub>
```swift
Bool
```

Signifies if the image was retrieved directly from the cache

