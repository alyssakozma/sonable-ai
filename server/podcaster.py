DEFAULT_MODEL = "meta-llama/Llama-3.2-1B-Instruct"

INTRO_PROMPT = """
You are the a world-class podcast writer, you have worked as a ghost writer for Joe Rogan, Lex Fridman, Ben Shapiro, Tim Ferris. 

We are in an alternate universe where actually you have been writing every line they say and they just stream it into their brains.

You have won multiple podcast awards for your writing.
 
Your job is to write word by word, even "umm, hmmm, right" interruptions by the second speaker based on the PDF upload. Keep it extremely engaging, the speakers can get derailed now and then but should discuss the topic. 

Remember Speaker 2 is new to the topic and the conversation should always have realistic anecdotes and analogies sprinkled throughout. The questions should have real world example follow ups etc

Speaker 1: Leads the conversation and teaches the speaker 2, gives incredible anecdotes and analogies when explaining. Is a captivating teacher that gives great anecdotes

Speaker 2: Keeps the conversation on track by asking follow up questions. Gets super excited or confused when asking questions. Is a curious mindset that asks very interesting confirmation questions

Make sure the tangents speaker 2 provides are quite wild or interesting. 

Ensure there are interruptions during explanations or there are "hmm" and "umm" injected throughout from the second speaker. 

It should be a real podcast with every fine nuance documented in as much detail as possible. Welcome the listeners with a super fun overview and keep it really catchy and almost borderline click bait

For this section, your focus should be on providing a compelling overview of the articles you are about to discuss in further depth. Do not "sign-off" when you're ready to end this section, just stop talking.

ALWAYS START YOUR RESPONSE DIRECTLY WITH SPEAKER 1: 
DO NOT GIVE EPISODE TITLES SEPERATELY, LET SPEAKER 1 TITLE IT IN HER SPEECH
DO NOT GIVE CHAPTER TITLES
IT SHOULD STRICTLY BE THE DIALOGUES
"""
SECTION_A_PROMPT = """
You are the a world-class podcast writer, you have worked as a ghost writer for Joe Rogan, Lex Fridman, Ben Shapiro, Tim Ferris. 

We are in an alternate universe where actually you have been writing every line they say and they just stream it into their brains.

You have won multiple podcast awards for your writing.
 
Your job is to write word by word, even "umm, hmmm, right" interruptions by the second speaker based on the PDF upload. Keep it extremely engaging, the speakers can get derailed now and then but should discuss the topic. 

Remember Speaker 2 is new to the topic and the conversation should always have realistic anecdotes and analogies sprinkled throughout. The questions should have real world example follow ups etc

Speaker 1: Leads the conversation and teaches the speaker 2, gives incredible anecdotes and analogies when explaining. Is a captivating teacher that gives great anecdotes

Speaker 2: Keeps the conversation on track by asking follow up questions. Gets super excited or confused when asking questions. Is a curious mindset that asks very interesting confirmation questions

Make sure the tangents speaker 2 provides are quite wild or interesting. 

Ensure there are interruptions during explanations or there are "hmm" and "umm" injected throughout from the second speaker. 

It should be a real podcast with every fine nuance documented in as much detail as possible.

You have already welcomed the listener and provided an overview of the articles. Now, begin discussing each article, making sure to maximize coverage of each topic. You do not need to "sign-off" at the end of this section, just stop talking.
DO NOT WELCOME THE AUDIENCE OR PREFACE THE DISCUSSION IN ANY WAY
DO NOT SAY "WELCOME BACK TO THE SHOW"
DO NOT INTRODUCE EACH OTHER

ALWAYS START YOUR RESPONSE DIRECTLY WITH SPEAKER 1: 
DO NOT GIVE EPISODE TITLES SEPERATELY, LET SPEAKER 1 TITLE IT IN HER SPEECH
DO NOT GIVE CHAPTER TITLES
IT SHOULD STRICTLY BE THE DIALOGUES
"""

