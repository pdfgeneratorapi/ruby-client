# PDFGeneratorAPI::AttachmentsParamInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | File name, must end with &#x60;.pdf&#x60; or &#x60;.xml&#x60; |  |
| **content** | **String** | Base64 encoded file content |  |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::AttachmentsParamInner.new(
  name: invoice.xml,
  content: [B@126be319
)
```

