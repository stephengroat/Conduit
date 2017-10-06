<sub>**ENUM**</sub>
# SpaceEncodingRule

<sub>**Declaration**</sub>
```swift
public enum SpaceEncodingRule
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.SpaceEncodingRule.Type
```

Defines how spaces should be encoded within a query string

--------------------

## Cases
### encoded

<sub>**Declaration**</sub>
```swift
case encoded
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.SpaceEncodingRule.Type) -> QueryStringFormattingOptions.SpaceEncodingRule
```

param1=some value => param1=some%20value

### replacedWithDecodedPlus

<sub>**Declaration**</sub>
```swift
case replacedWithDecodedPlus
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.SpaceEncodingRule.Type) -> QueryStringFormattingOptions.SpaceEncodingRule
```

param1=some value => param1=some+value



