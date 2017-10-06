<sub>**ENUM**</sub>
# ArrayFormat

<sub>**Declaration**</sub>
```swift
public enum ArrayFormat
```

<sub>**Infered Type**</sub>
```swift
QueryStringFormattingOptions.ArrayFormat.Type
```

Defines how arrays should be formatted within a query string

--------------------

## Cases
### duplicatedKeys

<sub>**Declaration**</sub>
```swift
case duplicatedKeys
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.ArrayFormat.Type) -> QueryStringFormattingOptions.ArrayFormat
```

param=value1&param=value2&param=value3

### bracketed

<sub>**Declaration**</sub>
```swift
case bracketed
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.ArrayFormat.Type) -> QueryStringFormattingOptions.ArrayFormat
```

param[]=value1&param[]=value2&param[]=value3

### indexed

<sub>**Declaration**</sub>
```swift
case indexed
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.ArrayFormat.Type) -> QueryStringFormattingOptions.ArrayFormat
```

param[0]=value1&param[1]=value2&param[3]=value3

### commaSeparated

<sub>**Declaration**</sub>
```swift
case commaSeparated
```

<sub>**Infered Type**</sub>
```swift
(QueryStringFormattingOptions.ArrayFormat.Type) -> QueryStringFormattingOptions.ArrayFormat
```

param=value1,value2,value3



