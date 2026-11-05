# PDFGeneratorAPI::InlineObject11MetaStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_size** | **Float** | Document original size in kilobytes | [optional] |
| **optimized_size** | **Float** | Document size after optimization in kilobytes | [optional] |
| **unit** | **String** | Unit of the sizes | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::InlineObject11MetaStats.new(
  original_size: 1234,
  optimized_size: 500,
  unit: KB
)
```

