# PDFGeneratorAPI::Template

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique identifier | [optional] 
**name** | **String** | Template name | [optional] 
**owner** | **Boolean** | Indicates if the workspace is the owner of the template | [optional] 
**modified** | **DateTime** | Timestamp when the template was modified | [optional] 
**tags** | **Array&lt;String&gt;** | A list of tags assigned to a template | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::Template.new(id: 24382,
                                 name: Invoice template,
                                 owner: true,
                                 modified: null,
                                 tags: [&quot;invoice&quot;,&quot;orders&quot;])
```


