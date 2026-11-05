# PDFGeneratorAPI::GenerateDocumentBatchAsynchronousRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | [**Array&lt;TemplateParam&gt;**](TemplateParam.md) |  |  |
| **callback** | [**CallbackParam**](CallbackParam.md) |  |  |
| **format** | [**FormatParam**](FormatParam.md) |  | [optional][default to &#39;pdf&#39;] |
| **output** | [**AsyncOutputParam**](AsyncOutputParam.md) |  | [optional][default to &#39;base64&#39;] |
| **name** | **String** | Generated document name (optional) | [optional][default to &#39;&#39;] |
| **testing** | **Boolean** | When set to true the generation is not counted as merge (monthly usage), but a large PREVIEW stamp is added. | [optional][default to false] |
| **print** | **Boolean** | When set to true, the PDF opens the print dialog when it is opened in a viewer. | [optional][default to false] |
| **empty_labels** | **Integer** | Number of label positions to leave empty at the start of the first sheet. Only applies to label templates. | [optional][default to 0] |
| **attachments** | [**Array&lt;AttachmentsParamInner&gt;**](AttachmentsParamInner.md) | Files embedded into the generated PDF as attachments. Only PDF and XML files are accepted. | [optional] |
| **metadata** | [**MetadataParam**](MetadataParam.md) |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::GenerateDocumentBatchAsynchronousRequest.new(
  template: null,
  callback: null,
  format: null,
  output: null,
  name: Invoice 123,
  testing: false,
  print: false,
  empty_labels: 0,
  attachments: null,
  metadata: null
)
```

