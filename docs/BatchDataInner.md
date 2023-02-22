# PDFGeneratorAPI::BatchDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **Integer** | Template id | [optional] |
| **data** | **Object** |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::BatchDataInner.new(
  template: 52272,
  data: {&quot;id&quot;:123,&quot;name&quot;:&quot;John Smith&quot;,&quot;birthdate&quot;:&quot;2000-01-01&quot;,&quot;role&quot;:&quot;Developer&quot;}
)
```

