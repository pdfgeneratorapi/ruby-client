# PDFGeneratorAPI::FormFieldSubRowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | **String** | Comma-separated list of choices. Whitespace around each choice is trimmed and choices must be unique. |  |
| **label** | **String** | Column label displayed in the form |  |
| **name** | **String** | Data field name of the column |  |
| **type** | **String** | Column type. &#x60;select&#x60; columns require &#x60;subRows&#x60; with options and a &#x60;default&#x60; value. |  |
| **required** | **Boolean** | Specifies if the column is required or not |  |
| **default** | **String** | Value pre-filled in the column. Required for &#x60;select&#x60; columns and must be one of the options. | [optional] |
| **sub_rows** | [**Array&lt;FormFieldOptions&gt;**](FormFieldOptions.md) | Options for &#x60;select&#x60; columns (a single object). Not used by other column types. | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::FormFieldSubRowsInner.new(
  options: Small,Medium,Large,
  label: Product,
  name: product,
  type: text,
  required: false,
  default: Medium,
  sub_rows: null
)
```

