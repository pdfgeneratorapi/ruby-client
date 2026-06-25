# PDFGeneratorAPI::DocumentAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The action performed on the document. | [optional] |
| **person** | [**DocumentUser**](DocumentUser.md) |  | [optional] |
| **created_at** | **String** | Action timestamp (Y-m-d H:i:s). | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::DocumentAction.new(
  action: signed,
  person: null,
  created_at: 2026-06-01 10:03:11
)
```

