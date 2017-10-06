<sub>**EXTENSION**</sub>
# DataConvertible

--------------------



## Methods
### serialized()

<sub>**Declaration**</sub>
```swift
public func serialized() throws -> Data
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : DataConvertible, Self : Encodable> (Self) -> () throws -> Data
```





### init(serializedData:)

<sub>**Declaration**</sub>
```swift
public init(serializedData: Data) throws
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : DataConvertible, Self : Decodable> (Self.Type) -> (Data) throws -> Self
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *serializedData* | The data to deserialize |

### serialized()

<sub>**Declaration**</sub>
```swift
public func serialized() throws -> Data
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : DataConvertible, Self : NSCoding> (Self) -> () throws -> Data
```





### init(serializedData:)

<sub>**Declaration**</sub>
```swift
public init(serializedData: Data) throws
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : DataConvertible, Self : NSCoding> (Self.Type) -> (Data) throws -> Self
```



#### Parameters
| Name | Description |
| ---- | ----------- |
| *serializedData* | The data to deserialize |