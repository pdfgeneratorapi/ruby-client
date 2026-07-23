# PDFGeneratorAPI::PrefillParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_code** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **signature_id** | **String** |  | [optional] |
| **editable** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::PrefillParam.new(
  id_code: null,
  first_name: null,
  last_name: null,
  email: null,
  signature_id: null,
  editable: null
)
```

