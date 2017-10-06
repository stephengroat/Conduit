<sub>**CLASS**</sub>
# AutoPurgingURLImageCache

<sub>**Declaration**</sub>
```swift
public final class AutoPurgingURLImageCache: URLImageCache
```

<sub>**Infered Type**</sub>
```swift
AutoPurgingURLImageCache.Type
```

A concrete URLImageCache that automatically purges objects
when memory constraints are met.

--------------------



## Methods
### init(memoryCapacity:)

<sub>**Declaration**</sub>
```swift
public init(memoryCapacity: Int = 1_024 * 1_024 * 60)
```

<sub>**Infered Type**</sub>
```swift
(AutoPurgingURLImageCache.Type) -> (Int) -> AutoPurgingURLImageCache
```

Initializes an AutoPurgingURLImageCache with the desired memory capacity

- Parameters:
    - memoryCapacity: The desired cache capacity before image eviction. Defaults to 60MB.

- Important: The system will evict images based on different constraints within the system environment.
It is possible for the memory capacity to be surpassed and for the system to purge data at a later time.

#### Parameters
| Name | Description |
| ---- | ----------- |
| *memoryCapacity* | The desired cache capacity before image eviction. Defaults to 60MB. |

### image(for:)





Attempts to retrieve a cached image for the given request

- Parameters:
    - request: The request for the image
- Returns: The cached image or nil of none exists



### image(for:)

<sub>**Declaration**</sub>
```swift
public func image(for request: URLRequest) -> UIImage?
```

<sub>**Infered Type**</sub>
```swift
(AutoPurgingURLImageCache) -> (URLRequest) -> UIImage?
```

Attempts to retrieve a cached image for the given request

- Parameters:
    - request: The request for the image
- Returns: The cached image or nil of none exists

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The request for the image |

### cacheIdentifier(for:)

<sub>**Declaration**</sub>
```swift
public func cacheIdentifier(for request: URLRequest) -> String?
```

<sub>**Infered Type**</sub>
```swift
(AutoPurgingURLImageCache) -> (URLRequest) -> String?
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
public func cache(image: UIImage, for request: URLRequest)
```

<sub>**Infered Type**</sub>
```swift
(AutoPurgingURLImageCache) -> (UIImage, URLRequest) -> ()
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
public func removeImage(for request: URLRequest)
```

<sub>**Infered Type**</sub>
```swift
(AutoPurgingURLImageCache) -> (URLRequest) -> ()
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
public func purge()
```

<sub>**Infered Type**</sub>
```swift
(AutoPurgingURLImageCache) -> () -> ()
```

Purges all images from the cache

