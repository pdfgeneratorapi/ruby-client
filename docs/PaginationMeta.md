# PDFGeneratorAPI::PaginationMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Float** |  | [optional] |
| **last_page** | **Float** |  | [optional] |
| **per_page** | **Float** |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::PaginationMeta.new(
  current_page: 1,
  last_page: 1,
  per_page: 15
)
```

