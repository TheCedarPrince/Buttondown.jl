using HTTP
using JSON3

"""
    create_newsletter(username::String, name::String, description::String;
                       tint_color::String = "#0069FF", from_name::String = "",
                       header::String = "", footer::String = "",
                       domain::String = "", email_domain::String = "",
                       should_remove_branding::Bool = false,
                       custom_email_template::String = "")

Sends a POST request to the Buttondown API to create a new newsletter.

# Arguments 

- `username`: The username associated with the newsletter.
- `name`: The name of the newsletter.
- `description`: The description of the newsletter.

# Keyword Arguments

- `tint_color`: The tint color of the newsletter (optional, default: "#0069FF").
- `from_name`: The "from" name for the newsletter (optional, default: "").
- `header`: The header content for the newsletter (optional, default: "").
- `footer`: The footer content for the newsletter (optional, default: "").
- `domain`: The domain associated with the newsletter (optional, default: "").
- `email_domain`: The email domain associated with the newsletter (optional, default: "").
- `should_remove_branding`: A boolean indicating whether to remove branding from the newsletter (optional, default: false).
- `custom_email_template`: The custom email template for the newsletter (optional, default: "").

# Returns

- The response from the Buttondown API as an `HTTP.Response` object.

# Example

"""
function create_newsletter(username::String, name::String, description::String;
                           tint_color::String = "#0069FF", from_name::String = "",
                           header::String = "", footer::String = "",
                           domain::String = "", email_domain::String = "",
                           should_remove_branding::Bool = false,
                           custom_email_template::String = "")
    url = "https://api.buttondown.email/v1/newsletters"
    headers = Dict("Authorization" => "Token YOUR_API_TOKEN")
    
    payload = Dict("username" => username, "name" => name, "description" => description,
                   "tint_color" => tint_color, "from_name" => from_name,
                   "header" => header, "footer" => footer,
                   "domain" => domain, "email_domain" => email_domain,
                   "should_remove_branding" => should_remove_branding,
                   "custom_email_template" => custom_email_template)
    
    response = HTTP.request("POST", url, headers, JSON.json(payload))
    
    if HTTP.isclienterror(response.status)
        error("Error occurred: $(response.status)")
    end
    
    return response
end

"""
    create_email(subject::String; included_tags::Array{String}, excluded_tags::Array{String},
                 attachments::Array{String}, publish_date::String,
                 slug::String, description::String = "", canonical_url::String = "",
                 image::String = "", body::String = "", email_type::String = "public",
                 status::String = "about_to_send", metadata::Dict = Dict(),
                 should_send_teaser::Bool = false, custom_teaser::String = "",
                 filters::Array{Dict} = [])

Sends a POST request to the Buttondown API to create a new email.

# Arguments

- `subject`: The subject of the email.

# Keyword Arguments

- `included_tags`: An array of tags to include in the email.
- `excluded_tags`: An array of tags to exclude from the email.
- `attachments`: An array of attachments for the email.
- `publish_date`: The publish date of the email in the format "YYYY-MM-DDTHH:MM:SSZ".
- `slug`: The slug of the email.
- `description`: The description of the email (optional, default: "").
- `canonical_url`: The canonical URL associated with the email (optional, default: "").
- `image`: The URL of the image associated with the email (optional, default: "").
- `body`: The body content of the email, can be either HTML or Markdown (optional, default: "").
- `email_type`: The type of email (optional, default: "public").
- `status`: The status of the email (optional, default: "about_to_send").
- `metadata`: Additional metadata for the email as a dictionary (optional, default: empty dictionary).
- `should_send_teaser`: A boolean indicating whether to send a teaser for the email (optional, default: false).
- `custom_teaser`: The custom teaser content for the email (optional, default: "").
- `filters`: An array of filters for the email (optional, default: empty array).

# Returns

- The response from the Buttondown API as an `HTTP.Response` object.
"""
function create_email(subject::String; included_tags::Array{String}, excluded_tags::Array{String},
                      attachments::Array{String}, publish_date::String,
                      slug::String, description::String = "", canonical_url::String = "",
                      image::String = "", body::String = "", email_type::String = "public",
                      status::String = "about_to_send", metadata::Dict = Dict(),
                      should_send_teaser::Bool = false, custom_teaser::String = "",
                      filters::Array{Dict} = [])
    url = "https://api.buttondown.email/v1/emails"
    headers = Dict("Authorization" => "Token YOUR_API_TOKEN")
    
    payload = Dict("included_tags" => included_tags, "excluded_tags" => excluded_tags,
                   "attachments" => attachments, "publish_date" => publish_date,
                   "subject" => subject, "slug" => slug, "description" => description,
                   "canonical_url" => canonical_url, "image" => image, "body" => body,
                   "email_type" => email_type, "status" => status, "metadata" => metadata,
                   "should_send_teaser" => should_send_teaser, "custom_teaser" => custom_teaser,
                   "filters" => filters)
    
    response = HTTP.request("POST", url, headers, JSON.json(payload))
    
    if HTTP.isclienterror(response.status)
        error("Error occurred: $(response.status)")
    end
    
    return response
end


