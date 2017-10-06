<sub>**ENUM**</sub>
# DictionaryFormat

<sub>**Declaration**</sub>
```swift
public enum DictionaryFormat
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.DictionaryFormat.Type
```

Defines how dictionaires should be formatted within a query string

--------------------

## Cases
### dotNotated

<sub>**Declaration**</sub>
```swift
case dotNotated
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.DictionaryFormat.Type) -> QueryStringFormattingOptions.DictionaryFormat
```

param.key1=value1&param.key2=value2&param.key3.key4=value3

### subscripted

<sub>**Declaration**</sub>
```swift
case subscripted
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.DictionaryFormat.Type) -> QueryStringFormattingOptions.DictionaryFormat
```

param[key1]=value1&param[key2]=value2&param[key3][key4]=value3



