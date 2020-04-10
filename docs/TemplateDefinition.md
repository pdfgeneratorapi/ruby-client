# PDFGeneratorAPI::TemplateDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique identifier | [optional] 
**name** | **String** | Template name | [optional] 
**tags** | **Array&lt;String&gt;** | A list of tags assigned to a template | [optional] 
**is_draft** | **Boolean** | Indicates if the template is a draft or published. | [optional] 
**layout** | [**TemplateDefinitionNewLayout**](TemplateDefinitionNewLayout.md) |  | [optional] 
**pages** | [**Array&lt;TemplateDefinitionNewPages&gt;**](TemplateDefinitionNewPages.md) | Defines page or label size, margins and components on page or label | [optional] 
**data_settings** | [**TemplateDefinitionDataSettings**](TemplateDefinitionDataSettings.md) |  | [optional] 
**editor** | [**TemplateDefinitionEditor**](TemplateDefinitionEditor.md) |  | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::TemplateDefinition.new(id: 24382,
                                 name: Invoice template,
                                 tags: [&quot;invoice&quot;,&quot;orders&quot;],
                                 is_draft: true,
                                 layout: null,
                                 pages: null,
                                 data_settings: null,
                                 editor: null)
```


