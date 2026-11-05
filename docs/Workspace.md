# PDFGeneratorAPI::Workspace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Internal workspace id | [optional] |
| **identifier** | **String** | The unique workspace idenfitifer specified by your application | [optional] |
| **is_master_workspace** | **Boolean** | True if a master workspace | [optional] |
| **is_admin** | **Boolean** | True if the workspace is an organization administrator. Returned only when creating a workspace. | [optional] |
| **is_owner** | **Boolean** | True if the workspace owns the organization. Returned only when creating a workspace. | [optional] |
| **created_at** | **String** |  | [optional] |

## Example

```ruby
require 'pdf_generator_api_client'

instance = PDFGeneratorAPI::Workspace.new(
  id: 1,
  identifier: demo.example@actualreports.com,
  is_master_workspace: false,
  is_admin: false,
  is_owner: false,
  created_at: 2020-04-01 12:03:12
)
```

