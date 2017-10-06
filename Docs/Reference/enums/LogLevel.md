<sub>**ENUM**</sub>
# LogLevel

<sub>**Declaration**</sub>
```swift
public enum LogLevel: Int
```

<sub>**Infered Type**</sub>
```swift
LogLevel.Type
```

Defines the 'severity' of a log message
- Note: A higher log level verbosity will capture all logs within lower
levels, i.e. LogLevel.info will capture .info, .warn, and .error logs

--------------------

## Cases
### verbose

<sub>**Declaration**</sub>
```swift
case verbose
```

<sub>**Infered Type**</sub>
```swift
(LogLevel.Type) -> LogLevel
```

Verbose debug logs

### debug

<sub>**Declaration**</sub>
```swift
case debug
```

<sub>**Infered Type**</sub>
```swift
(LogLevel.Type) -> LogLevel
```

Nonverbose debug logs

### info

<sub>**Declaration**</sub>
```swift
case info
```

<sub>**Infered Type**</sub>
```swift
(LogLevel.Type) -> LogLevel
```

Informational progress logs

### warn

<sub>**Declaration**</sub>
```swift
case warn
```

<sub>**Infered Type**</sub>
```swift
(LogLevel.Type) -> LogLevel
```

Warning / potential harm logs

### error

<sub>**Declaration**</sub>
```swift
case error
```

<sub>**Infered Type**</sub>
```swift
(LogLevel.Type) -> LogLevel
```

Error logs

### noOutput

<sub>**Declaration**</sub>
```swift
case noOutput
```

<sub>**Infered Type**</sub>
```swift
(LogLevel.Type) -> LogLevel
```

Ignores all logs



