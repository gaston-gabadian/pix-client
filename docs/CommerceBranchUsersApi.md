# BancardPixServiceClient::CommerceBranchUsersApi

All URIs are relative to *https://www.example.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commerce_branch_users_report**](CommerceBranchUsersApi.md#commerce_branch_users_report) | **GET** /pix/api/commerce_branch_users | Obtain commerce branch users report |
| [**create_commerce_branch_user**](CommerceBranchUsersApi.md#create_commerce_branch_user) | **POST** /pix/api/commerce_branch_users | Create commerce branch user |
| [**destroy_commerce_branch_user**](CommerceBranchUsersApi.md#destroy_commerce_branch_user) | **DELETE** /pix/api/commerce_branch_users/{id} | Destroy commerce branch user |


## commerce_branch_users_report

> <CommerceBranchUsersReport> commerce_branch_users_report(commerce_id, opts)

Obtain commerce branch users report

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'
# setup authorization
BancardPixServiceClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BancardPixServiceClient::CommerceBranchUsersApi.new
commerce_id = 56 # Integer | 
opts = {
  user_id: 56, # Integer | 
  commerce_branch_id: 56, # Integer | 
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # Obtain commerce branch users report
  result = api_instance.commerce_branch_users_report(commerce_id, opts)
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling CommerceBranchUsersApi->commerce_branch_users_report: #{e}"
end
```

#### Using the commerce_branch_users_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceBranchUsersReport>, Integer, Hash)> commerce_branch_users_report_with_http_info(commerce_id, opts)

```ruby
begin
  # Obtain commerce branch users report
  data, status_code, headers = api_instance.commerce_branch_users_report_with_http_info(commerce_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceBranchUsersReport>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling CommerceBranchUsersApi->commerce_branch_users_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_id** | **Integer** |  |  |
| **user_id** | **Integer** |  | [optional] |
| **commerce_branch_id** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |

### Return type

[**CommerceBranchUsersReport**](CommerceBranchUsersReport.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_commerce_branch_user

> <ShowCommerceBranchUser> create_commerce_branch_user(opts)

Create commerce branch user

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'
# setup authorization
BancardPixServiceClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BancardPixServiceClient::CommerceBranchUsersApi.new
opts = {
  commerce_branch_user_create_request: BancardPixServiceClient::CommerceBranchUserCreateRequest.new({commerce_branch_user: BancardPixServiceClient::CommerceBranchUserCreateRequestCommerceBranchUser.new({user_id: 37, commerce_id: 37, commerce_branch_id: 37})}) # CommerceBranchUserCreateRequest | 
}

begin
  # Create commerce branch user
  result = api_instance.create_commerce_branch_user(opts)
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling CommerceBranchUsersApi->create_commerce_branch_user: #{e}"
end
```

#### Using the create_commerce_branch_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShowCommerceBranchUser>, Integer, Hash)> create_commerce_branch_user_with_http_info(opts)

```ruby
begin
  # Create commerce branch user
  data, status_code, headers = api_instance.create_commerce_branch_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShowCommerceBranchUser>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling CommerceBranchUsersApi->create_commerce_branch_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_branch_user_create_request** | [**CommerceBranchUserCreateRequest**](CommerceBranchUserCreateRequest.md) |  | [optional] |

### Return type

[**ShowCommerceBranchUser**](ShowCommerceBranchUser.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_commerce_branch_user

> destroy_commerce_branch_user(id)

Destroy commerce branch user

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'
# setup authorization
BancardPixServiceClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BancardPixServiceClient::CommerceBranchUsersApi.new
id = 56 # Integer | 

begin
  # Destroy commerce branch user
  api_instance.destroy_commerce_branch_user(id)
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling CommerceBranchUsersApi->destroy_commerce_branch_user: #{e}"
end
```

#### Using the destroy_commerce_branch_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> destroy_commerce_branch_user_with_http_info(id)

```ruby
begin
  # Destroy commerce branch user
  data, status_code, headers = api_instance.destroy_commerce_branch_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling CommerceBranchUsersApi->destroy_commerce_branch_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

