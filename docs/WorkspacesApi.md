# PDFGeneratorAPI::WorkspacesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workspace**](WorkspacesApi.md#create_workspace) | **POST** /workspaces | Create workspace |
| [**delete_workspace**](WorkspacesApi.md#delete_workspace) | **DELETE** /workspaces/{workspaceIdentifier} | Delete workspace |
| [**get_workspace**](WorkspacesApi.md#get_workspace) | **GET** /workspaces/{workspaceIdentifier} | Get workspace |
| [**get_workspaces**](WorkspacesApi.md#get_workspaces) | **GET** /workspaces | Get workspaces |


## create_workspace

> <InlineObject7> create_workspace(create_workspace_request)

Create workspace

Creates a regular workspace with identifier specified in the request.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::WorkspacesApi.new
create_workspace_request = PDFGeneratorAPI::CreateWorkspaceRequest.new({identifier: 'demo.example@actualreports.com'}) # CreateWorkspaceRequest | 

begin
  # Create workspace
  result = api_instance.create_workspace(create_workspace_request)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace: #{e}"
end
```

#### Using the create_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject7>, Integer, Hash)> create_workspace_with_http_info(create_workspace_request)

```ruby
begin
  # Create workspace
  data, status_code, headers = api_instance.create_workspace_with_http_info(create_workspace_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject7>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workspace_request** | [**CreateWorkspaceRequest**](CreateWorkspaceRequest.md) |  |  |

### Return type

[**InlineObject7**](InlineObject7.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workspace

> delete_workspace(workspace_identifier)

Delete workspace

Delete workspace. Only regular workspaces can be deleted.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::WorkspacesApi.new
workspace_identifier = 'demo.example@actualreports.com' # String | Workspace identifier

begin
  # Delete workspace
  api_instance.delete_workspace(workspace_identifier)
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace: #{e}"
end
```

#### Using the delete_workspace_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workspace_with_http_info(workspace_identifier)

```ruby
begin
  # Delete workspace
  data, status_code, headers = api_instance.delete_workspace_with_http_info(workspace_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_identifier** | **String** | Workspace identifier |  |

### Return type

nil (empty response body)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspace

> <InlineObject7> get_workspace(workspace_identifier)

Get workspace

Returns workspace information for the workspace identifier specified in the request.

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::WorkspacesApi.new
workspace_identifier = 'demo.example@actualreports.com' # String | Workspace identifier

begin
  # Get workspace
  result = api_instance.get_workspace(workspace_identifier)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspace: #{e}"
end
```

#### Using the get_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject7>, Integer, Hash)> get_workspace_with_http_info(workspace_identifier)

```ruby
begin
  # Get workspace
  data, status_code, headers = api_instance.get_workspace_with_http_info(workspace_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject7>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_identifier** | **String** | Workspace identifier |  |

### Return type

[**InlineObject7**](InlineObject7.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces

> <InlineObject5> get_workspaces(opts)

Get workspaces

Returns all workspaces in the organization

### Examples

```ruby
require 'time'
require 'pdf_generator_api_client'
# setup authorization
PDFGeneratorAPI.configure do |config|
  # Configure Bearer authorization (JWT): JSONWebTokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PDFGeneratorAPI::WorkspacesApi.new
opts = {
  page: 1, # Integer | Pagination: page to return
  per_page: 20, # Integer | Pagination: How many records to return per page
  order_by: 'id', # String | Field to sort the workspaces by
  order_direction: 'asc', # String | Sort direction
  activated: 0, # Integer | Returns only active (`1`) or deactivated (`0`) workspaces
  search: 'demo.example' # String | Returns workspaces whose ID, name or identifier contains the search value
}

begin
  # Get workspaces
  result = api_instance.get_workspaces(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject5>, Integer, Hash)> get_workspaces_with_http_info(opts)

```ruby
begin
  # Get workspaces
  data, status_code, headers = api_instance.get_workspaces_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject5>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Pagination: page to return | [optional][default to 1] |
| **per_page** | **Integer** | Pagination: How many records to return per page | [optional][default to 15] |
| **order_by** | **String** | Field to sort the workspaces by | [optional][default to &#39;id&#39;] |
| **order_direction** | **String** | Sort direction | [optional][default to &#39;desc&#39;] |
| **activated** | **Integer** | Returns only active (&#x60;1&#x60;) or deactivated (&#x60;0&#x60;) workspaces | [optional] |
| **search** | **String** | Returns workspaces whose ID, name or identifier contains the search value | [optional] |

### Return type

[**InlineObject5**](InlineObject5.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