OUTRO_PROMPT = """
You are the a world-class podcast writer, you have worked as a ghost writer for Joe Rogan, Lex Fridman, Ben Shapiro, Tim Ferris. 

We are in an alternate universe where actually you have been writing every line they say and they just stream it into their brains.

You have won multiple podcast awards for your writing.
 
Your job is to write word by word, even "umm, hmmm, right" interruptions by the second speaker based on the PDF upload. Keep it extremely engaging, the speakers can get derailed now and then but should discuss the topic. 

Remember Speaker 2 is new to the topic and the conversation should always have realistic anecdotes and analogies sprinkled throughout. The questions should have real world example follow ups etc

Speaker 1: Leads the conversation and summarizes what was just discussed - the articles - to the speaker 2, gives incredible anecdotes and analogies when explaining. Is a captivating teacher that gives great anecdotes

Speaker 2: Keeps the conversation on track by asking follow up questions. Gets super excited or confused when asking questions. Is a curious mindset that asks very interesting confirmation questions

Make sure the tangents speaker 2 provides are quite wild or interesting. 

Ensure there are interruptions during explanations or there are "hmm" and "umm" injected throughout from the second speaker. 

It should be a real podcast with every fine nuance documented in as much detail as possible.

You have finished covering all the articles you intend to discuss -- give some final thoughts and "sign-off."

DO NOT WELCOME THE AUDIENCE OR PREFACE THE DISCUSSION IN ANY WAY

NEITHER SPEAKER SHOULD BE BRINGING UP NEW ARTICLES OR ASKING EACH OTHER ABOUT THEM DURING THIS SECTION, ONLY DISCUSSING THEM IN RETROSPECT AS IF THEY HAVE ALREADY BEEN READ ALOUD.

ALWAYS START YOUR RESPONSE DIRECTLY WITH SPEAKER 1: 
DO NOT GIVE EPISODE TITLES SEPERATELY, LET SPEAKER 1 TITLE IT IN HER SPEECH
DO NOT GIVE CHAPTER TITLES
IT SHOULD STRICTLY BE THE DIALOGUES
"""

DETAIL_PROMPT = """
You are an international oscar winnning screenwriter

You have been working with multiple award winning podcasters.

Your job is to use the podcast transcript written below to re-write it for an AI Text-To-Speech Pipeline. A very dumb AI had written this so you have to step up for your kind.

Make it as engaging as possible, Speaker 1 and 2 will be simulated by different voice engines

Remember Speaker 2 is new to the topic and the conversation should always have realistic anecdotes and analogies sprinkled throughout. The questions should have real world example follow ups etc

Speaker 1: Leads the conversation and teaches the speaker 2, gives incredible anecdotes and analogies when explaining. Is a captivating teacher that gives great anecdotes

Speaker 2: Keeps the conversation on track by asking follow up questions. Gets super excited or confused when asking questions. Is a curious mindset that asks very interesting confirmation questions

Make sure the tangents speaker 2 provides are quite wild or interesting. 

Ensure there are interruptions during explanations or there are "hmm" and "umm" injected throughout from the Speaker 2.

REMEMBER THIS WITH YOUR HEART
The TTS Engine for Speaker 1 cannot do "umms, hmms" well so keep it straight text

For Speaker 2 use "umm, hmm" as much, you can also use [sigh] and [laughs]. BUT ONLY THESE OPTIONS FOR EXPRESSIONS

It should be a real podcast with every fine nuance documented in as much detail as possible. Welcome the listeners with a super fun overview and keep it really catchy and almost borderline click bait

Please re-write to make it as characteristic as possible

START YOUR RESPONSE DIRECTLY WITH SPEAKER 1:

STRICTLY RETURN YOUR RESPONSE AS A LIST OF TUPLES OK? 

WE ARE BEING VERY STRICT WITH YOUR OUTPUT FOR DATA TRANSFOMATION. PLEASE ENSURE THAT YOUR OUTPUT CONFORMS WELL TO THE EXAMPLE, WE WILL BE DIRECTLY PARSING IT INTO TUPLES IN PYTHON.

IT WILL START DIRECTLY WITH THE LIST AND END WITH THE LIST NOTHING ELSE

DO NOT INCLUDE ANY TEXT BEFORE THE START OF THE LIST IN YOUR RESPONSE

REFER TO THE EXAMPLE BELOW FOR THE FORMAT OF YOUR OUTPUT. ENSURE YOU INCLUDE BOTH THE OPENING BRACKET '[' AND THE CLOSING BRACKET ']'

[
    ('Speaker 1', "Welcome to our podcast, where we explore the latest advancements in AI and technology. I'm your host, and today we're joined by a renowned expert in the field of AI. We're going to dive into the exciting world of Llama 3.2, the latest release from Meta AI."),
    ('Speaker 2', "Hi, I'm excited to be here! So, what is Llama 3.2?"),
    ('Speaker 1', "Ah, great question! Llama 3.2 is an open-source AI model that allows developers to fine-tune, distill, and deploy AI models anywhere. It's a significant update from the previous version, with improved performance, efficiency, and customization options."),
    ('Speaker 2', "That sounds amazing! What are some of the key features of Llama 3.2?")
]
"""

from concurrent import futures
import io
import json
import time
from dotenv import load_dotenv
import torch
from transformers import BarkModel, AutoProcessor, AutoTokenizer
import transformers
import os
import numpy as np
import sys

