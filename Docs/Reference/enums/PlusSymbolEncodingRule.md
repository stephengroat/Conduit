<sub>**ENUM**</sub>
# PlusSymbolEncodingRule

<sub>**Declaration**</sub>
```swift
public enum PlusSymbolEncodingRule
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.PlusSymbolEncodingRule.Type
```

Defines how plus symbols should be encoded within a query string

--------------------

## Cases
### decoded

<sub>**Declaration**</sub>
```swift
case decoded
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.PlusSymbolEncodingRule.Type) -> QueryStringFormattingOptions.PlusSymbolEncodingRule
```

param1=some+value => param1=some+value

### replacedWithEncodedSpace

<sub>**Declaration**</sub>
```swift
case replacedWithEncodedSpace
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.PlusSymbolEncodingRule.Type) -> QueryStringFormattingOptions.PlusSymbolEncodingRule
```

param1=some+value => param1=some%20value

### replacedWithEncodedPlus

<sub>**Declaration**</sub>
```swift
case replacedWithEncodedPlus
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.PlusSymbolEncodingRule.Type) -> QueryStringFormattingOptions.PlusSymbolEncodingRule
```

param1=some+value => param1=some%2Bvalue



