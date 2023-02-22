# PDFGeneratorAPI::CallbackParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public callback URL that is used to make a POST request when the document is generated. | [optional] |
| **headers** | **Object** | A key-value pairs of header values sent with the POST request. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::CallbackParam.new(
  url: https://example.org/document-callback,
  headers: {&quot;Content-type&quot;:&quot;application/pdf&quot;,&quot;Authorization&quot;:&quot;Bearer ABCDE12345678&quot;}
)
```

