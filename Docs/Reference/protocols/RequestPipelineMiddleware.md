<sub>**PROTOCOL**</sub>
# RequestPipelineMiddleware

<sub>**Declaration**</sub>
```swift
public protocol RequestPipelineMiddleware
```

<sub>**Infered Type**</sub>
```swift
RequestPipelineMiddleware.Protocol
```



--------------------

## Properties
### pipelineBehaviorOptions

<sub>**Declaration**</sub>
```swift
var pipelineBehaviorOptions: RequestPipelineBehaviorOptions
```

<sub>**Infered Type**</sub>
```swift
RequestPipelineBehaviorOptions
```

Represents options specific to the behavior of the request pipeline. Does not need to be constant.

## Methods
### prepareForTransport(request:completion:)

<sub>**Declaration**</sub>
```swift
func prepareForTransport(request: URLRequest, completion: @escaping Result<URLRequest>.Block)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : RequestPipelineMiddleware> (Self) -> (URLRequest, @escaping (Result<URLRequest>) -> ()) -> ()
```

Pipes the request either from the client or from the previous middleware component,
depending on its position in the middleware queue.
- Parameters:
    - request: The piped request
    - completion: A closure that pipes the middleware's transformed URLRequest, or an error if processing failed

#### Parameters
| Name | Description |
| ---- | ----------- |
| *request* | The piped request |
| *completion* | A closure that pipes the middleware’s transformed URLRequest, or an error if processing failed |