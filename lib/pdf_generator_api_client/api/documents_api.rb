=begin
#PDF Generator API

## Introduction [PDF Generator API](https://pdfgeneratorapi.com) allows you easily generate transactional PDF documents and reduce the development and support costs by enabling your users to create and manage their document templates using a browser-based drag-and-drop document editor.  The PDF Generator API features a web API architecture, allowing you to code in the language of your choice. This API supports the JSON media type, and uses UTF-8 character encoding.  ## Base URL The base URL for all the API endpoints is `https://us1.pdfgeneratorapi.com/api/v4`  For example * `https://us1.pdfgeneratorapi.com/api/v4/templates` * `https://us1.pdfgeneratorapi.com/api/v4/workspaces` * `https://us1.pdfgeneratorapi.com/api/v4/templates/123123`  ## Editor PDF Generator API comes with a powerful drag & drop editor that allows to create any kind of document templates, from barcode labels to invoices, quotes and reports. You can find tutorials and videos from our [Support Portal](https://support.pdfgeneratorapi.com). * [Component specification](https://support.pdfgeneratorapi.com/en/category/components-1ffseaj/) * [Expression Language documentation](https://support.pdfgeneratorapi.com/en/category/expression-language-q203pa/) * [Frequently asked questions and answers](https://support.pdfgeneratorapi.com/en/category/qanda-1ov519d/)  ## Definitions  ### Organization Organization is a group of workspaces owned by your account.  ### Workspace Workspace contains templates. Each workspace has access to their own templates and organization default templates.  ### Master Workspace Master Workspace is the main/default workspace of your Organization. The Master Workspace identifier is the email you signed up with.  ### Default Template Default template is a template that is available for all workspaces by default. You can set the template access type under Page Setup. If template has \"Organization\" access then your users can use them from the \"New\" menu in the Editor.  ### Data Field Data Field is a placeholder for the specific data in your JSON data set. In this example JSON you can access the buyer name using Data Field `{paymentDetails::buyerName}`. The separator between depth levels is :: (two colons). When designing the template you don’t have to know every Data Field, our editor automatically extracts all the available fields from your data set and provides an easy way to insert them into the template. ``` {     \"documentNumber\": 1,     \"paymentDetails\": {         \"method\": \"Credit Card\",         \"buyerName\": \"John Smith\"     },     \"items\": [         {             \"id\": 1,             \"name\": \"Item one\"         }     ] } ```  ## Rate limiting Our API endpoints use IP-based rate limiting and allow you to make up to 2 requests per second and 60 requests per minute. If you make more requests, you will receive a response with HTTP code 429.  Response headers contain additional values:  | Header   | Description                    | |--------|--------------------------------| | X-RateLimit-Limit    | Maximum requests per minute                   | | X-RateLimit-Remaining    | The requests remaining in the current minute               | | Retry-After     | How many seconds you need to wait until you are allowed to make requests |  ## Postman Collection We have created a [Postman](https://www.postman.com) Collection so you can easily test all the API endpoints without developing and code. You can download the collection [here](https://god.gw.postman.com/run-collection/11578263-c6546175-de49-4b35-904b-29bb52a5a69a?action=collection%2Ffork&collection-url=entityId%3D11578263-c6546175-de49-4b35-904b-29bb52a5a69a%26entityType%3Dcollection%26workspaceId%3D5900d75f-c45d-4e61-9fb7-63aca23580df) or just click the button below.  [![Run in Postman](https://run.pstmn.io/button.svg)](https://god.gw.postman.com/run-collection/11578263-c6546175-de49-4b35-904b-29bb52a5a69a?action=collection%2Ffork&collection-url=entityId%3D11578263-c6546175-de49-4b35-904b-29bb52a5a69a%26entityType%3Dcollection%26workspaceId%3D5900d75f-c45d-4e61-9fb7-63aca23580df)  *  *  *  *  *  # Authentication The PDF Generator API uses __JSON Web Tokens (JWT)__ to authenticate all API requests. These tokens offer a method to establish secure server-to-server authentication by transferring a compact JSON object with a signed payload of your account’s API Key and Secret. When authenticating to the PDF Generator API, a JWT should be generated uniquely by a __server-side application__ and included as a __Bearer Token__ in the header of each request.   <SecurityDefinitions />  ## Accessing your API Key and Secret You can find your __API Key__ and __API Secret__ from the __Account Settings__ page after you login to PDF Generator API [here](https://pdfgeneratorapi.com/login).  ## Creating a JWT JSON Web Tokens are composed of three sections: a header, a payload (containing a claim set), and a signature. The header and payload are JSON objects, which are serialized to UTF-8 bytes, then encoded using base64url encoding.  The JWT's header, payload, and signature are concatenated with periods (.). As a result, a JWT typically takes the following form: ``` {Base64url encoded header}.{Base64url encoded payload}.{Base64url encoded signature} ```  We recommend and support libraries provided on [jwt.io](https://jwt.io/). While other libraries can create JWT, these recommended libraries are the most robust.  ### Header Property `alg` defines which signing algorithm is being used. PDF Generator API users HS256. Property `typ` defines the type of token and it is always JWT. ``` {   \"alg\": \"HS256\",   \"typ\": \"JWT\" } ```  ### Payload The second part of the token is the payload, which contains the claims  or the pieces of information being passed about the user and any metadata required. It is mandatory to specify the following claims: * issuer (`iss`): Your API key * subject (`sub`): Workspace identifier * expiration time (`exp`): Timestamp (unix epoch time) until the token is valid. It is highly recommended to set the exp timestamp for a short period, i.e. a matter of seconds. This way, if a token is intercepted or shared, the token will only be valid for a short period of time.  ``` {   \"iss\": \"ad54aaff89ffdfeff178bb8a8f359b29fcb20edb56250b9f584aa2cb0162ed4a\",   \"sub\": \"demo.example@actualreports.com\",   \"exp\": 1586112639 } ```  ### Signature To create the signature part you have to take the encoded header, the encoded payload, a secret, the algorithm specified in the header, and sign that. The signature is used to verify the message wasn't changed along the way, and, in the case of tokens signed with a private key, it can also verify that the sender of the JWT is who it says it is. ``` HMACSHA256(     base64UrlEncode(header) + \".\" +     base64UrlEncode(payload),     API_SECRET) ```  ### Putting all together The output is three Base64-URL strings separated by dots. The following shows a JWT that has the previous header and payload encoded, and it is signed with a secret. ``` eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0.SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q  // Base64 encoded header: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9 // Base64 encoded payload: eyJpc3MiOiJhZDU0YWFmZjg5ZmZkZmVmZjE3OGJiOGE4ZjM1OWIyOWZjYjIwZWRiNTYyNTBiOWY1ODRhYTJjYjAxNjJlZDRhIiwic3ViIjoiZGVtby5leGFtcGxlQGFjdHVhbHJlcG9ydHMuY29tIn0 // Signature: SxO-H7UYYYsclS8RGWO1qf0z1cB1m73wF9FLl9RCc1Q ```  ## Temporary JWTs You can create a temporary token in [Account Settings](https://pdfgeneratorapi.com/account/organization) page after you login to PDF Generator API. The generated token uses your email address as the subject (`sub`) value and is valid for __15 minutes__. You can also use [jwt.io](https://jwt.io/) to generate test tokens for your API calls. These test tokens should never be used in production applications. *  *  *  *  *  # Error codes  | Code   | Description                    | |--------|--------------------------------| | 401    | Unauthorized                   | | 402    | Payment Required               | | 403    | Forbidden                      | | 404    | Not Found                      | | 422    | Unprocessable Entity           | | 429    | Too Many Requests              | | 500    | Internal Server Error          |  ## 401 Unauthorized | Description                                                             | |-------------------------------------------------------------------------| | Authentication failed: request expired                                  | | Authentication failed: workspace missing                                | | Authentication failed: key missing                                      | | Authentication failed: property 'iss' (issuer) missing in JWT           | | Authentication failed: property 'sub' (subject) missing in JWT          | | Authentication failed: property 'exp' (expiration time) missing in JWT  | | Authentication failed: incorrect signature                              |  ## 402 Payment Required | Description                                                             | |-------------------------------------------------------------------------| | Your account is suspended, please upgrade your account                  |  ## 403 Forbidden | Description                                                             | |-------------------------------------------------------------------------| | Your account has exceeded the monthly document generation limit.        | | Access not granted: You cannot delete master workspace via API          | | Access not granted: Template is not accessible by this organization     | | Your session has expired, please close and reopen the editor.           |  ## 404 Entity not found | Description                                                             | |-------------------------------------------------------------------------| | Entity not found                                                        | | Resource not found                                                      | | None of the templates is available for the workspace.                   |  ## 422 Unprocessable Entity | Description                                                             | |-------------------------------------------------------------------------| | Unable to parse JSON, please check formatting                           | | Required parameter missing                                              | | Required parameter missing: template definition not defined             | | Required parameter missing: template not defined                        |  ## 429 Too Many Requests | Description                                                             | |-------------------------------------------------------------------------| | You can make up to 5 requests per second and 120 requests per minute.   |  *  *  *  *  * 

