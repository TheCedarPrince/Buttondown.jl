# ImagesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_an_uploaded_image**](ImagesApi.md#delete_an_uploaded_image) | **DELETE** /v1/images/{id} | 
[**list_all_uploaded_images**](ImagesApi.md#list_all_uploaded_images) | **GET** /v1/images | 
[**retrieve_an_uploaded_image**](ImagesApi.md#retrieve_an_uploaded_image) | **GET** /v1/images/{id} | 
[**upload_a_new_image**](ImagesApi.md#upload_a_new_image) | **POST** /v1/images | 


# **delete_an_uploaded_image**
> delete_an_uploaded_image(_api::ImagesApi, id::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> delete_an_uploaded_image(_api::ImagesApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse



Be sure to verify that this image hasn't been referenced in your emails before deleting it!

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 
**id** | **String**| A UUID string identifying this uploaded image. | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_all_uploaded_images**
> list_all_uploaded_images(_api::ImagesApi; page=nothing, _mediaType=nothing) -> ListAllUploadedImages200Response, OpenAPI.Clients.ApiResponse <br/>
> list_all_uploaded_images(_api::ImagesApi, response_stream::Channel; page=nothing, _mediaType=nothing) -> Channel{ ListAllUploadedImages200Response }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| A page number within the paginated result set. | [default to nothing]

### Return type

[**ListAllUploadedImages200Response**](ListAllUploadedImages200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_an_uploaded_image**
> retrieve_an_uploaded_image(_api::ImagesApi, id::String; _mediaType=nothing) -> UploadedImage, OpenAPI.Clients.ApiResponse <br/>
> retrieve_an_uploaded_image(_api::ImagesApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ UploadedImage }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 
**id** | **String**| A UUID string identifying this uploaded image. | [default to nothing]

### Return type

[**UploadedImage**](UploadedImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_a_new_image**
> upload_a_new_image(_api::ImagesApi; uploaded_image=nothing, _mediaType=nothing) -> UploadedImage, OpenAPI.Clients.ApiResponse <br/>
> upload_a_new_image(_api::ImagesApi, response_stream::Channel; uploaded_image=nothing, _mediaType=nothing) -> Channel{ UploadedImage }, OpenAPI.Clients.ApiResponse





### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploaded_image** | [**UploadedImage**](UploadedImage.md)|  | 

### Return type

[**UploadedImage**](UploadedImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

