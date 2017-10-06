<sub>**PROTOCOL**</sub>
# URLImageCache

<sub>**Declaration**</sub>
```swift
public protocol URLImageCache
```

<sub>**Infered Type**</sub>
```swift
URLImageCache.Protocol
```

Caches images keyed off of URLRequests

--------------------



## Methods
### image(for:)





Attempts to retrieve a cached image for the given request

- Parameters:
    - request: The request for the image
- Returns: The cached image or nil of none exists



### image(for:)

<sub>**Declaration**</sub>
```swift
func image(for request: URLRequest) -> UIImage?
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : URLImageCache> (Self) -> (URLRequest) -> UIImage?
```

Attempts to retrieve a cached image for the given request

- Parameters:
    - request: The request for the image
- Returns: The cached image or nil of none exists

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The request for the image |

### image(for:)









### cacheIdentifier(for:)

<sub>**Declaration**</sub>
```swift
func cacheIdentifier(for request: URLRequest) -> String?
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : URLImageCache> (Self) -> (URLRequest) -> String?
```

Attempts to build a cache identifier for the given request

- Parameters:
    - request: The request for the image
- Returns: An identifier for the cached image

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The request for the image |

### cache(image:for:)





Attempts to cache an image for a given request

- Parameters:
    - image: The image to be cached
    - request: The original request for the image



### cache(image:for:)

<sub>**Declaration**</sub>
```swift
mutating func cache(image: UIImage, for request: URLRequest)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : URLImageCache> (inout Self) -> (UIImage, URLRequest) -> ()
```

Attempts to cache an image for a given request

- Parameters:
    - image: The image to be cached
    - request: The original request for the image

#### Parameters
| Name | Description |
| ---- | ----------- |
| *image* | The image to be cached |
| *request* | The original request for the image |

### removeImage(for:)

<sub>**Declaration**</sub>
```swift
mutating func removeImage(for request: URLRequest)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : URLImageCache> (inout Self) -> (URLRequest) -> ()
```

Attempts to remove an image from the cache for a given request
- Parameters:
    - request: The original request for the image

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The original request for the image |

### purge()

<sub>**Declaration**</sub>
```swift
mutating func purge()
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : URLImageCache> (inout Self) -> () -> ()
```

Purges all images from the cache

