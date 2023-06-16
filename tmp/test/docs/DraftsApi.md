# DraftsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_a_new_draft**](DraftsApi.md#create_a_new_draft) | **POST** /v1/drafts | 
[**list_all_drafts**](DraftsApi.md#list_all_drafts) | **GET** /v1/drafts | 
[**retrieve_an_existing_draft**](DraftsApi.md#retrieve_an_existing_draft) | **GET** /v1/drafts/{id} | 


# **create_a_new_draft**
> create_a_new_draft(_api::DraftsApi; draft=nothing, _mediaType=nothing) -> Draft, OpenAPI.Clients.ApiResponse <br/>
> create_a_new_draft(_api::DraftsApi, response_stream::Channel; draft=nothing, _mediaType=nothing) -> Channel{ Draft }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DraftsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft** | [**Draft**](Draft.md)|  | 

### Return type

[**Draft**](Draft.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_all_drafts**
> list_all_drafts(_api::DraftsApi; page=nothing, _mediaType=nothing) -> ListAllDrafts200Response, OpenAPI.Clients.ApiResponse <br/>
> list_all_drafts(_api::DraftsApi, response_stream::Channel; page=nothing, _mediaType=nothing) -> Channel{ ListAllDrafts200Response }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DraftsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]

### Return type

[**ListAllDrafts200Response**](ListAllDrafts200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_an_existing_draft**
> retrieve_an_existing_draft(_api::DraftsApi, id::String; _mediaType=nothing) -> Draft, OpenAPI.Clients.ApiResponse <br/>
> retrieve_an_existing_draft(_api::DraftsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Draft }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DraftsApi** | API context | 
**id** | **String**| A UUID string identifying this draft. | [default to nothing]

### Return type

[**Draft**](Draft.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

