# PDFGeneratorAPI::Workspace

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Internal workspace id | [optional] 
**identifier** | **String** | The unique workspace idenfitifer specified by your application | [optional] 
**is_master_workspace** | **Boolean** | True if a master workspace | [optional] 
**created_at** | **String** |  | [optional] 

## Code Sample

```ruby
require 'PDFGeneratorAPI'

instance = PDFGeneratorAPI::Workspace.new(id: 1,
                                 identifier: demo.example@actualreports.com,
                                 is_master_workspace: false,
                                 created_at: 2020-04-01 12:03:12)
```


