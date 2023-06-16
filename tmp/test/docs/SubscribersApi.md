# SubscribersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_a_new_subscriber**](SubscribersApi.md#create_a_new_subscriber) | **POST** /v1/subscribers | 
[**delete_a_subscriber**](SubscribersApi.md#delete_a_subscriber) | **DELETE** /v1/subscribers/{id} | 
[**list_all_subscribers**](SubscribersApi.md#list_all_subscribers) | **GET** /v1/subscribers | 
[**partially_update_an_existing_subscriber**](SubscribersApi.md#partially_update_an_existing_subscriber) | **PATCH** /v1/subscribers/{id} | 
[**retrieve_an_existing_subscriber**](SubscribersApi.md#retrieve_an_existing_subscriber) | **GET** /v1/subscribers/{id} | 
[**send_an_email_to_an_active_subscriber**](SubscribersApi.md#send_an_email_to_an_active_subscriber) | **POST** /v1/subscribers/{id}/emails/{email_id} | 
[**update_an_existing_subscriber**](SubscribersApi.md#update_an_existing_subscriber) | **PUT** /v1/subscribers/{id} | 


# **create_a_new_subscriber**
> create_a_new_subscriber(_api::SubscribersApi; subscriber=nothing, _mediaType=nothing) -> Subscriber, OpenAPI.Clients.ApiResponse <br/>
> create_a_new_subscriber(_api::SubscribersApi, response_stream::Channel; subscriber=nothing, _mediaType=nothing) -> Channel{ Subscriber }, OpenAPI.Clients.ApiResponse



If Buttondown cannot create a new subscriber with the email address you've provided, there are a few likely reasons why. They're enumerated below: - _A subscriber with that email has already been unsubscribed_. - _That email address (justin@gmail.com) is already subscribed_. - _That email address (justin@gmail.com) is already subscribed, but has not confirmed their email_. - _That email address (justin@gmail.com) is already subscribed, but has not provided payment_. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SubscribersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriber** | [**Subscriber**](Subscriber.md)|  | 

### Return type

[**Subscriber**](Subscriber.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_a_subscriber**
> delete_a_subscriber(_api::SubscribersApi, id::String; ordering=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> delete_a_subscriber(_api::SubscribersApi, response_stream::Channel, id::String; ordering=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SubscribersApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_all_subscribers**
> list_all_subscribers(_api::SubscribersApi; type=nothing, tag=nothing, email=nothing, page=nothing, ordering=nothing, _mediaType=nothing) -> ListAllSubscribers200Response, OpenAPI.Clients.ApiResponse <br/>
> list_all_subscribers(_api::SubscribersApi, response_stream::Channel; type=nothing, tag=nothing, email=nothing, page=nothing, ordering=nothing, _mediaType=nothing) -> Channel{ ListAllSubscribers200Response }, OpenAPI.Clients.ApiResponse



It's worth noting that the various parametric options in this API work in tandem; you can, for instance, filter down your results to all \"unpaid\" subscribers matching a certain tag.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SubscribersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| An optional filter to allow you to only retrieve a subset of subscribers. The API accepts the following values:  - &#x60;regular&#x60; — normal subscribers who have not unsubscribed or deactivated in any way. - &#x60;unactivated&#x60; — subscribers who have not yet confirmed their email or opted in. - &#x60;unpaid&#x60; — subscribers who have not yet purchased a subscription to your newsletter. - &#x60;removed&#x60; — subscribers who have been explicitly removed by the newsletter (notably, this does not mean unsubscribers: use [/v1/unsubscribers](/v1/schema#tag/Unsubscribers) for that!  | [default to nothing]
 **tag** | **String**| An optional filter allowing you to filter subscribers based on a given tag. Provide the ID of the tag, not the name.  | [default to nothing]
 **email** | **String**| An optional filter allowing you to filter subscribers based on a substring. Providing a value of \&quot;doe\&quot; would match both &#x60;jane.doe@gmail.com&#x60; and &#x60;john.doe@gmail.com&#x60;, but not &#x60;jane.dooe@gmail.com&#x60;.  | [default to nothing]
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]
 **ordering** | **String**| Which field to use when ordering the results. | [default to nothing]

### Return type

[**ListAllSubscribers200Response**](ListAllSubscribers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **partially_update_an_existing_subscriber**
> partially_update_an_existing_subscriber(_api::SubscribersApi, id::String; ordering=nothing, subscriber=nothing, _mediaType=nothing) -> Subscriber, OpenAPI.Clients.ApiResponse <br/>
> partially_update_an_existing_subscriber(_api::SubscribersApi, response_stream::Channel, id::String; ordering=nothing, subscriber=nothing, _mediaType=nothing) -> Channel{ Subscriber }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SubscribersApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [default to nothing]
 **subscriber** | [**Subscriber**](Subscriber.md)|  | 

### Return type

[**Subscriber**](Subscriber.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_an_existing_subscriber**
> retrieve_an_existing_subscriber(_api::SubscribersApi, id::String; ordering=nothing, _mediaType=nothing) -> Subscriber, OpenAPI.Clients.ApiResponse <br/>
> retrieve_an_existing_subscriber(_api::SubscribersApi, response_stream::Channel, id::String; ordering=nothing, _mediaType=nothing) -> Channel{ Subscriber }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SubscribersApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [default to nothing]

### Return type

[**Subscriber**](Subscriber.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **send_an_email_to_an_active_subscriber**
> send_an_email_to_an_active_subscriber(_api::SubscribersApi, id::String, email_id::String; body=nothing, _mediaType=nothing) -> Any, OpenAPI.Clients.ApiResponse <br/>
> send_an_email_to_an_active_subscriber(_api::SubscribersApi, response_stream::Channel, id::String, email_id::String; body=nothing, _mediaType=nothing) -> Channel{ Any }, OpenAPI.Clients.ApiResponse



This endpoint is currently in closed beta. If you're interested in using it, please [email me](mailto:justin@buttondown.email) to tell me more about your use case!

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SubscribersApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber. | [default to nothing]
**email_id** | **String**|  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Any**|  | 

### Return type

**Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_an_existing_subscriber**
> update_an_existing_subscriber(_api::SubscribersApi, id::String; ordering=nothing, subscriber=nothing, _mediaType=nothing) -> Subscriber, OpenAPI.Clients.ApiResponse <br/>
> update_an_existing_subscriber(_api::SubscribersApi, response_stream::Channel, id::String; ordering=nothing, subscriber=nothing, _mediaType=nothing) -> Channel{ Subscriber }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SubscribersApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [default to nothing]
 **subscriber** | [**Subscriber**](Subscriber.md)|  | 

### Return type

[**Subscriber**](Subscriber.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

