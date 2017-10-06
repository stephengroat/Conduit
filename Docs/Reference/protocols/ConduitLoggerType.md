<sub>**PROTOCOL**</sub>
# ConduitLoggerType

<sub>**Declaration**</sub>
```swift
public protocol ConduitLoggerType
```

<sub>**Infered Type**</sub>
```swift
ConduitLoggerType.Protocol
```

Handles incoming log messages from all of Conduit

--------------------

## Properties
### level

<sub>**Declaration**</sub>
```swift
var level: LogLevel
```

<sub>**Infered Type**</sub>
```swift
LogLevel
```

The severity of log messages received

## Methods
### log(_:function:filePath:line:)

<sub>**Declaration**</sub>
```swift
func log(_ block: @autoclosure () -> Any, function: String, filePath: String, line: Int)
```

<sub>**Infered Type**</sub>
```swift
<Self where Self : ConduitLoggerType> (Self) -> (@autoclosure () -> Any, String, String, Int) -> ()
```

Handles an incoming log message
- Parameters:
  - block: The log generator
  - function: The name of the function from which the log originates
  - filePath: The name of the source file from which the log originates
  - line: The line number in which the log originates

#### Parameters
| Name | Description |
| ---- | ----------- |
| *block* | The log generator |
| *function* | The name of the function from which the log originates |
| *filePath* | The name of the source file from which the log originates |
| *line* | The line number in which the log originates |