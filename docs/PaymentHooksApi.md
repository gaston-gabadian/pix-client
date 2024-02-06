# BancardPixServiceClient::PaymentHooksApi

All URIs are relative to *https://www.example.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_hook**](PaymentHooksApi.md#create_payment_hook) | **POST** /payment_hooks | Create payment hook |


## create_payment_hook

> <ShowPaymentHook> create_payment_hook(opts)

Create payment hook

### Examples

```ruby
require 'time'
require 'bancard-pix-service-client'

api_instance = BancardPixServiceClient::PaymentHooksApi.new
opts = {
  payment_hook_create_request: BancardPixServiceClient::PaymentHookCreateRequest.new({payment_hook: BancardPixServiceClient::PaymentHookCreateRequestPaymentHook.new({usd_amount_cents: 37, buyer_cpf: 'buyer_cpf_example', buyer_email: 'buyer_email_example', buyer_cellphone: 'buyer_cellphone_example', cashier_user_id: 37, commerce_id: 37})}) # PaymentHookCreateRequest | 
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

