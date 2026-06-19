# PDFGeneratorAPI::InlineObject10

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **Array&lt;String&gt;** | Array of base64 encoded images, one per converted page. | [optional] |
| **meta** | [**InlineObject10Meta**](InlineObject10Meta.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject10.new(
  response: [&quot;iVBORw0KGgoAAAANSUhEUgAA...&quot;],
  meta: null
)
```

