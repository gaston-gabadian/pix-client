# BancardPixServiceClient::PaymentHooksApi

All URIs are relative to *https://www.example.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payment_hook**](PaymentHooksApi.md#cancel_payment_hook) | **POST** /pix/api/payment_hooks/{id}/cancel | Cancel payment hook |
| [**create_payment_hook**](PaymentHooksApi.md#create_payment_hook) | **POST** /pix/api/payment_hooks | Create payment hook |


## cancel_payment_hook

> <ShowPaymentHook> cancel_payment_hook(id)

Cancel payment hook

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

api_instance = BancardPixServiceClient::PaymentHooksApi.new
id = 56 # Integer | id

begin
  # Cancel payment hook
  result = api_instance.cancel_payment_hook(id)
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling PaymentHooksApi->cancel_payment_hook: #{e}"
end
```

#### Using the cancel_payment_hook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShowPaymentHook>, Integer, Hash)> cancel_payment_hook_with_http_info(id)

```ruby
begin
  # Cancel payment hook
  data, status_code, headers = api_instance.cancel_payment_hook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShowPaymentHook>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling PaymentHooksApi->cancel_payment_hook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | id |  |

### Return type

[**ShowPaymentHook**](ShowPaymentHook.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_payment_hook

> <ShowPaymentHook> create_payment_hook(opts)

Create payment hook

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

api_instance = BancardPixServiceClient::PaymentHooksApi.new
opts = {
  payment_hook_create_request: BancardPixServiceClient::PaymentHookCreateRequest.new({payment_hook: BancardPixServiceClient::PaymentHookCreateRequestPaymentHook.new({usd_amount_cents: 37, buyer_cpf: 'buyer_cpf_example', buyer_email: 'buyer_email_example', buyer_cellphone: 'buyer_cellphone_example', cashier_user_id: 37, commerce_id: 37, commerce_branch_id: 37})}) # PaymentHookCreateRequest | 
}

begin
  # Create payment hook
  result = api_instance.create_payment_hook(opts)
  p result
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling PaymentHooksApi->create_payment_hook: #{e}"
end
```

#### Using the create_payment_hook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShowPaymentHook>, Integer, Hash)> create_payment_hook_with_http_info(opts)

```ruby
begin
  # Create payment hook
  data, status_code, headers = api_instance.create_payment_hook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShowPaymentHook>
rescue BancardPixServiceClient::ApiError => e
  puts "Error when calling PaymentHooksApi->create_payment_hook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_hook_create_request** | [**PaymentHookCreateRequest**](PaymentHookCreateRequest.md) |  | [optional] |

### Return type

[**ShowPaymentHook**](ShowPaymentHook.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

