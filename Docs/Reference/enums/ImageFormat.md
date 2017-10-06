<sub>**ENUM**</sub>
# ImageFormat

<sub>**Declaration**</sub>
```swift
public enum ImageFormat
```

<sub>**Infered Type**</sub>
```swift
FormPart.ImageFormat.Type
```

The image format used to compress the image data

--------------------

## Cases
### jpeg

<sub>**Declaration**</sub>
```swift
case jpeg(compressionQuality: CGFloat)
```

<sub>**Infered Type**</sub>
```swift
(FormPart.ImageFormat.Type) -> (CGFloat) -> FormPart.ImageFormat
```

JPEG representation with an associated compression quality,
where 0.0 represents the lowest quality and 1.0 represents the highest quality

### png

<sub>**Declaration**</sub>
```swift
case png
```

<sub>**Infered Type**</sub>
```swift
(FormPart.ImageFormat.Type) -> FormPart.ImageFormat
```

PNG representation



