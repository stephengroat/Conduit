<sub>**ENUM**</sub>
# SSLPinningType

<sub>**Declaration**</sub>
```swift
public enum SSLPinningType: UInt
```

<sub>**Infered Type**</sub>
```swift
SSLPinningType.Type
```

A granularity-level of SSL pinning to be performed

--------------------

## Cases
### none

<sub>**Declaration**</sub>
```swift
case none
```

<sub>**Infered Type**</sub>
```swift
(SSLPinningType.Type) -> SSLPinningType
```

No certificate data is compared

### publicKey

<sub>**Declaration**</sub>
```swift
case publicKey
```

<sub>**Infered Type**</sub>
```swift
(SSLPinningType.Type) -> SSLPinningType
```

Only certificate public keys are compared

### certificateData

<sub>**Declaration**</sub>
```swift
case certificateData
```

<sub>**Infered Type**</sub>
```swift
(SSLPinningType.Type) -> SSLPinningType
```

Certificate buffers are evaluated byte-for-byte



