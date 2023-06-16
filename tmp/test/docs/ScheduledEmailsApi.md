# ScheduledEmailsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_a_scheduled_email**](ScheduledEmailsApi.md#delete_a_scheduled_email) | **DELETE** /v1/scheduled-emails/{id} | 
[**list_all_scheduled_emails**](ScheduledEmailsApi.md#list_all_scheduled_emails) | **GET** /v1/scheduled-emails | 
[**retrieve_an_existing_scheduled_email**](ScheduledEmailsApi.md#retrieve_an_existing_scheduled_email) | **GET** /v1/scheduled-emails/{id} | 
[**schedule_a_new_email**](ScheduledEmailsApi.md#schedule_a_new_email) | **POST** /v1/scheduled-emails | 
[**update_a_scheduled_email**](ScheduledEmailsApi.md#update_a_scheduled_email) | **PATCH** /v1/scheduled-emails/{id} | 


# **delete_a_scheduled_email**
> delete_a_scheduled_email(_api::ScheduledEmailsApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> delete_a_scheduled_email(_api::ScheduledEmailsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse



### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ScheduledEmailsApi** | API context | 
**id** | **String**| A UUID string identifying this scheduled email. | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_all_scheduled_emails**
> list_all_scheduled_emails(_api::ScheduledEmailsApi; page=nothing, _mediaType=nothing) -> ListAllScheduledEmails200Response, OpenAPI.Clients.ApiResponse <br/>
> list_all_scheduled_emails(_api::ScheduledEmailsApi, response_stream::Channel; page=nothing, _mediaType=nothing) -> Channel{ ListAllScheduledEmails200Response }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ScheduledEmailsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]

### Return type

[**ListAllScheduledEmails200Response**](ListAllScheduledEmails200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_an_existing_scheduled_email**
> retrieve_an_existing_scheduled_email(_api::ScheduledEmailsApi, id::String; _mediaType=nothing) -> ScheduledEmail, OpenAPI.Clients.ApiResponse <br/>
> retrieve_an_existing_scheduled_email(_api::ScheduledEmailsApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ ScheduledEmail }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ScheduledEmailsApi** | API context | 
**id** | **String**| A UUID string identifying this scheduled email. | [default to nothing]

### Return type

[**ScheduledEmail**](ScheduledEmail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **schedule_a_new_email**
> schedule_a_new_email(_api::ScheduledEmailsApi; scheduled_email=nothing, _mediaType=nothing) -> ScheduledEmail, OpenAPI.Clients.ApiResponse <br/>
> schedule_a_new_email(_api::ScheduledEmailsApi, response_stream::Channel; scheduled_email=nothing, _mediaType=nothing) -> Channel{ ScheduledEmail }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ScheduledEmailsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduled_email** | [**ScheduledEmail**](ScheduledEmail.md)|  | 

### Return type

[**ScheduledEmail**](ScheduledEmail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_a_scheduled_email**
> update_a_scheduled_email(_api::ScheduledEmailsApi, id::String; scheduled_email=nothing, _mediaType=nothing) -> ScheduledEmail, OpenAPI.Clients.ApiResponse <br/>
> update_a_scheduled_email(_api::ScheduledEmailsApi, response_stream::Channel, id::String; scheduled_email=nothing, _mediaType=nothing) -> Channel{ ScheduledEmail }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ScheduledEmailsApi** | API context | 
**id** | **String**| A UUID string identifying this scheduled email. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduled_email** | [**ScheduledEmail**](ScheduledEmail.md)|  | 

### Return type

[**ScheduledEmail**](ScheduledEmail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

