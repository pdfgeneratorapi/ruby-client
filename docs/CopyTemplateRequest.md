# PDFGeneratorAPI::CopyTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the copied template. If name is not specified then the original name is used. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::CopyTemplateRequest.new(
  name: My copied template
)
```

