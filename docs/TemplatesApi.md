# PDFGeneratorAPI::TemplatesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_template**](TemplatesApi.md#copy_template) | **POST** /templates/{templateId}/copy | Copy template |
| [**create_template**](TemplatesApi.md#create_template) | **POST** /templates | Create template |
| [**delete_template**](TemplatesApi.md#delete_template) | **DELETE** /templates/{templateId} | Delete template |
| [**get_editor_url**](TemplatesApi.md#get_editor_url) | **POST** /templates/{templateId}/editor | Open editor |
| [**get_template**](TemplatesApi.md#get_template) | **GET** /templates/{templateId} | Get template |
| [**get_templates**](TemplatesApi.md#get_templates) | **GET** /templates | Get templates |
| [**update_template**](TemplatesApi.md#update_template) | **PUT** /templates/{templateId} | Update template |


## copy_template

> <InlineResponse2001> copy_template(template_id, opts)

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
  name: 'My copied template' # String | Name for the copied template. If name is not specified then the original name is used.
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

> <Array(<InlineResponse2001>, Integer, Hash)> copy_template_with_http_info(template_id, opts)

```ruby
begin
  # Copy template
  data, status_code, headers = api_instance.copy_template_with_http_info(template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->copy_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **name** | **String** | Name for the copied template. If name is not specified then the original name is used. | [optional] |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_template

> <InlineResponse2001> create_template(template_definition_new)

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

> <Array(<InlineResponse2001>, Integer, Hash)> create_template_with_http_info(template_definition_new)

```ruby
begin
  # Create template
  data, status_code, headers = api_instance.create_template_with_http_info(template_definition_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->create_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_definition_new** | [**TemplateDefinitionNew**](TemplateDefinitionNew.md) | Template configuration as JSON string |  |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_template

> <InlineResponse2002> delete_template(template_id)

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

> <Array(<InlineResponse2002>, Integer, Hash)> delete_template_with_http_info(template_id)

```ruby
begin
  # Delete template
  data, status_code, headers = api_instance.delete_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2002>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->delete_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_editor_url

> <InlineResponse2003> get_editor_url(template_id, body, opts)

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
body = Object # Object | Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file.
opts = {
  language: 'en' # String | Specify the editor UI language. Defaults to organization editor language.
}

begin
  # Open editor
  result = api_instance.get_editor_url(template_id, body, opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_editor_url: #{e}"
end
```

#### Using the get_editor_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse2003>, Integer, Hash)> get_editor_url_with_http_info(template_id, body, opts)

```ruby
begin
  # Open editor
  data, status_code, headers = api_instance.get_editor_url_with_http_info(template_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2003>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_editor_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |
| **body** | **Object** | Data used to generate the PDF. This can be JSON encoded string or a public URL to your JSON file. |  |
| **language** | **String** | Specify the editor UI language. Defaults to organization editor language. | [optional] |

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_template

> <InlineResponse2001> get_template(template_id)

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

> <Array(<InlineResponse2001>, Integer, Hash)> get_template_with_http_info(template_id)

```ruby
begin
  # Get template
  data, status_code, headers = api_instance.get_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template unique identifier |  |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> <InlineResponse200> get_templates

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

begin
  # Get templates
  result = api_instance.get_templates
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_templates: #{e}"
end
```

#### Using the get_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> get_templates_with_http_info

```ruby
begin
  # Get templates
  data, status_code, headers = api_instance.get_templates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling TemplatesApi->get_templates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_template

> <InlineResponse2001> update_template(template_id, template_definition_new)

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

> <Array(<InlineResponse2001>, Integer, Hash)> update_template_with_http_info(template_id, template_definition_new)

```ruby
begin
  # Update template
  data, status_code, headers = api_instance.update_template_with_http_info(template_id, template_definition_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse2001>
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

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

