# PDFGeneratorAPI::EncryptAndDecryptUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | Public URL to a PDF document |  |
| **owner_password** | **String** | An owner password to open the encrypted document |  |
| **user_password** | **String** | An user password to open the encrypted document | [optional] |
| **name** | **String** | Name for the PDF file | [optional] |
| **output** | **String** | Returned document output format | [optional][default to &#39;base64&#39;] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::EncryptAndDecryptUrl.new(
  file_url: null,
  owner_password: null,
  user_password: null,
  name: null,
  output: null
)
```

