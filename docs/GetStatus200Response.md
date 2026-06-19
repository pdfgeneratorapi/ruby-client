# PDFGeneratorAPI::GetStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api** | [**StatusParam**](StatusParam.md) |  | [optional][default to &#39;ok&#39;] |
| **chart_api** | [**StatusParam**](StatusParam.md) |  | [optional][default to &#39;ok&#39;] |
| **conversion_api** | [**StatusParam**](StatusParam.md) |  | [optional][default to &#39;ok&#39;] |
| **generator_api_sync** | [**StatusParam**](StatusParam.md) |  | [optional][default to &#39;ok&#39;] |
| **generator_api_async** | [**StatusParam**](StatusParam.md) |  | [optional][default to &#39;ok&#39;] |
| **e_invoice** | [**StatusParam**](StatusParam.md) |  | [optional][default to &#39;ok&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GetStatus200Response.new(
  api: null,
  chart_api: null,
  conversion_api: null,
  generator_api_sync: null,
  generator_api_async: null,
  e_invoice: null
)
```