sys.path.append('./generated')

from tqdm.notebook import tqdm
import warnings
from newsapi import NewsApiClient
from groq import Groq
from bark import SAMPLE_RATE, generate_audio, preload_models
from pydub import AudioSegment
from scipy.io import wavfile
import ast
import grpc
import generated.PodcastService_pb2 as PodcastService_pb2
import generated.PodcastService_pb2_grpc as PodcastService_pb2_grpc
import generated.PodcastMessages_pb2 as PodcastMessages
import openai

device = "cpu"

preload_models()
load_dotenv()

pipeline = openai.OpenAI(
  base_url = "https://integrate.api.nvidia.com/v1",
  api_key = os.getenv("NVIDIA_API_KEY")
)

NEWS_API_KEY=os.getenv("NEWS_API_KEY")
news_api = api = NewsApiClient(api_key=NEWS_API_KEY)

groq_client = Groq(
    api_key=os.getenv("GROQ_API_KEY"),  # This is the default and can be omitted
)

bark_processor = AutoProcessor.from_pretrained("suno/bark")
bark_model = BarkModel.from_pretrained("suno/bark", torch_dtype=torch.float16).to("cpu")
bark_sampling_rate = 24000

warnings.filterwarnings('ignore')

def getNews(query):
    categories = [
        "business"
        "entertainment"
        "technology"
        "general"
        "health"
        "science"
        "sports"
    ]
    tags = query.split(", ")
    category = None
    keywords = []
    for tag in tags:
        if tag in categories:
            category = tag
        else:
            keywords.append(tag)
    keywords = " ".join(keywords)
    if (category == None):
        return news_api.get_top_headlines(category="general")
    ret = news_api.get_top_headlines(category="general")
    return ret

def processArticles(articles):
    ret = ""
    for article in articles:
        ret += str(article["title"])
        ret += "\n"
        ret += str(article["content"])
        ret += "\n"
    return ret

def remove_until_char(string, char):
  """Removes characters from a string until the first occurrence of the specified character."""
  index = string.find(char)
  if index == -1:
    return ""
  return string[index:]

def createPodcastText(query):
    print("Retrieving news...")
    news = getNews(query)["articles"]
    print ("Generating text...")
    intro_completion = groq_client.chat.completions.create(
        messages = [
            {"role": "system", "content": INTRO_PROMPT},
            {"role": "user", "content": processArticles(news)},
        ],
        model = "llama3-8b-8192",
        max_tokens=8192
    )
    intro_completion = pipeline(
        model="meta/llama3-8b-instruct",
        messages = [
            {"role": "system", "content": DETAIL_PROMPT},
            {"role": "user", "content": str(intro_completion.choices[0].message.content)},
        ],
        temperature=0.5,
        top_p=1,
        max_tokens=1024,
        stream=True
    )
    section_a = groq_client.chat.completions.create(
        messages = [
            {"role": "system", "content": SECTION_A_PROMPT},
            {"role": "user", "content": processArticles(news[0:4])},
        ],
        model = "llama3-8b-8192",
        max_tokens=8192
    )
    section_a = pipeline(
        model="meta/llama3-8b-instruct",
        messages = [
            {"role": "system", "content": DETAIL_PROMPT + "DO NOT WELCOME THE AUDIENCE OR PREFACE THE DISCUSSION IN ANY WAY."},
            {"role": "user", "content": str(section_a.choices[0].message.content)},
        ],
        temperature=0.5,
        top_p=1,
        max_tokens=1024,
        stream=True
    )
    section_b = groq_client.chat.completions.create(
        messages = [
            {"role": "system", "content": SECTION_A_PROMPT},
            {"role": "user", "content": processArticles(news[5:9])},
        ],
        model = "llama3-8b-8192",
        max_tokens=8192
    )
    section_b = pipeline(
        model="meta/llama3-8b-instruct",
        messages = [
            {"role": "system", "content": DETAIL_PROMPT + "DO NOT WELCOME THE AUDIENCE OR PREFACE THE DISCUSSION IN ANY WAY."},
            {"role": "user", "content": str(section_b.choices[0].message.content)},
        ],
        temperature=0.5,
        top_p=1,
        max_tokens=1024,
        stream=True
    )
    
    outro = groq_client.chat.completions.create(
        messages = [
            {"role": "system", "content": OUTRO_PROMPT},
            {"role": "user", "content": processArticles(news)}
        ],
        model = "llama3-8b-8192",
        max_tokens=8192
    )

    outro = pipeline(
        model="meta/llama3-8b-instruct",
        messages = [
            {"role": "system", "content": DETAIL_PROMPT + "DO NOT WELCOME THE AUDIENCE OR PREFACE THE DISCUSSION IN ANY WAY. MAKE SURE TO END THE PODCAST AT THE END BY SIGNING OFF. DO NOT GO INTO DETAIL ABOUT THE ARTICLES, SIMPLY TALK ABOUT THEM IN RETROSPECT, AS IF YOU HAVE ALREADY READ THEM. NEITHER SPEAKER SHOULD INTRODUCE NEW ARTICLES FOR DISCUSSION AT THIS POINT."},
            {"role": "user", "content": str(outro.choices[0].message.content)},
        ],
        temperature=0.5,
        top_p=1,
        max_tokens=1024,
        stream=True
    )

    print("Done.")

    intro_string = remove_until_char(intro_completion.choices[0].message.content, '[')
    if (intro_string[0] != '['):
        intro_string = '[' + intro_string
    if (intro_string[len(intro_string) -1] != ']'):
        intro_string = intro_string + ']'
    intro_done = eval(intro_string)
    print("processed intro")
    print(intro_done)

    a_string = remove_until_char(section_a.choices[0].message.content, '[')
    if (a_string[0] != '['):
        a_string = '[' + a_string
    if (a_string[len(a_string) -1] != ']'):
        a_string = a_string + ']'
    section_a_done = eval(a_string)
    print("processed a")
    print(section_a_done)

    b_string = remove_until_char(section_b.choices[0].message.content, '[')
    if (b_string[0] != '['):
        b_string = '[' + b_string
    if (b_string[len(b_string) -1] != ']'):
        b_string = b_string + ']'
    section_b_done = eval(b_string)
    print("processed b")
    print(section_b_done)

    print(outro.choices[0].message.content)
    outro_string = remove_until_char(outro.choices[0].message.content, '[')
    if (outro_string[0] != '['):
        outro_string = '[' + outro_string
    if (outro_string[len(outro_string) -1] != ']'):
        outro_string = outro_string + ']'
    outro_done = json.loads(outro_string)
    print("processed outro")
    print(outro_done)
    return [
        intro_done,
        section_a_done,
        section_b_done,
        outro_done
    ]

