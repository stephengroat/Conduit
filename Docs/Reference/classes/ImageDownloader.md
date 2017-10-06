<sub>**CLASS**</sub>
# ImageDownloader

<sub>**Declaration**</sub>
```swift
public final class ImageDownloader
```

<sub>**Infered Type**</sub>
```swift
ImageDownloader.Type
```

Utilizes Conduit to download and safely cache/retrieve
images across multiple threads

--------------------



## Methods
### init(cache:sessionClient:)

<sub>**Declaration**</sub>
```swift
public init(cache: URLImageCache, sessionClient: URLSessionClientType = URLSessionClient())
```

<sub>**Infered Type**</sub>
```swift
(ImageDownloader.Type) -> (URLImageCache, URLSessionClientType) -> ImageDownloader
```

Initializes a new ImageDownloader
- Parameters:
    - cache: The image cache in which to store downloaded images
    - sessionClient: The URLSessionClient to be used to download images

#### Parameters
| Name | Description |
| ---- | ----------- |
| *cache* | The image cache in which to store downloaded images |
| *sessionClient* | The URLSessionClient to be used to download images |

### downloadImage(for:completion:)

<sub>**Declaration**</sub>
```swift
public func downloadImage(for request: URLRequest, completion: @escaping CompletionHandler) -> SessionTaskProxyType?
```

<sub>**Infered Type**</sub>
```swift
(ImageDownloader) -> (URLRequest, @escaping (ImageDownloader.Response) -> ()) -> SessionTaskProxyType?
```

Downloads an image or retrieves it from the cache if previously downloaded.
- Parameters:
    - request: The request for the image
- Returns: A concrete SessionTaskProxyType

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The request for the image |