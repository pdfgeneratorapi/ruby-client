# PDFGeneratorAPI::ImportFormRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::ImportFormRequest.openapi_one_of
# =>
# [
#   :'ImportFormBase64',
#   :'ImportFormUrl'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::ImportFormRequest.build(data)
# => #<ImportFormBase64:0x00007fdd4aab02a0>

PDFGeneratorAPI::ImportFormRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ImportFormBase64`
- `ImportFormUrl`
- `nil` (if no type matches)

