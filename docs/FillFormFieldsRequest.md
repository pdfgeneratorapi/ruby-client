# PDFGeneratorAPI::FillFormFieldsRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::FillFormFieldsRequest.openapi_one_of
# =>
# [
#   :'FormFillBase64',
#   :'FormFillUrl'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pdf_generator_api_client'

PDFGeneratorAPI::FillFormFieldsRequest.build(data)
# => #<FormFillBase64:0x00007fdd4aab02a0>

PDFGeneratorAPI::FillFormFieldsRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `FormFillBase64`
- `FormFillUrl`
- `nil` (if no type matches)

