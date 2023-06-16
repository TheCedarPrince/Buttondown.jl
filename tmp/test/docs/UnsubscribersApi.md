# UnsubscribersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_unsubscribers**](UnsubscribersApi.md#list_unsubscribers) | **GET** /v1/unsubscribers | 
[**retrieve_a_specific_unsubscriber**](UnsubscribersApi.md#retrieve_a_specific_unsubscriber) | **GET** /v1/unsubscribers/{id} | 


# **list_unsubscribers**
> list_unsubscribers(_api::UnsubscribersApi; page=nothing, _mediaType=nothing) -> ListUnsubscribers200Response, OpenAPI.Clients.ApiResponse <br/>
> list_unsubscribers(_api::UnsubscribersApi, response_stream::Channel; page=nothing, _mediaType=nothing) -> Channel{ ListUnsubscribers200Response }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UnsubscribersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]

### Return type

[**ListUnsubscribers200Response**](ListUnsubscribers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_a_specific_unsubscriber**
> retrieve_a_specific_unsubscriber(_api::UnsubscribersApi, id::String; _mediaType=nothing) -> Subscriber, OpenAPI.Clients.ApiResponse <br/>
> retrieve_a_specific_unsubscriber(_api::UnsubscribersApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Subscriber }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UnsubscribersApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber. | [default to nothing]

### Return type

[**Subscriber**](Subscriber.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

