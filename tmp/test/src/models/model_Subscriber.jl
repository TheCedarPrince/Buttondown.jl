# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Subscriber

    Subscriber(;
        creation_date=nothing,
        email=nothing,
        id=nothing,
        metadata=nothing,
        notes=nothing,
        referrer_url=nothing,
        secondary_id=nothing,
        source=nothing,
        subscriber_type=nothing,
        tags=nothing,
        utm_campaign=nothing,
        utm_medium=nothing,
        utm_source=nothing,
    )

    - creation_date::ZonedDateTime
    - email::String
    - id::String
    - metadata::Any
    - notes::String
    - referrer_url::String
    - secondary_id::Int64
    - source::String
    - subscriber_type::String
    - tags::Vector{String}
    - utm_campaign::String
    - utm_medium::String
    - utm_source::String
"""
Base.@kwdef mutable struct Subscriber <: OpenAPI.APIModel
    creation_date::Union{Nothing, ZonedDateTime} = nothing
    email::Union{Nothing, String} = nothing
    id::Union{Nothing, String} = nothing
    metadata::Union{Nothing, Any} = nothing
    notes::Union{Nothing, String} = nothing
    referrer_url::Union{Nothing, String} = nothing
    secondary_id::Union{Nothing, Int64} = nothing
    source::Union{Nothing, String} = nothing
    subscriber_type::Union{Nothing, String} = nothing
    tags::Union{Nothing, Vector{String}} = nothing
    utm_campaign::Union{Nothing, String} = nothing
    utm_medium::Union{Nothing, String} = nothing
    utm_source::Union{Nothing, String} = nothing

    function Subscriber(creation_date, email, id, metadata, notes, referrer_url, secondary_id, source, subscriber_type, tags, utm_campaign, utm_medium, utm_source, )
        OpenAPI.validate_property(Subscriber, Symbol("creation_date"), creation_date)
        OpenAPI.validate_property(Subscriber, Symbol("email"), email)
        OpenAPI.validate_property(Subscriber, Symbol("id"), id)
        OpenAPI.validate_property(Subscriber, Symbol("metadata"), metadata)
        OpenAPI.validate_property(Subscriber, Symbol("notes"), notes)
        OpenAPI.validate_property(Subscriber, Symbol("referrer_url"), referrer_url)
        OpenAPI.validate_property(Subscriber, Symbol("secondary_id"), secondary_id)
        OpenAPI.validate_property(Subscriber, Symbol("source"), source)
        OpenAPI.validate_property(Subscriber, Symbol("subscriber_type"), subscriber_type)
        OpenAPI.validate_property(Subscriber, Symbol("tags"), tags)
        OpenAPI.validate_property(Subscriber, Symbol("utm_campaign"), utm_campaign)
        OpenAPI.validate_property(Subscriber, Symbol("utm_medium"), utm_medium)
        OpenAPI.validate_property(Subscriber, Symbol("utm_source"), utm_source)
        return new(creation_date, email, id, metadata, notes, referrer_url, secondary_id, source, subscriber_type, tags, utm_campaign, utm_medium, utm_source, )
    end
end # type Subscriber

const _property_types_Subscriber = Dict{Symbol,String}(Symbol("creation_date")=>"ZonedDateTime", Symbol("email")=>"String", Symbol("id")=>"String", Symbol("metadata")=>"Any", Symbol("notes")=>"String", Symbol("referrer_url")=>"String", Symbol("secondary_id")=>"Int64", Symbol("source")=>"String", Symbol("subscriber_type")=>"String", Symbol("tags")=>"Vector{String}", Symbol("utm_campaign")=>"String", Symbol("utm_medium")=>"String", Symbol("utm_source")=>"String", )
OpenAPI.property_type(::Type{ Subscriber }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Subscriber[name]))}

function check_required(o::Subscriber)
    o.email === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Subscriber }, name::Symbol, val)
    if name === Symbol("creation_date")
        OpenAPI.validate_param(name, "Subscriber", :format, val, "date-time")
    end
    if name === Symbol("email")
        OpenAPI.validate_param(name, "Subscriber", :format, val, "email")
    end
    if name === Symbol("id")
        OpenAPI.validate_param(name, "Subscriber", :format, val, "uuid")
    end
    if name === Symbol("referrer_url")
        OpenAPI.validate_param(name, "Subscriber", :maxLength, val, 500)
    end
    if name === Symbol("source")
        OpenAPI.validate_param(name, "Subscriber", :enum, val, ["api", "buttondown", "csv", "mailchimp", "organic", "substack", "tinyletter", "typeform", "user", "drip"])
    end
    if name === Symbol("subscriber_type")
        OpenAPI.validate_param(name, "Subscriber", :enum, val, ["regular", "premium", "gifted", "unpaid", "unactivated", "unsubscribed", "spammy", "removed", "trialed", "disabled"])
    end
end
