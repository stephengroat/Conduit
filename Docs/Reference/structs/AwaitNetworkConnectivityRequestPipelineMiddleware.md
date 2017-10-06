<sub>**STRUCT**</sub>
# AwaitNetworkConnectivityRequestPipelineMiddleware

<sub>**Declaration**</sub>
```swift
public struct AwaitNetworkConnectivityRequestPipelineMiddleware: RequestPipelineMiddleware
```

<sub>**Infered Type**</sub>
```swift
AwaitNetworkConnectivityRequestPipelineMiddleware.Type
```

A middleware component for use within a URLSessionClient pipeline that halts pipeline
execution while the network is unreachable.

--------------------

## Properties
### pipelineBehaviorOptions

<sub>**Declaration**</sub>
```swift
public var pipelineBehaviorOptions: RequestPipelineBehaviorOptions = []
```

<sub>**Infered Type**</sub>
```swift
RequestPipelineBehaviorOptions
```



## Methods
### init(timeout:)

<sub>**Declaration**</sub>
```swift
public init(timeout: TimeInterval? = nil)
```

<sub>**Infered Type**</sub>
```swift
(AwaitNetworkConnectivityRequestPipelineMiddleware.Type) -> (Double?) -> AwaitNetworkConnectivityRequestPipelineMiddleware
```

Creates a new AwaitNetworkConnectivityRequestPipelineMiddleware with a provided
timeout interval for awaiting an internet connection. If nil, then
the application will continue to wait until the network is reachable.



### prepareForTransport(request:completion:)

<sub>**Declaration**</sub>
```swift
public func prepareForTransport(request: URLRequest, completion: @escaping ((Result<URLRequest>) -> Void))
```

<sub>**Infered Type**</sub>
```swift
(AwaitNetworkConnectivityRequestPipelineMiddleware) -> (URLRequest, @escaping ((Result<URLRequest>) -> ())) -> ()
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The piped request |
| *completion* | A closure that pipes the middleware’s transformed URLRequest, or an error if processing failed |