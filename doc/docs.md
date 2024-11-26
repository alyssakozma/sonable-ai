# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [AggregateMessages.proto](#AggregateMessages-proto)
    - [AggregateRequest](#-AggregateRequest)
    - [ArticleData](#-ArticleData)
    - [DataSource](#-DataSource)
  
    - [DataSourceType](#-DataSourceType)
  
- [AggregateService.proto](#AggregateService-proto)
    - [AggregateService](#-AggregateService)
  
- [AIMessages.proto](#AIMessages-proto)
    - [GenerateEpisodeRequest](#-GenerateEpisodeRequest)
  
- [AIService.proto](#AIService-proto)
    - [AIService](#-AIService)
  
- [Base.proto](#Base-proto)
    - [Date](#-Date)
    - [Empty](#-Empty)
    - [Tag](#-Tag)
  
- [PodcastMessages.proto](#PodcastMessages-proto)
    - [ByteData](#-ByteData)
    - [CreateEpisodeRequest](#-CreateEpisodeRequest)
    - [CreatePodcastRequest](#-CreatePodcastRequest)
    - [ListEpisodesRequest](#-ListEpisodesRequest)
    - [ListPodcastsRequest](#-ListPodcastsRequest)
    - [Podcast](#-Podcast)
    - [PodcastEpisode](#-PodcastEpisode)
    - [PodcastHost](#-PodcastHost)
    - [StreamPodcastRequest](#-StreamPodcastRequest)
  
- [PodcastService.proto](#PodcastService-proto)
    - [PodcastService](#-PodcastService)
  
- [UserMessages.proto](#UserMessages-proto)
    - [LoginRequest](#-LoginRequest)
    - [LogoutRequest](#-LogoutRequest)
    - [User](#-User)
  
- [UserService.proto](#UserService-proto)
    - [UserService](#-UserService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="AggregateMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AggregateMessages.proto



<a name="-AggregateRequest"></a>

### AggregateRequest
Request object for an aggregate of processed articles related to the input Tags.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  | the user we are requesting content for |
| tags | [Tag](#Tag) | repeated | keywords, topics, etc |
| sources | [DataSource](#DataSource) | repeated | sources to pull from |
| ignoreSources | [DataSource](#DataSource) | repeated | sources to ignore |






<a name="-ArticleData"></a>

### ArticleData
Represents a particular &#34;article.&#34; This can be text, video, or audio.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for caching |
| source | [DataSource](#DataSource) |  | the source we pulled this from |
| url | [string](#string) |  | full URL to the article |
| title | [string](#string) |  | article title |
| content | [string](#string) |  | full body of content |
| tags | [Tag](#Tag) | repeated | keyword tags for searching during future podcast generation |
| processedText | [string](#string) | optional | processed text, ready to feed AI |
| date | [Date](#Date) |  | date article was posted |
| type | [DataSourceType](#DataSourceType) |  | TEXT, AUDIO, or VIDEO |






<a name="-DataSource"></a>

### DataSource
Represents a text, video, or audio source. (e.g. abc.com, bloomberg.com, twitter maybe in the future?)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | example: Bloomberg |
| baseUrl | [string](#string) |  | example: &#34;https://www.bloomberg.com/ |





 


<a name="-DataSourceType"></a>

### DataSourceType


| Name | Number | Description |
| ---- | ------ | ----------- |
| TEXT | 0 |  |
| VIDEO | 1 |  |
| AUDIO | 2 |  |


 

 

 



<a name="AggregateService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AggregateService.proto


 

 

 


<a name="-AggregateService"></a>

### AggregateService
Aggregate service handles ingestion and pre-processing of
article, video, and audio sources into AI-ready text. We also
store information about different sources and articles, and
apply weights to them here to curate our news.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| requestAggregate | [.AggregateRequest](#AggregateRequest) | [.ArticleData](#ArticleData) stream | Request for an aggregate of processed ArticleData. |

 



<a name="AIMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AIMessages.proto



<a name="-GenerateEpisodeRequest"></a>

### GenerateEpisodeRequest
Request object for generating a podcast episode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| podcastId | [int32](#int32) |  | (get data on hosts and stuff from this) |
| data | [ArticleData](#ArticleData) | repeated | pre-processed articles to ingest |





 

 

 

 



<a name="AIService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## AIService.proto


 

 

 


<a name="-AIService"></a>

### AIService
AI service handles generative text and audio, assembling them into a
stream to be read by the service consumer.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| generatePodcast | [.GenerateEpisodeRequest](#GenerateEpisodeRequest) | [.ByteData](#ByteData) stream | Request to generate an episode. Returns raw audio data. |

 



<a name="Base-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## Base.proto



<a name="-Date"></a>

### Date
A basic Date object from Google, because it isn&#39;t included in proto3.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| year | [int32](#int32) |  | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |
| month | [int32](#int32) |  | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| day | [int32](#int32) |  | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. |






<a name="-Empty"></a>

### Empty
It&#39;s quiet... Too quiet...






<a name="-Tag"></a>

### Tag
A basic tag object we intend to reuse for host traits, topic tags, and more.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | text |





 

 

 

 



<a name="PodcastMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## PodcastMessages.proto



<a name="-ByteData"></a>

### ByteData
Used to stream audio data.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) |  | nom nom |






<a name="-CreateEpisodeRequest"></a>

### CreateEpisodeRequest
Request object, used to request the generation of a new episode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  | requesting user |
| podcastId | [int32](#int32) |  |  |






<a name="-CreatePodcastRequest"></a>

### CreatePodcastRequest
Request object, used to create a new podcast.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  |  |
| podcast | [Podcast](#Podcast) |  |  |






<a name="-ListEpisodesRequest"></a>

### ListEpisodesRequest
Request object, used to request a list of a particular podcast&#39;s episodes.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  | requesting user |
| podcastId | [int32](#int32) |  |  |






<a name="-ListPodcastsRequest"></a>

### ListPodcastsRequest
Request object, used to request a list of a user&#39;s podcasts.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userId | [int32](#int32) |  |  |






<a name="-Podcast"></a>

### Podcast
Holds higher level information about the podcast. Topics discussed, hosts, etc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | either generated or user defined |
| topics | [Tag](#Tag) | repeated | topics discussed |
| hosts | [PodcastHost](#PodcastHost) | repeated | the hosts that will discuss |






<a name="-PodcastEpisode"></a>

### PodcastEpisode
A particular episode of a podcast.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  | either generated or user defined |
| date | [Date](#Date) |  | date of generation |
| summary | [string](#string) |  | summary of what is discussed in this episode |






<a name="-PodcastHost"></a>

### PodcastHost
Contains lots of data that will be used to personalize the voice and personalities of each host.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | for db storage |
| name | [string](#string) |  |  |
| gender | [string](#string) |  | describe your gender (or select it from some presets) |
| voiceTags | [Tag](#Tag) | repeated | tags that affect speech characteristics |
| personalityTags | [Tag](#Tag) | repeated | tags that affect the personality of the host |






<a name="-StreamPodcastRequest"></a>

### StreamPodcastRequest
Request object, used to request a new stream for a particular podcast episode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| podcastId | [int32](#int32) |  |  |
| episodeId | [int32](#int32) |  |  |





 

 

 

 



<a name="PodcastService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## PodcastService.proto


 

 

 


<a name="-PodcastService"></a>

### PodcastService
Podcast Service handles and stores podcasts.

In order to generate a new podcast, it requests data from 
the Aggregate service and sends it to the AI service. Then,
Podcast service stores it &#43; some metadata and returns to
user.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetPodcastList | [.ListPodcastsRequest](#ListPodcastsRequest) | [.Podcast](#Podcast) stream | Request a list of podcasts for a particular user. |
| GetPodcastEpisodeList | [.ListEpisodesRequest](#ListEpisodesRequest) | [.PodcastEpisode](#PodcastEpisode) stream | Request a list of episodes for a particular podcast. |
| StreamPodcast | [.StreamPodcastRequest](#StreamPodcastRequest) | [.ByteData](#ByteData) stream | Begin streaming a podcast episode. |
| NewPodcast | [.CreatePodcastRequest](#CreatePodcastRequest) | [.Podcast](#Podcast) | Create a new podcast. |
| NewEpisode | [.CreateEpisodeRequest](#CreateEpisodeRequest) | [.PodcastEpisode](#PodcastEpisode) | Create a new episode. |
| EditPodcast | [.Podcast](#Podcast) | [.Podcast](#Podcast) | Edit podcast parameters. |
| DeletePodcast | [.Podcast](#Podcast) | [.Empty](#Empty) | Delete a podcast. |

 



<a name="UserMessages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## UserMessages.proto



<a name="-LoginRequest"></a>

### LoginRequest
Login


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| password | [string](#string) |  |  |






<a name="-LogoutRequest"></a>

### LogoutRequest
Logout


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |






<a name="-User"></a>

### User
TODO: flesh this out


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| email | [string](#string) |  |  |





 

 

 

 



<a name="UserService-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## UserService.proto


 

 

 


<a name="-UserService"></a>

### UserService
Users Service handles auth and user data changes.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| RegisterUser | [.User](#User) | [.User](#User) |  |
| LoginUser | [.LoginRequest](#LoginRequest) | [.User](#User) |  |
| LogoutUser | [.LogoutRequest](#LogoutRequest) | [.Empty](#Empty) |  |

 



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

