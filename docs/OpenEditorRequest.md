# PDFGeneratorAPI::OpenEditorRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**OpenEditorRequestData**](OpenEditorRequestData.md) |  | [optional] |
| **language** | **String** | Specify the editor UI language. Defaults to organization editor language. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::OpenEditorRequest.new(
  data: null,
  language: null
)
```

