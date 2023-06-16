# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""List_all_emails_200_response

    ListAllEmails200Response(;
        count=nothing,
        next=nothing,
        previous=nothing,
        results=nothing,
    )

    - count::Int64
    - next::String
    - previous::String
    - results::Vector{Email}
"""
Base.@kwdef mutable struct ListAllEmails200Response <: OpenAPI.APIModel
    count::Union{Nothing, Int64} = nothing
    next::Union{Nothing, String} = nothing
    previous::Union{Nothing, String} = nothing
    results::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Email} }

    function ListAllEmails200Response(count, next, previous, results, )
        OpenAPI.validate_property(ListAllEmails200Response, Symbol("count"), count)
        OpenAPI.validate_property(ListAllEmails200Response, Symbol("next"), next)
        OpenAPI.validate_property(ListAllEmails200Response, Symbol("previous"), previous)
        OpenAPI.validate_property(ListAllEmails200Response, Symbol("results"), results)
        return new(count, next, previous, results, )
    end
end # type ListAllEmails200Response

const _property_types_ListAllEmails200Response = Dict{Symbol,String}(Symbol("count")=>"Int64", Symbol("next")=>"String", Symbol("previous")=>"String", Symbol("results")=>"Vector{Email}", )
OpenAPI.property_type(::Type{ ListAllEmails200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ListAllEmails200Response[name]))}

function check_required(o::ListAllEmails200Response)
    true
end

function OpenAPI.validate_property(::Type{ ListAllEmails200Response }, name::Symbol, val)
    if name === Symbol("next")
        OpenAPI.validate_param(name, "ListAllEmails200Response", :format, val, "uri")
    end
    if name === Symbol("previous")
        OpenAPI.validate_param(name, "ListAllEmails200Response", :format, val, "uri")
    end
end