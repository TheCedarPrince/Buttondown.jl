# EmailsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_a_new_email**](EmailsApi.md#create_a_new_email) | **POST** /v1/emails | 
[**list_all_emails**](EmailsApi.md#list_all_emails) | **GET** /v1/emails | 
[**retrieve_an_existing_email**](EmailsApi.md#retrieve_an_existing_email) | **GET** /v1/emails/{id} | 


# **create_a_new_email**
> create_a_new_email(_api::EmailsApi; email=nothing, _mediaType=nothing) -> Email, OpenAPI.Clients.ApiResponse <br/>
> create_a_new_email(_api::EmailsApi, response_stream::Channel; email=nothing, _mediaType=nothing) -> Channel{ Email }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmailsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**Email**](Email.md)|  | 

### Return type

[**Email**](Email.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_all_emails**
> list_all_emails(_api::EmailsApi; page=nothing, _mediaType=nothing) -> ListAllEmails200Response, OpenAPI.Clients.ApiResponse <br/>
> list_all_emails(_api::EmailsApi, response_stream::Channel; page=nothing, _mediaType=nothing) -> Channel{ ListAllEmails200Response }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmailsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]

### Return type

[**ListAllEmails200Response**](ListAllEmails200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_an_existing_email**
> retrieve_an_existing_email(_api::EmailsApi, id::String; _mediaType=nothing) -> Email, OpenAPI.Clients.ApiResponse <br/>
> retrieve_an_existing_email(_api::EmailsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Email }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EmailsApi** | API context | 
**id** | **String**| A UUID string identifying this email. | [default to nothing]

### Return type

[**Email**](Email.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

