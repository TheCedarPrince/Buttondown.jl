# Julia API client for APIClient

# Introduction

Hello and welcome to Buttondown's API schema!

I've designed Buttondown's API to be as RESTful and uninteresting as possible: if there's a primitive in
Buttondown, you should have a nice interface for it, with the ability to retrieve,
create, modify, and delete. This means that with a few lines in your language
of choice, you're able to programmatically keep track of your subscribers, send
out new emails, and more.

If you're confused about what Buttondown is, try
going to [buttondown.email](https://buttondown.email).

If you're looking
for where to find your API Key, check your [settings page](https://buttondown.email/settings).

# Authentication

Clients should authenticate by passing the token key in the \\\"Authorization\\\"
HTTP header, prepended with the string \\\"Token \\\".  For example:

```
Authorization: Token 401f7ac837da42b97f613d789819ff93537bee6a
```

You can find your API key in your <a href='https://buttondown.email/settings'>Settings page</a>.

# Events

Events are Buttondown's way of telling you (likely via Webhooks) that something interesting has happened
to your newsletter. You can view a table of all events [here](https://www.notion.so/buttondown/b657ff246c884b6e82327449a114ea4e?v=1d857c36b82f452ea28afdf7844eea49&p=d8244ac6aaa242038d17a01a4584f184).

# Changelog

The changelog provides a list of dated updates, each of which contains a number
of potentially backwards-incompatible changes. There is no explicit versioning in the
API at this time; all changes will be either compatible or breaking. (If I attempt any
brittle changes to the API that may break current implementations, I'll be sure to add
version gates.)

## 2022-11-19

Removed the `/v1/drafts`, `/v1/scheduled-emails`, and `/v1/unsubscribers` endpoints. The behavior of all three endpoints have been subsumed into `/v1/emails` and `/v1/subscribers`:

-   you can create (or list) drafts by specifying `status='draft'`
-   you can create (or list) scheduled emails by specifying `status='scheduled'`
-   you can list unsubscribers by specifying `subscriber_type='unsubscribed'`

## 2021-01-02

Added support to set and retrieve metadata on Emails.

## 2020-12-23

Added deletion and update abilities to the [Scheduled emails endpoint](#tag/Scheduled-emails), giving you much
more programmability than the hitherto append-only state of the world.

## 2020-12-09

Added a deletion endpoint to the [Images endpoint](#tag/Images), allowing you to delete unused images.



## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.JuliaClientCodegen


## Installation
Place the Julia files generated under the `src` folder in your Julia project. Include APIClient.jl in the project code.
It would include the module named APIClient.

Documentation is generated as markdown files under the `docs` folder. You can include them in your project documentation.
Documentation is also embedded in Julia which can be used with a Julia specific documentation generator.

## API Endpoints

Class | Method
------------ | -------------
*DraftsApi* | [**create_a_new_draft**](docs/DraftsApi.md#create_a_new_draft)<br/>**POST** /v1/drafts<br/>
*DraftsApi* | [**list_all_drafts**](docs/DraftsApi.md#list_all_drafts)<br/>**GET** /v1/drafts<br/>
*DraftsApi* | [**retrieve_an_existing_draft**](docs/DraftsApi.md#retrieve_an_existing_draft)<br/>**GET** /v1/drafts/{id}<br/>
*EmailsApi* | [**create_a_new_email**](docs/EmailsApi.md#create_a_new_email)<br/>**POST** /v1/emails<br/>
*EmailsApi* | [**list_all_emails**](docs/EmailsApi.md#list_all_emails)<br/>**GET** /v1/emails<br/>
*EmailsApi* | [**retrieve_an_existing_email**](docs/EmailsApi.md#retrieve_an_existing_email)<br/>**GET** /v1/emails/{id}<br/>
*ImagesApi* | [**delete_an_uploaded_image**](docs/ImagesApi.md#delete_an_uploaded_image)<br/>**DELETE** /v1/images/{id}<br/>
*ImagesApi* | [**list_all_uploaded_images**](docs/ImagesApi.md#list_all_uploaded_images)<br/>**GET** /v1/images<br/>
*ImagesApi* | [**retrieve_an_uploaded_image**](docs/ImagesApi.md#retrieve_an_uploaded_image)<br/>**GET** /v1/images/{id}<br/>
*ImagesApi* | [**upload_a_new_image**](docs/ImagesApi.md#upload_a_new_image)<br/>**POST** /v1/images<br/>
*MiscellanyApi* | [**ping**](docs/MiscellanyApi.md#ping)<br/>**GET** /v1/ping<br/>
*NewslettersApi* | [**create_a_newsletter**](docs/NewslettersApi.md#create_a_newsletter)<br/>**POST** /v1/newsletters<br/>
*NewslettersApi* | [**delete_a_newsletter**](docs/NewslettersApi.md#delete_a_newsletter)<br/>**DELETE** /v1/newsletters/{id}<br/>
*NewslettersApi* | [**list_all_newsletters**](docs/NewslettersApi.md#list_all_newsletters)<br/>**GET** /v1/newsletters<br/>
*NewslettersApi* | [**partially_update_an_existing_newsletter**](docs/NewslettersApi.md#partially_update_an_existing_newsletter)<br/>**PATCH** /v1/newsletters/{id}<br/>
*NewslettersApi* | [**retrieve_an_existing_newsletter**](docs/NewslettersApi.md#retrieve_an_existing_newsletter)<br/>**GET** /v1/newsletters/{id}<br/>
*NewslettersApi* | [**update_an_existing_newsletter**](docs/NewslettersApi.md#update_an_existing_newsletter)<br/>**PUT** /v1/newsletters/{id}<br/>
*ScheduledEmailsApi* | [**delete_a_scheduled_email**](docs/ScheduledEmailsApi.md#delete_a_scheduled_email)<br/>**DELETE** /v1/scheduled-emails/{id}<br/>
*ScheduledEmailsApi* | [**list_all_scheduled_emails**](docs/ScheduledEmailsApi.md#list_all_scheduled_emails)<br/>**GET** /v1/scheduled-emails<br/>
*ScheduledEmailsApi* | [**retrieve_an_existing_scheduled_email**](docs/ScheduledEmailsApi.md#retrieve_an_existing_scheduled_email)<br/>**GET** /v1/scheduled-emails/{id}<br/>
*ScheduledEmailsApi* | [**schedule_a_new_email**](docs/ScheduledEmailsApi.md#schedule_a_new_email)<br/>**POST** /v1/scheduled-emails<br/>
*ScheduledEmailsApi* | [**update_a_scheduled_email**](docs/ScheduledEmailsApi.md#update_a_scheduled_email)<br/>**PATCH** /v1/scheduled-emails/{id}<br/>
*SubscribersApi* | [**create_a_new_subscriber**](docs/SubscribersApi.md#create_a_new_subscriber)<br/>**POST** /v1/subscribers<br/>
*SubscribersApi* | [**delete_a_subscriber**](docs/SubscribersApi.md#delete_a_subscriber)<br/>**DELETE** /v1/subscribers/{id}<br/>
*SubscribersApi* | [**list_all_subscribers**](docs/SubscribersApi.md#list_all_subscribers)<br/>**GET** /v1/subscribers<br/>
*SubscribersApi* | [**partially_update_an_existing_subscriber**](docs/SubscribersApi.md#partially_update_an_existing_subscriber)<br/>**PATCH** /v1/subscribers/{id}<br/>
*SubscribersApi* | [**retrieve_an_existing_subscriber**](docs/SubscribersApi.md#retrieve_an_existing_subscriber)<br/>**GET** /v1/subscribers/{id}<br/>
*SubscribersApi* | [**send_an_email_to_an_active_subscriber**](docs/SubscribersApi.md#send_an_email_to_an_active_subscriber)<br/>**POST** /v1/subscribers/{id}/emails/{email_id}<br/>
*SubscribersApi* | [**update_an_existing_subscriber**](docs/SubscribersApi.md#update_an_existing_subscriber)<br/>**PUT** /v1/subscribers/{id}<br/>
*TagsApi* | [**create_a_new_tag**](docs/TagsApi.md#create_a_new_tag)<br/>**POST** /v1/tags<br/>
*TagsApi* | [**delete_a_tag**](docs/TagsApi.md#delete_a_tag)<br/>**DELETE** /v1/tags/{id}<br/>
*TagsApi* | [**list_all_tags**](docs/TagsApi.md#list_all_tags)<br/>**GET** /v1/tags<br/>
*TagsApi* | [**partially_update_an_existing_tag**](docs/TagsApi.md#partially_update_an_existing_tag)<br/>**PATCH** /v1/tags/{id}<br/>
*TagsApi* | [**retrieve_an_existing_tag**](docs/TagsApi.md#retrieve_an_existing_tag)<br/>**GET** /v1/tags/{id}<br/>
*TagsApi* | [**update_an_existing_tag**](docs/TagsApi.md#update_an_existing_tag)<br/>**PUT** /v1/tags/{id}<br/>
*UnsubscribersApi* | [**list_unsubscribers**](docs/UnsubscribersApi.md#list_unsubscribers)<br/>**GET** /v1/unsubscribers<br/>
*UnsubscribersApi* | [**retrieve_a_specific_unsubscriber**](docs/UnsubscribersApi.md#retrieve_a_specific_unsubscriber)<br/>**GET** /v1/unsubscribers/{id}<br/>


## Models

 - [Draft](docs/Draft.md)
 - [Email](docs/Email.md)
 - [ListAllDrafts200Response](docs/ListAllDrafts200Response.md)
 - [ListAllEmails200Response](docs/ListAllEmails200Response.md)
 - [ListAllNewsletters200Response](docs/ListAllNewsletters200Response.md)
 - [ListAllScheduledEmails200Response](docs/ListAllScheduledEmails200Response.md)
 - [ListAllSubscribers200Response](docs/ListAllSubscribers200Response.md)
 - [ListAllTags200Response](docs/ListAllTags200Response.md)
 - [ListAllUploadedImages200Response](docs/ListAllUploadedImages200Response.md)
 - [ListUnsubscribers200Response](docs/ListUnsubscribers200Response.md)
 - [Newsletter](docs/Newsletter.md)
 - [ScheduledEmail](docs/ScheduledEmail.md)
 - [Subscriber](docs/Subscriber.md)
 - [SubscriberTag](docs/SubscriberTag.md)
 - [UploadedImage](docs/UploadedImage.md)


<a id="authorization"></a>
## Authorization
Endpoints do not require authorization.


## Author