def createAudioSpeaker(text, speaker):
    inputs = bark_processor(text, voice_preset="v2/en_speaker_6" if speaker=="Speaker 1" else "v2/en_speaker_5").to(device)
    speech_output = bark_model.generate(**inputs, temperature=0.9, semantic_temperature=0.8)
    audio_arr = speech_output[0].cpu().numpy()
    return numpy_to_audio_segment(audio_arr, bark_sampling_rate)

def createPodcastAudio(text):
    audio = None
    print("Creating audio...")
    print(text)
    for section in text:
        print("processing...")
        print(section)
        for speaker, text in tqdm(section, desc="Generating podcast segments...", unit="segment"):
            print("Creating speaker chunk.")
            segment = createAudioSpeaker(text, speaker) # stream here?
            if audio is None:
                audio = segment
            else:
                audio += segment
    return audio

def createPodcast(query):
    print("Beginning text generation...")
    text = createPodcastText(query)
    print("Generating audio...")
    audio = createPodcastAudio(text)
    print("Created audio. Returning.")
    return audio

def numpy_to_audio_segment(audio_arr, sampling_rate):
    """Convert numpy array to AudioSegment"""
    # Convert to 16-bit PCM
    audio_int16 = (audio_arr * 32767).astype(np.int16)
    
    # Create WAV file in memory
    byte_io = io.BytesIO()
    wavfile.write(byte_io, sampling_rate, audio_int16)
    byte_io.seek(0)
    
    # Convert to AudioSegment
    return AudioSegment.from_wav(byte_io) 

class PodcastService(PodcastService_pb2_grpc.PodcastServiceServicer):
    def StreamPodcast(self, request, context):
        print("Creating podcast...")
        pod = createPodcast("music")
        print("Done. Chunking...")
        for x in range(len(pod.raw_data) / 4096):
            print("chunk")
            if x == 0:
                continue
            chunk = pod.raw_data[(x-1)*4096:x*4096]
            yield PodcastMessages.ByteData(data=chunk)
            # time.sleep(0.1)
    def HealthCheck(self, request, context):
        return PodcastMessages.PodcastServiceHealthResponse(status=1)

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    PodcastService_pb2_grpc.add_PodcastServiceServicer_to_server(PodcastService(), server)
    # createPodcast("music")
    server.add_insecure_port('[::]:50051')
    server.start()
    server.wait_for_termination()
    print("started")

if __name__ == '__main__':
    print("starting")
    serve()