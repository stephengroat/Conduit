<sub>**PROTOCOL**</sub>
# URLSessionClientType

<sub>**Declaration**</sub>
```swift
public protocol URLSessionClientType
```

<sub>**Infered Type**</sub>
```swift
URLSessionClientType.Protocol
```

A type that manages a session and queues URLRequest's

--------------------

## Properties
### middleware

<sub>**Declaration**</sub>
```swift
var middleware: [RequestPipelineMiddleware]
```

<sub>**Infered Type**</sub>
```swift
[RequestPipelineMiddleware]
```

The middleware that all incoming requests should be piped through

## Methods
### begin(request:)

<sub>**Declaration**</sub>
```swift
func begin(request: URLRequest) throws -> (data: Data?, response: HTTPURLResponse)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : URLSessionClientType> (Self) -> (URLRequest) throws -> (data: Data?, response: HTTPURLResponse)
```

Queues a request into the session pipeline, blocking until request completes or fails
- Parameters:
    - request: The URLRequest to be enqueued
- Returns: Tuple containing data and response
- Throws: Error, if any

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The URLRequest to be enqueued |

### begin(request:completion:)

<sub>**Declaration**</sub>
```swift
func begin(request: URLRequest, completion: @escaping SessionTaskCompletion) -> SessionTaskProxyType
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : URLSessionClientType> (Self) -> (URLRequest, @escaping (Data?, HTTPURLResponse?, Error?) -> ()) -> SessionTaskProxyType
```

Queues a request into the session pipeline
- Parameters:
    - request: The URLRequest to be enqueued
    - completion: The response handler

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The URLRequest to be enqueued |
| *completion* | The response handler |