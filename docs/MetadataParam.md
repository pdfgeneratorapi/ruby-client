# PDFGeneratorAPI::MetadataParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | **String** | Document author | [optional][default to &#39;Organization name&#39;] |
| **language** | **String** | Document language as a BCP 47 language tag, e.g. &#x60;en&#x60; or &#x60;de-AT&#x60; | [optional][default to &#39;en&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::MetadataParam.new(
  author: null,
  language: null
)
```

