# PDFGeneratorAPI::WorkspacesApi

All URIs are relative to *https://us1.pdfgeneratorapi.com/api/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workspace**](WorkspacesApi.md#create_workspace) | **POST** /workspaces | Create workspace |
| [**delete_workspace**](WorkspacesApi.md#delete_workspace) | **DELETE** /workspaces/{workspaceIdentifier} | Delete workspace |
| [**get_workspace**](WorkspacesApi.md#get_workspace) | **GET** /workspaces/{workspaceIdentifier} | Get workspace |
| [**get_workspaces**](WorkspacesApi.md#get_workspaces) | **GET** /workspaces | Get workspaces |


## create_workspace

> <CreateWorkspace200Response> create_workspace(opts)

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
opts = {
  create_workspace_request: PDFGeneratorAPI::CreateWorkspaceRequest.new # CreateWorkspaceRequest | 
}

begin
  # Create workspace
  result = api_instance.create_workspace(opts)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace: #{e}"
end
```

#### Using the create_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkspace200Response>, Integer, Hash)> create_workspace_with_http_info(opts)

```ruby
begin
  # Create workspace
  data, status_code, headers = api_instance.create_workspace_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkspace200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workspace_request** | [**CreateWorkspaceRequest**](CreateWorkspaceRequest.md) |  | [optional] |

### Return type

[**CreateWorkspace200Response**](CreateWorkspace200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workspace

> <DeleteTemplate204Response> delete_workspace(workspace_identifier)

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
  result = api_instance.delete_workspace(workspace_identifier)
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace: #{e}"
end
```

#### Using the delete_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTemplate204Response>, Integer, Hash)> delete_workspace_with_http_info(workspace_identifier)

```ruby
begin
  # Delete workspace
  data, status_code, headers = api_instance.delete_workspace_with_http_info(workspace_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTemplate204Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_identifier** | **String** | Workspace identifier |  |

### Return type

[**DeleteTemplate204Response**](DeleteTemplate204Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspace

> <CreateWorkspace200Response> get_workspace(workspace_identifier)

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

> <Array(<CreateWorkspace200Response>, Integer, Hash)> get_workspace_with_http_info(workspace_identifier)

```ruby
begin
  # Get workspace
  data, status_code, headers = api_instance.get_workspace_with_http_info(workspace_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkspace200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_identifier** | **String** | Workspace identifier |  |

### Return type

[**CreateWorkspace200Response**](CreateWorkspace200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces

> <GetWorkspaces200Response> get_workspaces

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

begin
  # Get workspaces
  result = api_instance.get_workspaces
  p result
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkspaces200Response>, Integer, Hash)> get_workspaces_with_http_info

```ruby
begin
  # Get workspaces
  data, status_code, headers = api_instance.get_workspaces_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkspaces200Response>
rescue PDFGeneratorAPI::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWorkspaces200Response**](GetWorkspaces200Response.md)

### Authorization

[JSONWebTokenAuth](../README.md#JSONWebTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

