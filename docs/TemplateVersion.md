# PDFGeneratorAPI::TemplateVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **template_id** | **Integer** |  | [optional] |
| **template_name** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **checksum** | **String** |  | [optional] |
| **user_id** | **Integer** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **is_production** | **Boolean** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::TemplateVersion.new(
  id: 25,
  template_id: 343123,
  template_name: withered-star-1234,
  name: plain-mouse-9765,
  checksum: ab12345940035a392019ca6386a037ae01234567,
  user_id: null,
  user_name: 13243,
  is_production: true,
  created_at: 2025-11-13 14:38:02,
  updated_at: 2025-11-13 14:38:05
)
```

