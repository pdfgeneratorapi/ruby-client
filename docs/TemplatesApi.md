# PDFGeneratorAPI::TemplatesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_template**](TemplatesApi.md#copy_template) | **POST** /templates/{templateId}/copy | Copy template |
| [**create_template**](TemplatesApi.md#create_template) | **POST** /templates | Create template |
| [**delete_template**](TemplatesApi.md#delete_template) | **DELETE** /templates/{templateId} | Delete template |
| [**get_template**](TemplatesApi.md#get_template) | **GET** /templates/{templateId} | Get template |
| [**get_template_data**](TemplatesApi.md#get_template_data) | **GET** /templates/{templateId}/data | Get template data fields |
| [**get_templates**](TemplatesApi.md#get_templates) | **GET** /templates | Get templates |
| [**open_editor**](TemplatesApi.md#open_editor) | **POST** /templates/{templateId}/editor | Open editor |
| [**update_template**](TemplatesApi.md#update_template) | **PUT** /templates/{templateId} | Update template |


## copy_template

> <CreateTemplate200Response> copy_template(template_id, opts)

Copy template

Creates a copy of a template to the workspace specified in authentication parameters.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier
opts = {
  copy_template_request: PDFGeneratorAPI::CopyTemplateRequest.new # CopyTemplateRequest | 
}

begin
  # Copy template
  result = api_instance.copy_template(template_id, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->copy_template: #{e}"
end
```

#### Using the copy_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTemplate200Response>, Integer, Hash)> copy_template_with_http_info(template_id, opts)

```ruby
begin
  # Copy template
  data, status_code, headers = api_instance.copy_template_with_http_info(template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTemplate200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->copy_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **copy_template_request** | [**CopyTemplateRequest**](CopyTemplateRequest.md) |  | [optional] |

### Return type

[**CreateTemplate200Response**](CreateTemplate200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_template

> <CreateTemplate200Response> create_template(template_definition_new)

Create template

Creates a new template. If template configuration is not specified in the request body then an empty template is created. Template is placed to the workspace specified in authentication params. Template configuration must be sent in the request body.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_definition_new = PDFGeneratorAPI::TemplateDefinitionNew.new({name: 'Invoice template'}) # TemplateDefinitionNew | Template configuration as JSON string

begin
  # Create template
  result = api_instance.create_template(template_definition_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->create_template: #{e}"
end
```

#### Using the create_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTemplate200Response>, Integer, Hash)> create_template_with_http_info(template_definition_new)

```ruby
begin
  # Create template
  data, status_code, headers = api_instance.create_template_with_http_info(template_definition_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTemplate200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->create_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_definition_new** | [**TemplateDefinitionNew**](TemplateDefinitionNew.md) | Template configuration as JSON string |  |

### Return type

[**CreateTemplate200Response**](CreateTemplate200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_template

> <DeleteTemplate204Response> delete_template(template_id)

Delete template

Deletes the template from workspace

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier

begin
  # Delete template
  result = api_instance.delete_template(template_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->delete_template: #{e}"
end
```

#### Using the delete_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTemplate204Response>, Integer, Hash)> delete_template_with_http_info(template_id)

```ruby
begin
  # Delete template
  data, status_code, headers = api_instance.delete_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTemplate204Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->delete_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |

### Return type

[**DeleteTemplate204Response**](DeleteTemplate204Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template

> <CreateTemplate200Response> get_template(template_id)

Get template

Returns template configuration

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier

begin
  # Get template
  result = api_instance.get_template(template_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_template: #{e}"
end
```

#### Using the get_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTemplate200Response>, Integer, Hash)> get_template_with_http_info(template_id)

```ruby
begin
  # Get template
  data, status_code, headers = api_instance.get_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTemplate200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |

### Return type

[**CreateTemplate200Response**](CreateTemplate200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_data

> <GetTemplateData200Response> get_template_data(template_id)

Get template data fields

Returns all data fields used in the template. Returns structured JSON data that can be used to check which data fields are used in template or autogenerate sample data. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier

begin
  # Get template data fields
  result = api_instance.get_template_data(template_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_template_data: #{e}"
end
```

#### Using the get_template_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTemplateData200Response>, Integer, Hash)> get_template_data_with_http_info(template_id)

```ruby
begin
  # Get template data fields
  data, status_code, headers = api_instance.get_template_data_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTemplateData200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_template_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |

### Return type

[**GetTemplateData200Response**](GetTemplateData200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> <GetTemplates200Response> get_templates(opts)

Get templates

Returns a list of templates available for the authenticated workspace

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
opts = {
  name: 'name_example', # String | Filter template by name
  tags: 'tags_example', # String | Filter template by tags
  access: 'private' # String | Filter template by access type. No values returns all templates. private - returns only private templates, organization - returns only organization templates.
}

begin
  # Get templates
  result = api_instance.get_templates(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_templates: #{e}"
end
```

#### Using the get_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTemplates200Response>, Integer, Hash)> get_templates_with_http_info(opts)

```ruby
begin
  # Get templates
  data, status_code, headers = api_instance.get_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTemplates200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Filter template by name | [optional] |
| **tags** | **String** | Filter template by tags | [optional] |
| **access** | **String** | Filter template by access type. No values returns all templates. private - returns only private templates, organization - returns only organization templates. | [optional][default to &#39;&#39;] |

### Return type

[**GetTemplates200Response**](GetTemplates200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## open_editor

> <OpenEditor200Response> open_editor(template_id, open_editor_request)

Open editor

Returns an unique URL which you can use to redirect your user to the editor from your application or use the generated URL as iframe source to show the editor within your application. When using iframe, make sure that your browser allows third-party cookies. 

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier
open_editor_request = PDFGeneratorAPI::OpenEditorRequest.new # OpenEditorRequest | 

begin
  # Open editor
  result = api_instance.open_editor(template_id, open_editor_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->open_editor: #{e}"
end
```

#### Using the open_editor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenEditor200Response>, Integer, Hash)> open_editor_with_http_info(template_id, open_editor_request)

```ruby
begin
  # Open editor
  data, status_code, headers = api_instance.open_editor_with_http_info(template_id, open_editor_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenEditor200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->open_editor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **open_editor_request** | [**OpenEditorRequest**](OpenEditorRequest.md) |  |  |

### Return type

[**OpenEditor200Response**](OpenEditor200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_template

> <CreateTemplate200Response> update_template(template_id, template_definition_new)

Update template

Updates template configuration. The template configuration for pages and layout must be complete as the entire configuration is replaced and not merged.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::TemplatesApi.new
template_id = 19375 # Integer | Template unique identifier
template_definition_new = PDFGeneratorAPI::TemplateDefinitionNew.new({name: 'Invoice template'}) # TemplateDefinitionNew | Template configuration as JSON string

begin
  # Update template
  result = api_instance.update_template(template_id, template_definition_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->update_template: #{e}"
end
```

#### Using the update_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTemplate200Response>, Integer, Hash)> update_template_with_http_info(template_id, template_definition_new)

```ruby
begin
  # Update template
  data, status_code, headers = api_instance.update_template_with_http_info(template_id, template_definition_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTemplate200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->update_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **template_definition_new** | [**TemplateDefinitionNew**](TemplateDefinitionNew.md) | Template configuration as JSON string |  |

### Return type

[**CreateTemplate200Response**](CreateTemplate200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

