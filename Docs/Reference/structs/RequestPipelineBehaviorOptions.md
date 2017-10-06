<sub>**STRUCT**</sub>
# RequestPipelineBehaviorOptions

<sub>**Declaration**</sub>
```swift
public struct RequestPipelineBehaviorOptions: OptionSet
```

<sub>**Infered Type**</sub>
```swift
RequestPipelineBehaviorOptions.Type
```

Represents options specific to the behavior of the request pipeline

--------------------

## Properties
### rawValue

<sub>**Declaration**</sub>
```swift
public var rawValue: Int
```

<sub>**Infered Type**</sub>
```swift
Int
```



## Methods
### init(rawValue:)

<sub>**Declaration**</sub>
```swift
public init(rawValue: Int)
```

<sub>**Infered Type**</sub>
```swift
(RequestPipelineBehaviorOptions.Type) -> (Int) -> RequestPipelineBehaviorOptions
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *rawValue* | The raw value of the option set to create. Each bit of `rawValue` potentially represents an element of the option set, though raw values may include bits that are not defined as distinct values of the `OptionSet` type. |