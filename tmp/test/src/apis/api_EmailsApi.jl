# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct EmailsApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `EmailsApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ EmailsApi }) = "http://localhost"

const _returntypes_create_a_new_email_EmailsApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => Email,
)

function _oacinternal_create_a_new_email(_api::EmailsApi; email=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_create_a_new_email_EmailsApi, "/v1/emails", [], email)
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", "application/x-www-form-urlencoded", "multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""Params:
- email::Email

Return: Email, OpenAPI.Clients.ApiResponse
"""
function create_a_new_email(_api::EmailsApi; email=nothing, _mediaType=nothing)
    _ctx = _oacinternal_create_a_new_email(_api; email=email, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function create_a_new_email(_api::EmailsApi, response_stream::Channel; email=nothing, _mediaType=nothing)
    _ctx = _oacinternal_create_a_new_email(_api; email=email, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_list_all_emails_EmailsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ListAllEmails200Response,
)

function _oacinternal_list_all_emails(_api::EmailsApi; page=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_list_all_emails_EmailsApi, "/v1/emails", [])
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Params:
- page::Int64

Return: ListAllEmails200Response, OpenAPI.Clients.ApiResponse
"""
function list_all_emails(_api::EmailsApi; page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_list_all_emails(_api; page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function list_all_emails(_api::EmailsApi, response_stream::Channel; page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_list_all_emails(_api; page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_retrieve_an_existing_email_EmailsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Email,
)

function _oacinternal_retrieve_an_existing_email(_api::EmailsApi, id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_retrieve_an_existing_email_EmailsApi, "/v1/emails/{id}", [])
    OpenAPI.Clients.set_param(_ctx.path, "id", id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Params:
- id::String (required)

Return: Email, OpenAPI.Clients.ApiResponse
"""
function retrieve_an_existing_email(_api::EmailsApi, id::String; _mediaType=nothing)
    _ctx = _oacinternal_retrieve_an_existing_email(_api, id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function retrieve_an_existing_email(_api::EmailsApi, response_stream::Channel, id::String; _mediaType=nothing)
    _ctx = _oacinternal_retrieve_an_existing_email(_api, id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export create_a_new_email
export list_all_emails
export retrieve_an_existing_email