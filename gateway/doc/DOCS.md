# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [Base.proto](#Base-proto)
    - [Date](#generated-Date)
    - [Empty](#generated-Empty)
    - [Tag](#generated-Tag)
  
- [AggregateMessages.proto](#AggregateMessages-proto)
    - [AggregateRequest](#generated-AggregateRequest)
    - [ArticleData](#generated-ArticleData)
    - [DataSource](#generated-DataSource)
  
    - [DataSourceType](#generated-DataSourceType)
  
- [AIMessages.proto](#AIMessages-proto)
    - [GenerateEpisodeRequest](#generated-GenerateEpisodeRequest)
  
- [PodcastMessages.proto](#PodcastMessages-proto)
    - [ByteData](#generated-ByteData)
    - [CreateEpisodeRequest](#generated-CreateEpisodeRequest)
    - [CreatePodcastRequest](#generated-CreatePodcastRequest)
    - [ListEpisodesRequest](#generated-ListEpisodesRequest)
    - [ListPodcastsRequest](#generated-ListPodcastsRequest)
    - [Podcast](#generated-Podcast)
    - [PodcastEpisode](#generated-PodcastEpisode)
    - [PodcastHost](#generated-PodcastHost)
    - [PodcastServiceHealthResponse](#generated-PodcastServiceHealthResponse)
    - [StreamPodcastRequest](#generated-StreamPodcastRequest)
  
- [AIService.proto](#AIService-proto)
    - [AIService](#generated-AIService)
  
- [AggregateService.proto](#AggregateService-proto)
    - [AggregateService](#generated-AggregateService)
  
- [PodcastService.proto](#PodcastService-proto)
    - [PodcastService](#generated-PodcastService)
  
- [UserMessages.proto](#UserMessages-proto)
    - [LoginRequest](#generated-LoginRequest)
    - [LogoutRequest](#generated-LogoutRequest)
    - [User](#generated-User)
  
- [UserService.proto](#UserService-proto)
    - [UserService](#generated-UserService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="Base-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## Base.proto



<a name="generated-Date"></a>

### Date
A basic Date object from Google, because it isn&#39;t included in proto3.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| year | [int32](#int32) |  | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| month | [int32](#int32) |  | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| day | [int32](#int32) |  | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. |






<a name="generated-Empty"></a>

### Empty
It&#39;s quiet... Too quiet...






<a name="generated-Tag"></a>

### Tag
A basic tag object we intend to reuse for host traits, topic tags, and more.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | text |





 

 

 

 



<a name="AggregateMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AggregateMessages.proto



<a name="generated-AggregateRequest"></a>

### AggregateRequest
Request object for an aggregate of processed articles related to the input Tags.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  | the user we are requesting content for |
| tags | [Tag](#generated-Tag) | repeated | keywords, topics, etc |
| sources | [DataSource](#generated-DataSource) | repeated | sources to pull from |
| ignoreSources | [DataSource](#generated-DataSource) | repeated | sources to ignore |






<a name="generated-ArticleData"></a>

### ArticleData
Represents a particular &#34;article.&#34; This can be text, video, or audio.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for caching |
| source | [DataSource](#generated-DataSource) |  | the source we pulled this from |
| url | [string](#string) |  | full URL to the article |
| title | [string](#string) |  | article title |
| content | [string](#string) |  | full body of content |
| tags | [Tag](#generated-Tag) | repeated | keyword tags for searching during future podcast generation |
| processedText | [string](#string) | optional | processed text, ready to feed AI |
| date | [Date](#generated-Date) |  | date article was posted |
| type | [DataSourceType](#generated-DataSourceType) |  | TEXT, AUDIO, or VIDEO |






<a name="generated-DataSource"></a>

### DataSource
Represents a text, video, or audio source. (e.g. abc.com, bloomberg.com, twitter maybe in the future?)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | example: Bloomberg |
| baseUrl | [string](#string) |  | example: &#34;https://www.bloomberg.com/ |





 


<a name="generated-DataSourceType"></a>

### DataSourceType


| Name | Number | Description |
| ---- | ------ | ----------- |
| TEXT | 0 |  |
| VIDEO | 1 |  |
| AUDIO | 2 |  |


 

 

 



<a name="AIMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AIMessages.proto



<a name="generated-GenerateEpisodeRequest"></a>

### GenerateEpisodeRequest
Request object for generating a podcast episode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| podcastId | [int32](#int32) |  | (get data on hosts and stuff from this) |
| data | [ArticleData](#generated-ArticleData) | repeated | pre-processed articles to ingest |





 

 

 

 



<a name="PodcastMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## PodcastMessages.proto



<a name="generated-ByteData"></a>

### ByteData
Used to stream audio data.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | nom nom |






<a name="generated-CreateEpisodeRequest"></a>

### CreateEpisodeRequest
Request object, used to request the generation of a new episode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  | requesting user |
| podcastId | [int32](#int32) |  |  |






<a name="generated-CreatePodcastRequest"></a>

### CreatePodcastRequest
Request object, used to create a new podcast.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  |  |
| podcast | [Podcast](#generated-Podcast) |  |  |






<a name="generated-ListEpisodesRequest"></a>

### ListEpisodesRequest
Request object, used to request a list of a particular podcast&#39;s episodes.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  | requesting user |
| podcastId | [int32](#int32) |  |  |






<a name="generated-ListPodcastsRequest"></a>

### ListPodcastsRequest
Request object, used to request a list of a user&#39;s podcasts.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  |  |






<a name="generated-Podcast"></a>

### Podcast
Holds higher level information about the podcast. Topics discussed, hosts, etc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | either generated or user defined |
| topics | [Tag](#generated-Tag) | repeated | topics discussed |
| hosts | [PodcastHost](#generated-PodcastHost) | repeated | the hosts that will discuss |






<a name="generated-PodcastEpisode"></a>

### PodcastEpisode
A particular episode of a podcast.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | either generated or user defined |
| date | [Date](#generated-Date) |  | date of generation |
| summary | [string](#string) |  | summary of what is discussed in this episode |






<a name="generated-PodcastHost"></a>

### PodcastHost
Contains lots of data that will be used to personalize the voice and personalities of each host.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  |  |
| gender | [string](#string) |  | describe your gender (or select it from some presets) |
| voiceTags | [Tag](#generated-Tag) | repeated | tags that affect speech characteristics |
| personalityTags | [Tag](#generated-Tag) | repeated | tags that affect the personality of the host |






<a name="generated-PodcastServiceHealthResponse"></a>

### PodcastServiceHealthResponse
Health response object.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [int32](#int32) |  |  |






<a name="generated-StreamPodcastRequest"></a>

### StreamPodcastRequest
Request object, used to request a new stream for a particular podcast episode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| podcastId | [int32](#int32) |  |  |
| episodeId | [int32](#int32) |  |  |





 

 

 

 



<a name="AIService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AIService.proto


 

 

 


<a name="generated-AIService"></a>

### AIService
AI service handles generative text and audio, assembling them into a
stream to be read by the service consumer.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| generatePodcast | [GenerateEpisodeRequest](#generated-GenerateEpisodeRequest) | [ByteData](#generated-ByteData) stream | Request to generate an episode. Returns raw audio data. |

 



<a name="AggregateService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AggregateService.proto


 

 

 


<a name="generated-AggregateService"></a>

### AggregateService

Aggregate service handles ingestion and pre-processing of
article, video, and audio sources into AI-ready text. We also
store information about different sources and articles, and
apply weights to them here to curate our news.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| requestAggregate | [AggregateRequest](#generated-AggregateRequest) | [ArticleData](#generated-ArticleData) stream | Request for an aggregate of processed ArticleData. |

 



<a name="PodcastService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## PodcastService.proto


 

 

 


<a name="generated-PodcastService"></a>

### PodcastService
Podcast Service handles and stores podcasts.

In order to generate a new podcast, it requests data from 
the Aggregate service and sends it to the AI service. Then,
Podcast service stores it &#43; some metadata and returns to
user.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetPodcastList | [ListPodcastsRequest](#generated-ListPodcastsRequest) | [Podcast](#generated-Podcast) stream | Request a list of podcasts for a particular user. |
| GetPodcastEpisodeList | [ListEpisodesRequest](#generated-ListEpisodesRequest) | [PodcastEpisode](#generated-PodcastEpisode) stream | Request a list of episodes for a particular podcast. |
| StreamPodcast | [StreamPodcastRequest](#generated-StreamPodcastRequest) | [ByteData](#generated-ByteData) stream | Begin streaming a podcast episode. |
| NewPodcast | [CreatePodcastRequest](#generated-CreatePodcastRequest) | [Podcast](#generated-Podcast) | Create a new podcast. |
| NewEpisode | [CreateEpisodeRequest](#generated-CreateEpisodeRequest) | [PodcastEpisode](#generated-PodcastEpisode) | Create a new episode. |
| EditPodcast | [Podcast](#generated-Podcast) | [Podcast](#generated-Podcast) | Edit podcast parameters. |
| DeletePodcast | [Podcast](#generated-Podcast) | [Empty](#generated-Empty) | Delete a podcast. |
| HealthCheck | [Empty](#generated-Empty) | [PodcastServiceHealthResponse](#generated-PodcastServiceHealthResponse) | Health check. |

 



<a name="UserMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## UserMessages.proto



<a name="generated-LoginRequest"></a>

### LoginRequest
Login


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| password | [string](#string) |  |  |






<a name="generated-LogoutRequest"></a>

### LogoutRequest
Logout


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |






<a name="generated-User"></a>

### User
TODO: flesh this out


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| email | [string](#string) |  |  |





 

 

 

 



<a name="UserService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## UserService.proto


 

 

 


<a name="generated-UserService"></a>

### UserService
Users Service handles auth and user data changes.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| RegisterUser | [User](#generated-User) | [User](#generated-User) |  |
| LoginUser | [LoginRequest](#generated-LoginRequest) | [User](#generated-User) |  |
| LogoutUser | [LogoutRequest](#generated-LogoutRequest) | [Empty](#generated-Empty) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

