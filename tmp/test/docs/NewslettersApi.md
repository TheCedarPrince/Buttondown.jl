# NewslettersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_a_newsletter**](NewslettersApi.md#create_a_newsletter) | **POST** /v1/newsletters | 
[**delete_a_newsletter**](NewslettersApi.md#delete_a_newsletter) | **DELETE** /v1/newsletters/{id} | 
[**list_all_newsletters**](NewslettersApi.md#list_all_newsletters) | **GET** /v1/newsletters | 
[**partially_update_an_existing_newsletter**](NewslettersApi.md#partially_update_an_existing_newsletter) | **PATCH** /v1/newsletters/{id} | 
[**retrieve_an_existing_newsletter**](NewslettersApi.md#retrieve_an_existing_newsletter) | **GET** /v1/newsletters/{id} | 
[**update_an_existing_newsletter**](NewslettersApi.md#update_an_existing_newsletter) | **PUT** /v1/newsletters/{id} | 


# **create_a_newsletter**
> create_a_newsletter(_api::NewslettersApi; newsletter=nothing, _mediaType=nothing) -> Newsletter, OpenAPI.Clients.ApiResponse <br/>
> create_a_newsletter(_api::NewslettersApi, response_stream::Channel; newsletter=nothing, _mediaType=nothing) -> Channel{ Newsletter }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NewslettersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newsletter** | [**Newsletter**](Newsletter.md)|  | 

### Return type

[**Newsletter**](Newsletter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_a_newsletter**
> delete_a_newsletter(_api::NewslettersApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> delete_a_newsletter(_api::NewslettersApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NewslettersApi** | API context | 
**id** | **String**| A UUID string identifying this newsletter. | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_all_newsletters**
> list_all_newsletters(_api::NewslettersApi; page=nothing, _mediaType=nothing) -> ListAllNewsletters200Response, OpenAPI.Clients.ApiResponse <br/>
> list_all_newsletters(_api::NewslettersApi, response_stream::Channel; page=nothing, _mediaType=nothing) -> Channel{ ListAllNewsletters200Response }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NewslettersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]

### Return type

[**ListAllNewsletters200Response**](ListAllNewsletters200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **partially_update_an_existing_newsletter**
> partially_update_an_existing_newsletter(_api::NewslettersApi, id::String; newsletter=nothing, _mediaType=nothing) -> Newsletter, OpenAPI.Clients.ApiResponse <br/>
> partially_update_an_existing_newsletter(_api::NewslettersApi, response_stream::Channel, id::String; newsletter=nothing, _mediaType=nothing) -> Channel{ Newsletter }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NewslettersApi** | API context | 
**id** | **String**| A UUID string identifying this newsletter. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newsletter** | [**Newsletter**](Newsletter.md)|  | 

### Return type

[**Newsletter**](Newsletter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_an_existing_newsletter**
> retrieve_an_existing_newsletter(_api::NewslettersApi, id::String; _mediaType=nothing) -> Newsletter, OpenAPI.Clients.ApiResponse <br/>
> retrieve_an_existing_newsletter(_api::NewslettersApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Newsletter }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NewslettersApi** | API context | 
**id** | **String**| A UUID string identifying this newsletter. | [default to nothing]

### Return type

[**Newsletter**](Newsletter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_an_existing_newsletter**
> update_an_existing_newsletter(_api::NewslettersApi, id::String; newsletter=nothing, _mediaType=nothing) -> Newsletter, OpenAPI.Clients.ApiResponse <br/>
> update_an_existing_newsletter(_api::NewslettersApi, response_stream::Channel, id::String; newsletter=nothing, _mediaType=nothing) -> Channel{ Newsletter }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NewslettersApi** | API context | 
**id** | **String**| A UUID string identifying this newsletter. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newsletter** | [**Newsletter**](Newsletter.md)|  | 

### Return type

[**Newsletter**](Newsletter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

