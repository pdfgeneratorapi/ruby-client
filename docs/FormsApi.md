# PDFGeneratorAPI::FormsApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_form**](FormsApi.md#create_form) | **POST** /forms | Create form |
| [**delete_form**](FormsApi.md#delete_form) | **DELETE** /forms/{formId} | Delete form |
| [**get_form**](FormsApi.md#get_form) | **GET** /forms/{formId} | Get form |
| [**get_forms**](FormsApi.md#get_forms) | **GET** /forms | Get forms |
| [**import_form**](FormsApi.md#import_form) | **POST** /forms/import | Import Form |
| [**open_form_builder**](FormsApi.md#open_form_builder) | **POST** /forms/open | Open new form builder |
| [**open_form_builder_for_existing_form**](FormsApi.md#open_form_builder_for_existing_form) | **POST** /forms/{formId}/open | Open existing form builder |
| [**share_form**](FormsApi.md#share_form) | **POST** /forms/{formId}/share | Share form |
| [**update_form**](FormsApi.md#update_form) | **PUT** /forms/{formId} | Update form |


## create_form

> <InlineObject19> create_form(form_configuration_new)

Create form

Creates a new form based on the configuration sent in the request body.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_configuration_new = PDFGeneratorAPI::FormConfigurationNew.new # FormConfigurationNew | Form configuration

begin
  # Create form
  result = api_instance.create_form(form_configuration_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->create_form: #{e}"
end
```

#### Using the create_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject19>, Integer, Hash)> create_form_with_http_info(form_configuration_new)

```ruby
begin
  # Create form
  data, status_code, headers = api_instance.create_form_with_http_info(form_configuration_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject19>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->create_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_configuration_new** | [**FormConfigurationNew**](FormConfigurationNew.md) | Form configuration |  |

### Return type

[**InlineObject19**](InlineObject19.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_form

> delete_form(form_id)

Delete form

Deletes the form with specified id

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier

begin
  # Delete form
  api_instance.delete_form(form_id)
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->delete_form: #{e}"
end
```

#### Using the delete_form_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_form_with_http_info(form_id)

```ruby
begin
  # Delete form
  data, status_code, headers = api_instance.delete_form_with_http_info(form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->delete_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |

### Return type

nil (empty response body)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_form

> <InlineObject19> get_form(form_id)

Get form

Returns form configuration

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier

begin
  # Get form
  result = api_instance.get_form(form_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_form: #{e}"
end
```

#### Using the get_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject19>, Integer, Hash)> get_form_with_http_info(form_id)

```ruby
begin
  # Get form
  data, status_code, headers = api_instance.get_form_with_http_info(form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject19>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |

### Return type

[**InlineObject19**](InlineObject19.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_forms

> <InlineObject6> get_forms(opts)

Get forms

Returns a list of forms available for the organization

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
opts = {
  page: 1, # Integer | Pagination: page to return
  per_page: 20 # Integer | Pagination: How many records to return per page
}

begin
  # Get forms
  result = api_instance.get_forms(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_forms: #{e}"
end
```

#### Using the get_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject6>, Integer, Hash)> get_forms_with_http_info(opts)

```ruby
begin
  # Get forms
  data, status_code, headers = api_instance.get_forms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject6>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->get_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Pagination: page to return | [optional][default to 1] |
| **per_page** | **Integer** | Pagination: How many records to return per page | [optional][default to 15] |

### Return type

[**InlineObject6**](InlineObject6.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_form

> <InlineObject19> import_form(import_form_request)

Import Form

Creates a new form based on editable PDF

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
import_form_request = PDFGeneratorAPI::ImportFormBase64.new({file_base64: 'file_base64_example'}) # ImportFormRequest | Import editable PDF via URL or base64 string as form

begin
  # Import Form
  result = api_instance.import_form(import_form_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->import_form: #{e}"
end
```

#### Using the import_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject19>, Integer, Hash)> import_form_with_http_info(import_form_request)

```ruby
begin
  # Import Form
  data, status_code, headers = api_instance.import_form_with_http_info(import_form_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject19>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->import_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **import_form_request** | [**ImportFormRequest**](ImportFormRequest.md) | Import editable PDF via URL or base64 string as form |  |

### Return type

[**InlineObject19**](InlineObject19.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## open_form_builder

> <InlineObject21> open_form_builder

Open new form builder

Creates a new Form Builder session and returns a URL that can be used to open the embeddable Form Builder for creating a new form.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new

begin
  # Open new form builder
  result = api_instance.open_form_builder
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->open_form_builder: #{e}"
end
```

#### Using the open_form_builder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject21>, Integer, Hash)> open_form_builder_with_http_info

```ruby
begin
  # Open new form builder
  data, status_code, headers = api_instance.open_form_builder_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject21>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->open_form_builder_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineObject21**](InlineObject21.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## open_form_builder_for_existing_form

> <InlineObject21> open_form_builder_for_existing_form(form_id)

Open existing form builder

Creates a Form Builder session for editing an existing form and returns a URL that can be used to open the embeddable Form Builder.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier

begin
  # Open existing form builder
  result = api_instance.open_form_builder_for_existing_form(form_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->open_form_builder_for_existing_form: #{e}"
end
```

#### Using the open_form_builder_for_existing_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject21>, Integer, Hash)> open_form_builder_for_existing_form_with_http_info(form_id)

```ruby
begin
  # Open existing form builder
  data, status_code, headers = api_instance.open_form_builder_for_existing_form_with_http_info(form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject21>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->open_form_builder_for_existing_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |

### Return type

[**InlineObject21**](InlineObject21.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## share_form

> <InlineObject20> share_form(form_id)

Share form

Creates an unique sharing URL to collect form data

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier

begin
  # Share form
  result = api_instance.share_form(form_id)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->share_form: #{e}"
end
```

#### Using the share_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject20>, Integer, Hash)> share_form_with_http_info(form_id)

```ruby
begin
  # Share form
  data, status_code, headers = api_instance.share_form_with_http_info(form_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject20>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->share_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |

### Return type

[**InlineObject20**](InlineObject20.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_form

> <InlineObject19> update_form(form_id, form_configuration_new)

Update form

Updates the form configuration. The form configuration must be complete as the entire configuration is replaced and not merged.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::FormsApi.new
form_id = 1 # Integer | Form unique identifier
form_configuration_new = PDFGeneratorAPI::FormConfigurationNew.new # FormConfigurationNew | Form configuration

begin
  # Update form
  result = api_instance.update_form(form_id, form_configuration_new)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->update_form: #{e}"
end
```

#### Using the update_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject19>, Integer, Hash)> update_form_with_http_info(form_id, form_configuration_new)

```ruby
begin
  # Update form
  data, status_code, headers = api_instance.update_form_with_http_info(form_id, form_configuration_new)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject19>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling FormsApi->update_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **Integer** | Form unique identifier |  |
| **form_configuration_new** | [**FormConfigurationNew**](FormConfigurationNew.md) | Form configuration |  |

### Return type

[**InlineObject19**](InlineObject19.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

