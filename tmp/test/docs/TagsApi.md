# TagsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_a_new_tag**](TagsApi.md#create_a_new_tag) | **POST** /v1/tags | 
[**delete_a_tag**](TagsApi.md#delete_a_tag) | **DELETE** /v1/tags/{id} | 
[**list_all_tags**](TagsApi.md#list_all_tags) | **GET** /v1/tags | 
[**partially_update_an_existing_tag**](TagsApi.md#partially_update_an_existing_tag) | **PATCH** /v1/tags/{id} | 
[**retrieve_an_existing_tag**](TagsApi.md#retrieve_an_existing_tag) | **GET** /v1/tags/{id} | 
[**update_an_existing_tag**](TagsApi.md#update_an_existing_tag) | **PUT** /v1/tags/{id} | 


# **create_a_new_tag**
> create_a_new_tag(_api::TagsApi; subscriber_tag=nothing, _mediaType=nothing) -> SubscriberTag, OpenAPI.Clients.ApiResponse <br/>
> create_a_new_tag(_api::TagsApi, response_stream::Channel; subscriber_tag=nothing, _mediaType=nothing) -> Channel{ SubscriberTag }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TagsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriber_tag** | [**SubscriberTag**](SubscriberTag.md)|  | 

### Return type

[**SubscriberTag**](SubscriberTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_a_tag**
> delete_a_tag(_api::TagsApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> delete_a_tag(_api::TagsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TagsApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber tag. | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_all_tags**
> list_all_tags(_api::TagsApi; page=nothing, _mediaType=nothing) -> ListAllTags200Response, OpenAPI.Clients.ApiResponse <br/>
> list_all_tags(_api::TagsApi, response_stream::Channel; page=nothing, _mediaType=nothing) -> Channel{ ListAllTags200Response }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TagsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]

### Return type

[**ListAllTags200Response**](ListAllTags200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **partially_update_an_existing_tag**
> partially_update_an_existing_tag(_api::TagsApi, id::String; subscriber_tag=nothing, _mediaType=nothing) -> SubscriberTag, OpenAPI.Clients.ApiResponse <br/>
> partially_update_an_existing_tag(_api::TagsApi, response_stream::Channel, id::String; subscriber_tag=nothing, _mediaType=nothing) -> Channel{ SubscriberTag }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TagsApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber tag. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriber_tag** | [**SubscriberTag**](SubscriberTag.md)|  | 

### Return type

[**SubscriberTag**](SubscriberTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_an_existing_tag**
> retrieve_an_existing_tag(_api::TagsApi, id::String; _mediaType=nothing) -> SubscriberTag, OpenAPI.Clients.ApiResponse <br/>
> retrieve_an_existing_tag(_api::TagsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ SubscriberTag }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TagsApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber tag. | [default to nothing]

### Return type

[**SubscriberTag**](SubscriberTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_an_existing_tag**
> update_an_existing_tag(_api::TagsApi, id::String; subscriber_tag=nothing, _mediaType=nothing) -> SubscriberTag, OpenAPI.Clients.ApiResponse <br/>
> update_an_existing_tag(_api::TagsApi, response_stream::Channel, id::String; subscriber_tag=nothing, _mediaType=nothing) -> Channel{ SubscriberTag }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TagsApi** | API context | 
**id** | **String**| A UUID string identifying this subscriber tag. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriber_tag** | [**SubscriberTag**](SubscriberTag.md)|  | 

### Return type

[**SubscriberTag**](SubscriberTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

