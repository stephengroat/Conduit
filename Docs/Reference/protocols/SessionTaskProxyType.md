<sub>**PROTOCOL**</sub>
# SessionTaskProxyType

<sub>**Declaration**</sub>
```swift
public protocol SessionTaskProxyType
```

<sub>**Infered Type**</sub>
```swift
SessionTaskProxyType.Protocol
```

Allows limited access to a network task created via a URLSessionClient

--------------------

## Properties
### downloadProgressHandler

<sub>**Declaration**</sub>
```swift
var downloadProgressHandler: SessionTaskProgressHandler?
```

<sub>**Infered Type**</sub>
```swift
(Progress) -> ()?
```

Reports download progress

### uploadProgressHandler

<sub>**Declaration**</sub>
```swift
var uploadProgressHandler: SessionTaskProgressHandler?
```

<sub>**Infered Type**</sub>
```swift
(Progress) -> ()?
```

Reports upload progress

## Methods
### cancel()

<sub>**Declaration**</sub>
```swift
func cancel()
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : SessionTaskProxyType> (Self) -> () -> ()
```

Cancels the task, or schedules it to be canceled



### suspend()

<sub>**Declaration**</sub>
```swift
func suspend()
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : SessionTaskProxyType> (Self) -> () -> ()
```

Suspends the task, or schedules it to be suspended



### resume()

<sub>**Declaration**</sub>
```swift
func resume()
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : SessionTaskProxyType> (Self) -> () -> ()
```

Resumes the task if it was previously suspended

