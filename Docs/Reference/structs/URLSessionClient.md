<sub>**STRUCT**</sub>
# URLSessionClient

<sub>**Declaration**</sub>
```swift
public struct URLSessionClient: URLSessionClientType
```

<sub>**Infered Type**</sub>
```swift
URLSessionClient.Type
```

Pipes requests through provided middleware and queues them into a single NSURLSession

--------------------

## Properties
### middleware

<sub>**Declaration**</sub>
```swift
public var middleware: [RequestPipelineMiddleware]
```

<sub>**Infered Type**</sub>
```swift
[RequestPipelineMiddleware]
```

The middleware that all incoming requests should be piped through

### serverAuthenticationPolicies

<sub>**Declaration**</sub>
```swift
public var serverAuthenticationPolicies: [ServerAuthenticationPolicyType]
```

<sub>**Infered Type**</sub>
```swift
[ServerAuthenticationPolicyType]
```

The authentication policies to be evaluated against for NSURLAuthenticationChallenges against the
NSURLSession. Mutating this will affect all URLSessionClient copies.

## Methods
### init(middleware:sessionConfiguration:delegateQueue:)

<sub>**Declaration**</sub>
```swift
public init(middleware: [RequestPipelineMiddleware] = [],
                sessionConfiguration: URLSessionConfiguration = URLSessionConfiguration.default,
                delegateQueue: OperationQueue = OperationQueue.main)
```

<sub>**Infered Type**</sub>
```swift
(URLSessionClient.Type) -> ([RequestPipelineMiddleware], URLSessionConfiguration, OperationQueue) -> URLSessionClient
```

Creates a new URLSessionClient with provided middleware and NSURLSession parameters
- Parameters:
    - middleware: The middleware that all incoming requests should be piped through
    - sessionConfiguration: The NSURLSessionConfiguration used to construct the underlying NSURLSession.
                            Defaults to NSURLSessionConfiguration.defaultSessionConfiguration()
    - delegateQueue: The NSOperationQueue in which completion handlers should execute

#### Parameters
| Name | Description |
| ---- | ----------- |
| *middleware* | The middleware that all incoming requests should be piped through |
| *sessionConfiguration* | The NSURLSessionConfiguration used to construct the underlying NSURLSession. Defaults to NSURLSessionConfiguration.defaultSessionConfiguration() |
| *delegateQueue* | The NSOperationQueue in which completion handlers should execute |

### begin(request:)

<sub>**Declaration**</sub>
```swift
public func begin(request: URLRequest) throws -> (data: Data?, response: HTTPURLResponse)
```

<sub>**Infered Type**</sub>
```swift
(URLSessionClient) -> (URLRequest) throws -> (data: Data?, response: HTTPURLResponse)
```

Queues a request into the session pipeline, blocking until request completes or fails.
Method will throw an error if the request times out or if there is no response.
Empty data (`nil`) is considered a valid result and will not throw an exception.

Note: Synchronoys blocking calls will block the current thread, preventing the result from
      ever being returned. To avoid this, make sure the `delegateQueue` is different than
      the one from the calling thread.

- Parameters:
    - request: The URLRequest to be enqueued
- Returns: Tuple containing data and response
- Throws: URLSessionClientError, if any

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The URLRequest to be enqueued |

### begin(request:completion:)

<sub>**Declaration**</sub>
```swift
public func begin(request: URLRequest, completion: @escaping SessionTaskCompletion) -> SessionTaskProxyType
```

<sub>**Infered Type**</sub>
```swift
(URLSessionClient) -> (URLRequest, @escaping (Data?, HTTPURLResponse?, Error?) -> ()) -> SessionTaskProxyType
```

Queues a request into the session pipeline
- Parameters:
    - request: The URLRequest to be enqueued
    - completion: The response handler, which will execute on the session's delegateQueue

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The URLRequest to be enqueued |
| *completion* | The response handler, which will execute on the session’s delegateQueue |