The version of the OpenAPI document: 4.0.1
Contact: support@pdfgeneratorapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module PDFGeneratorAPI
  class DocumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate document
    # Merges template with data and returns base64 encoded document or a public URL to a document. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.
    # @param generate_document_request [GenerateDocumentRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [GenerateDocument200Response]
    def generate_document(generate_document_request, opts = {})
      data, _status_code, _headers = generate_document_with_http_info(generate_document_request, opts)
      data
    end

    # Generate document
    # Merges template with data and returns base64 encoded document or a public URL to a document. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.
    # @param generate_document_request [GenerateDocumentRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateDocument200Response, Integer, Hash)>] GenerateDocument200Response data, response status code and response headers
    def generate_document_with_http_info(generate_document_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.generate_document ...'
      end
      # verify the required parameter 'generate_document_request' is set
      if @api_client.config.client_side_validation && generate_document_request.nil?
        fail ArgumentError, "Missing the required parameter 'generate_document_request' when calling DocumentsApi.generate_document"
      end
      # resource path
      local_var_path = '/documents/generate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_document_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateDocument200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"DocumentsApi.generate_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#generate_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate document (async)
    # Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example payload for callback URL:* ``` {   \"response\": \"https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\",   \"meta\": {     \"name\": \"a2bd25b8921f3dc7a440fd7f427f90a4.pdf\",     \"display_name\": \"a2bd25b8921f3dc7a440fd7f427f90a4\",     \"encoding\": \"binary\",     \"content-type\": \"application/pdf\"   } } ``` 
    # @param generate_document_async_request [GenerateDocumentAsyncRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [GenerateDocumentAsync200Response]
    def generate_document_async(generate_document_async_request, opts = {})
      data, _status_code, _headers = generate_document_async_with_http_info(generate_document_async_request, opts)
      data
    end

    # Generate document (async)
    # Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example payload for callback URL:* &#x60;&#x60;&#x60; {   \&quot;response\&quot;: \&quot;https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\&quot;,   \&quot;meta\&quot;: {     \&quot;name\&quot;: \&quot;a2bd25b8921f3dc7a440fd7f427f90a4.pdf\&quot;,     \&quot;display_name\&quot;: \&quot;a2bd25b8921f3dc7a440fd7f427f90a4\&quot;,     \&quot;encoding\&quot;: \&quot;binary\&quot;,     \&quot;content-type\&quot;: \&quot;application/pdf\&quot;   } } &#x60;&#x60;&#x60; 
    # @param generate_document_async_request [GenerateDocumentAsyncRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateDocumentAsync200Response, Integer, Hash)>] GenerateDocumentAsync200Response data, response status code and response headers
    def generate_document_async_with_http_info(generate_document_async_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.generate_document_async ...'
      end
      # verify the required parameter 'generate_document_async_request' is set
      if @api_client.config.client_side_validation && generate_document_async_request.nil?
        fail ArgumentError, "Missing the required parameter 'generate_document_async_request' when calling DocumentsApi.generate_document_async"
      end
      # resource path
      local_var_path = '/documents/generate/async'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_document_async_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateDocumentAsync200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"DocumentsApi.generate_document_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#generate_document_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate document (batch)
    # Allows to merge multiple templates with data and returns base64 encoded document or public URL to a document. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.
    # @param generate_document_batch_request [GenerateDocumentBatchRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [GenerateDocument200Response]
    def generate_document_batch(generate_document_batch_request, opts = {})
      data, _status_code, _headers = generate_document_batch_with_http_info(generate_document_batch_request, opts)
      data
    end

    # Generate document (batch)
    # Allows to merge multiple templates with data and returns base64 encoded document or public URL to a document. NB! When the public URL option is used, the document is stored for 30 days and automatically deleted.
    # @param generate_document_batch_request [GenerateDocumentBatchRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateDocument200Response, Integer, Hash)>] GenerateDocument200Response data, response status code and response headers
    def generate_document_batch_with_http_info(generate_document_batch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.generate_document_batch ...'
      end
      # verify the required parameter 'generate_document_batch_request' is set
      if @api_client.config.client_side_validation && generate_document_batch_request.nil?
        fail ArgumentError, "Missing the required parameter 'generate_document_batch_request' when calling DocumentsApi.generate_document_batch"
      end
      # resource path
      local_var_path = '/documents/generate/batch'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_document_batch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateDocument200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"DocumentsApi.generate_document_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#generate_document_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate document (batch + async)
    # Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example payload for callback URL:* ``` {   \"response\": \"https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\",   \"meta\": {     \"name\": \"a2bd25b8921f3dc7a440fd7f427f90a4.pdf\",     \"display_name\": \"a2bd25b8921f3dc7a440fd7f427f90a4\",     \"encoding\": \"binary\",     \"content-type\": \"application/pdf\"   } } ``` 
    # @param generate_document_batch_async_request [GenerateDocumentBatchAsyncRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [GenerateDocumentAsync200Response]
    def generate_document_batch_async(generate_document_batch_async_request, opts = {})
      data, _status_code, _headers = generate_document_batch_async_with_http_info(generate_document_batch_async_request, opts)
      data
    end

    # Generate document (batch + async)
    # Merges template with data as asynchronous job and makes POST request to callback URL defined in the request. Request uses the same format as response of synchronous generation endpoint. The job id is also added to the callback request as header PDF-API-Job-Id  *Example payload for callback URL:* &#x60;&#x60;&#x60; {   \&quot;response\&quot;: \&quot;https://us1.pdfgeneratorapi.com/share/12821/VBERi0xLjcKJeLjz9MKNyAwIG9i\&quot;,   \&quot;meta\&quot;: {     \&quot;name\&quot;: \&quot;a2bd25b8921f3dc7a440fd7f427f90a4.pdf\&quot;,     \&quot;display_name\&quot;: \&quot;a2bd25b8921f3dc7a440fd7f427f90a4\&quot;,     \&quot;encoding\&quot;: \&quot;binary\&quot;,     \&quot;content-type\&quot;: \&quot;application/pdf\&quot;   } } &#x60;&#x60;&#x60; 
    # @param generate_document_batch_async_request [GenerateDocumentBatchAsyncRequest] Request parameters, including template id, data and formats.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateDocumentAsync200Response, Integer, Hash)>] GenerateDocumentAsync200Response data, response status code and response headers
    def generate_document_batch_async_with_http_info(generate_document_batch_async_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.generate_document_batch_async ...'
      end
      # verify the required parameter 'generate_document_batch_async_request' is set
      if @api_client.config.client_side_validation && generate_document_batch_async_request.nil?
        fail ArgumentError, "Missing the required parameter 'generate_document_batch_async_request' when calling DocumentsApi.generate_document_batch_async"
      end
      # resource path
      local_var_path = '/documents/generate/batch/async'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_document_batch_async_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateDocumentAsync200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"DocumentsApi.generate_document_batch_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#generate_document_batch_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Returns a list of generated documents created by authorized workspace and stored in PDF Generator API. If master user is specified as workspace in JWT then all documents created in the organization are returned. NB! This endpoint returns only documents generated using the output=url option.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Start date. Format: Y-m-d H:i:s
    # @option opts [String] :end_date End date. Format: Y-m-d H:i:s. Defaults to current timestamp
    # @return [GetDocuments200Response]
    def get_documents(opts = {})
      data, _status_code, _headers = get_documents_with_http_info(opts)
      data
    end

    # Get documents
    # Returns a list of generated documents created by authorized workspace and stored in PDF Generator API. If master user is specified as workspace in JWT then all documents created in the organization are returned. NB! This endpoint returns only documents generated using the output&#x3D;url option.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Start date. Format: Y-m-d H:i:s
    # @option opts [String] :end_date End date. Format: Y-m-d H:i:s. Defaults to current timestamp
    # @return [Array<(GetDocuments200Response, Integer, Hash)>] GetDocuments200Response data, response status code and response headers
    def get_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentsApi.get_documents ...'
      end
      # resource path
      local_var_path = '/documents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDocuments200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['JSONWebTokenAuth']

      new_options = opts.merge(
        :operation => :"DocumentsApi.get_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#get_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
