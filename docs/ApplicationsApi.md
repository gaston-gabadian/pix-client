# BancardPixServiceClient::ApplicationsApi

All URIs are relative to *https://www.example.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_application**](ApplicationsApi.md#create_application) | **POST** /applications | Create application |
| [**delete_application**](ApplicationsApi.md#delete_application) | **DELETE** /applications/{id} | Delete application |
| [**list_applications**](ApplicationsApi.md#list_applications) | **GET** /applications | List applications |
| [**show_application**](ApplicationsApi.md#show_application) | **GET** /applications/{id} | Show application |
| [**update_application**](ApplicationsApi.md#update_application) | **PUT** /applications/{id} | Update application |


## create_application

> <ShowApplication> create_application(opts)

Create application

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'

api_instance = BancardPixServiceClient::ApplicationsApi.new
opts = {
  application_create_request: BancardPixServiceClient::ApplicationCreateRequest.new({application: BancardPixServiceClient::ApplicationCreateRequestApplication.new({commerce_id: 37, commerce_branch_id: 37})}) # ApplicationCreateRequest | 
}

begin
  # Create application
  result = api_instance.create_application(opts)
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->create_application: #{e}"
end
```

#### Using the create_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShowApplication>, Integer, Hash)> create_application_with_http_info(opts)

```ruby
begin
  # Create application
  data, status_code, headers = api_instance.create_application_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShowApplication>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->create_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_create_request** | [**ApplicationCreateRequest**](ApplicationCreateRequest.md) |  | [optional] |

### Return type

[**ShowApplication**](ShowApplication.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_application

> delete_application(id)

Delete application

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'

api_instance = BancardPixServiceClient::ApplicationsApi.new
id = 56 # Integer | id

begin
  # Delete application
  api_instance.delete_application(id)
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->delete_application: #{e}"
end
```

#### Using the delete_application_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_application_with_http_info(id)

```ruby
begin
  # Delete application
  data, status_code, headers = api_instance.delete_application_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->delete_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | id |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_applications

> <ListApplications> list_applications

List applications

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'

api_instance = BancardPixServiceClient::ApplicationsApi.new

begin
  # List applications
  result = api_instance.list_applications
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->list_applications: #{e}"
end
```

#### Using the list_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListApplications>, Integer, Hash)> list_applications_with_http_info

```ruby
begin
  # List applications
  data, status_code, headers = api_instance.list_applications_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListApplications>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->list_applications_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListApplications**](ListApplications.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_application

> <ShowApplication> show_application(id)

Show application

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'

api_instance = BancardPixServiceClient::ApplicationsApi.new
id = 56 # Integer | id

begin
  # Show application
  result = api_instance.show_application(id)
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->show_application: #{e}"
end
```

#### Using the show_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShowApplication>, Integer, Hash)> show_application_with_http_info(id)

```ruby
begin
  # Show application
  data, status_code, headers = api_instance.show_application_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShowApplication>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->show_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | id |  |

### Return type

[**ShowApplication**](ShowApplication.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_application

> <ShowApplication> update_application(id, opts)

Update application

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'

api_instance = BancardPixServiceClient::ApplicationsApi.new
id = 56 # Integer | id
opts = {
  application_update_request: BancardPixServiceClient::ApplicationUpdateRequest.new({application: BancardPixServiceClient::ApplicationUpdateRequestApplication.new({merchant_id: 37})}) # ApplicationUpdateRequest | 
}

begin
  # Update application
  result = api_instance.update_application(id, opts)
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->update_application: #{e}"
end
```

#### Using the update_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShowApplication>, Integer, Hash)> update_application_with_http_info(id, opts)

```ruby
begin
  # Update application
  data, status_code, headers = api_instance.update_application_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShowApplication>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling ApplicationsApi->update_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | id |  |
| **application_update_request** | [**ApplicationUpdateRequest**](ApplicationUpdateRequest.md) |  | [optional] |

### Return type

[**ShowApplication**](ShowApplication.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

