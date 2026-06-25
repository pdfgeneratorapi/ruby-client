# PDFGeneratorAPI::DocumentVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version_id** | **String** | Version identifier (hash). | [optional] |
| **name** | **String** | Version name. | [optional] |
| **person** | [**DocumentUser**](DocumentUser.md) |  | [optional] |
| **created_at** | **String** | Creation timestamp (Y-m-d H:i:s). | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::DocumentVersion.new(
  version_id: 5f3c2b1a9d8e7f6a,
  name: yellow,
  person: null,
  created_at: 2026-06-01 10:03:11
)
```

