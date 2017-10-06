<sub>**PROTOCOL**</sub>
# DataConvertible

<sub>**Declaration**</sub>
```swift
public protocol DataConvertible
```

<sub>**Infered Type**</sub>
```swift
DataConvertible.Protocol
```

A type that can be serialized and deserialized with arbitrary encoding

--------------------



## Methods
### serialized()

<sub>**Declaration**</sub>
```swift
func serialized() throws -> Data
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : DataConvertible> (Self) -> () throws -> Data
```

Serializes the structure with arbitrary encoding



### init(serializedData:)

<sub>**Declaration**</sub>
```swift
init(serializedData: Data) throws
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : DataConvertible> (Self.Type) -> (Data) throws -> Self
```

Deserializes the structure with encoding defined by `serialized()`
- Parameters:
   - serializedData: The data to deserialize

#### Parameters
| Name | Description |
| ---- | ----------- |
| *serializedData* | The data to deserialize |