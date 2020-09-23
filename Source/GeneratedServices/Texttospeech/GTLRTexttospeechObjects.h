// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Text-to-Speech API (texttospeech/v1)
// Description:
//   Synthesizes natural-sounding speech by applying powerful neural network
//   models.
// Documentation:
//   https://cloud.google.com/text-to-speech/

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRTexttospeech_AudioConfig;
@class GTLRTexttospeech_SynthesisInput;
@class GTLRTexttospeech_Voice;
@class GTLRTexttospeech_VoiceSelectionParams;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRTexttospeech_AudioConfig.audioEncoding

/**
 *  Not specified. Will return result google.rpc.Code.INVALID_ARGUMENT.
 *
 *  Value: "AUDIO_ENCODING_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_AudioConfig_AudioEncoding_AudioEncodingUnspecified;
/**
 *  Uncompressed 16-bit signed little-endian samples (Linear PCM). Audio content
 *  returned as LINEAR16 also contains a WAV header.
 *
 *  Value: "LINEAR16"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_AudioConfig_AudioEncoding_Linear16;
/**
 *  MP3 audio at 32kbps.
 *
 *  Value: "MP3"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_AudioConfig_AudioEncoding_Mp3;
/**
 *  Opus encoded audio wrapped in an ogg container. The result will be a file
 *  which can be played natively on Android, and in browsers (at least Chrome
 *  and Firefox). The quality of the encoding is considerably higher than MP3
 *  while using approximately the same bitrate.
 *
 *  Value: "OGG_OPUS"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_AudioConfig_AudioEncoding_OggOpus;

// ----------------------------------------------------------------------------
// GTLRTexttospeech_Voice.ssmlGender

/**
 *  A female voice.
 *
 *  Value: "FEMALE"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_Voice_SsmlGender_Female;
/**
 *  A male voice.
 *
 *  Value: "MALE"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_Voice_SsmlGender_Male;
/**
 *  A gender-neutral voice. This voice is not yet supported.
 *
 *  Value: "NEUTRAL"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_Voice_SsmlGender_Neutral;
/**
 *  An unspecified gender. In VoiceSelectionParams, this means that the client
 *  doesn't care which gender the selected voice will have. In the Voice field
 *  of ListVoicesResponse, this may mean that the voice doesn't fit any of the
 *  other categories in this enum, or that the gender of the voice isn't known.
 *
 *  Value: "SSML_VOICE_GENDER_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_Voice_SsmlGender_SsmlVoiceGenderUnspecified;

// ----------------------------------------------------------------------------
// GTLRTexttospeech_VoiceSelectionParams.ssmlGender

/**
 *  A female voice.
 *
 *  Value: "FEMALE"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_Female;
/**
 *  A male voice.
 *
 *  Value: "MALE"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_Male;
/**
 *  A gender-neutral voice. This voice is not yet supported.
 *
 *  Value: "NEUTRAL"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_Neutral;
/**
 *  An unspecified gender. In VoiceSelectionParams, this means that the client
 *  doesn't care which gender the selected voice will have. In the Voice field
 *  of ListVoicesResponse, this may mean that the voice doesn't fit any of the
 *  other categories in this enum, or that the gender of the voice isn't known.
 *
 *  Value: "SSML_VOICE_GENDER_UNSPECIFIED"
 */
FOUNDATION_EXTERN NSString * const kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_SsmlVoiceGenderUnspecified;

/**
 *  Description of audio data to be synthesized.
 */
@interface GTLRTexttospeech_AudioConfig : GTLRObject

/**
 *  Required. The format of the audio byte stream.
 *
 *  Likely values:
 *    @arg @c kGTLRTexttospeech_AudioConfig_AudioEncoding_AudioEncodingUnspecified
 *        Not specified. Will return result google.rpc.Code.INVALID_ARGUMENT.
 *        (Value: "AUDIO_ENCODING_UNSPECIFIED")
 *    @arg @c kGTLRTexttospeech_AudioConfig_AudioEncoding_Linear16 Uncompressed
 *        16-bit signed little-endian samples (Linear PCM). Audio content
 *        returned as LINEAR16 also contains a WAV header. (Value: "LINEAR16")
 *    @arg @c kGTLRTexttospeech_AudioConfig_AudioEncoding_Mp3 MP3 audio at
 *        32kbps. (Value: "MP3")
 *    @arg @c kGTLRTexttospeech_AudioConfig_AudioEncoding_OggOpus Opus encoded
 *        audio wrapped in an ogg container. The result will be a file which can
 *        be played natively on Android, and in browsers (at least Chrome and
 *        Firefox). The quality of the encoding is considerably higher than MP3
 *        while using approximately the same bitrate. (Value: "OGG_OPUS")
 */
@property(nonatomic, copy, nullable) NSString *audioEncoding;

/**
 *  Optional. Input only. An identifier which selects 'audio effects' profiles
 *  that are applied on (post synthesized) text to speech. Effects are applied
 *  on top of each other in the order they are given. See [audio
 *  profiles](https://cloud.google.com/text-to-speech/docs/audio-profiles) for
 *  current supported profile ids.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *effectsProfileId;

/**
 *  Optional. Input only. Speaking pitch, in the range [-20.0, 20.0]. 20 means
 *  increase 20 semitones from the original pitch. -20 means decrease 20
 *  semitones from the original pitch.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *pitch;

/**
 *  Optional. The synthesis sample rate (in hertz) for this audio. When this is
 *  specified in SynthesizeSpeechRequest, if this is different from the voice's
 *  natural sample rate, then the synthesizer will honor this request by
 *  converting to the desired sample rate (which might result in worse audio
 *  quality), unless the specified sample rate is not supported for the encoding
 *  chosen, in which case it will fail the request and return
 *  google.rpc.Code.INVALID_ARGUMENT.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *sampleRateHertz;

/**
 *  Optional. Input only. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is
 *  the normal native speed supported by the specific voice. 2.0 is twice as
 *  fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0
 *  speed. Any other values < 0.25 or > 4.0 will return an error.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *speakingRate;

/**
 *  Optional. Input only. Volume gain (in dB) of the normal native volume
 *  supported by the specific voice, in the range [-96.0, 16.0]. If unset, or
 *  set to a value of 0.0 (dB), will play at normal native signal amplitude. A
 *  value of -6.0 (dB) will play at approximately half the amplitude of the
 *  normal native signal amplitude. A value of +6.0 (dB) will play at
 *  approximately twice the amplitude of the normal native signal amplitude.
 *  Strongly recommend not to exceed +10 (dB) as there's usually no effective
 *  increase in loudness for any value greater than that.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *volumeGainDb;

@end


/**
 *  The message returned to the client by the `ListVoices` method.
 */
@interface GTLRTexttospeech_ListVoicesResponse : GTLRObject

/** The list of voices. */
@property(nonatomic, strong, nullable) NSArray<GTLRTexttospeech_Voice *> *voices;

@end


/**
 *  Contains text input to be synthesized. Either `text` or `ssml` must be
 *  supplied. Supplying both or neither returns
 *  google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000
 *  characters.
 */
@interface GTLRTexttospeech_SynthesisInput : GTLRObject

/**
 *  The SSML document to be synthesized. The SSML document must be valid and
 *  well-formed. Otherwise the RPC will fail and return
 *  google.rpc.Code.INVALID_ARGUMENT. For more information, see
 *  [SSML](https://cloud.google.com/text-to-speech/docs/ssml).
 */
@property(nonatomic, copy, nullable) NSString *ssml;

/** The raw text to be synthesized. */
@property(nonatomic, copy, nullable) NSString *text;

@end


/**
 *  The top-level message sent by the client for the `SynthesizeSpeech` method.
 */
@interface GTLRTexttospeech_SynthesizeSpeechRequest : GTLRObject

/** Required. The configuration of the synthesized audio. */
@property(nonatomic, strong, nullable) GTLRTexttospeech_AudioConfig *audioConfig;

/** Required. The Synthesizer requires either plain text or SSML as input. */
@property(nonatomic, strong, nullable) GTLRTexttospeech_SynthesisInput *input;

/** Required. The desired voice of the synthesized audio. */
@property(nonatomic, strong, nullable) GTLRTexttospeech_VoiceSelectionParams *voice;

@end


/**
 *  The message returned to the client by the `SynthesizeSpeech` method.
 */
@interface GTLRTexttospeech_SynthesizeSpeechResponse : GTLRObject

/**
 *  The audio data bytes encoded as specified in the request, including the
 *  header for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS).
 *  For LINEAR16 audio, we include the WAV header. Note: as with all bytes
 *  fields, protobuffers use a pure binary representation, whereas JSON
 *  representations use base64.
 *
 *  Contains encoded binary data; GTLRBase64 can encode/decode (probably
 *  web-safe format).
 */
@property(nonatomic, copy, nullable) NSString *audioContent;

@end


/**
 *  Description of a voice supported by the TTS service.
 */
@interface GTLRTexttospeech_Voice : GTLRObject

/**
 *  The languages that this voice supports, expressed as
 *  [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags (e.g.
 *  "en-US", "es-419", "cmn-tw").
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *languageCodes;

/** The name of this voice. Each distinct voice has a unique name. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The natural sample rate (in hertz) for this voice.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *naturalSampleRateHertz;

/**
 *  The gender of this voice.
 *
 *  Likely values:
 *    @arg @c kGTLRTexttospeech_Voice_SsmlGender_Female A female voice. (Value:
 *        "FEMALE")
 *    @arg @c kGTLRTexttospeech_Voice_SsmlGender_Male A male voice. (Value:
 *        "MALE")
 *    @arg @c kGTLRTexttospeech_Voice_SsmlGender_Neutral A gender-neutral voice.
 *        This voice is not yet supported. (Value: "NEUTRAL")
 *    @arg @c kGTLRTexttospeech_Voice_SsmlGender_SsmlVoiceGenderUnspecified An
 *        unspecified gender. In VoiceSelectionParams, this means that the
 *        client doesn't care which gender the selected voice will have. In the
 *        Voice field of ListVoicesResponse, this may mean that the voice
 *        doesn't fit any of the other categories in this enum, or that the
 *        gender of the voice isn't known. (Value:
 *        "SSML_VOICE_GENDER_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *ssmlGender;

@end


/**
 *  Description of which voice to use for a synthesis request.
 */
@interface GTLRTexttospeech_VoiceSelectionParams : GTLRObject

/**
 *  Required. The language (and potentially also the region) of the voice
 *  expressed as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
 *  language tag, e.g. "en-US". This should not include a script tag (e.g. use
 *  "cmn-cn" rather than "cmn-Hant-cn"), because the script will be inferred
 *  from the input provided in the SynthesisInput. The TTS service will use this
 *  parameter to help choose an appropriate voice. Note that the TTS service may
 *  choose a voice with a slightly different language code than the one
 *  selected; it may substitute a different region (e.g. using en-US rather than
 *  en-CA if there isn't a Canadian voice available), or even a different
 *  language, e.g. using "nb" (Norwegian Bokmal) instead of "no" (Norwegian)".
 */
@property(nonatomic, copy, nullable) NSString *languageCode;

/**
 *  The name of the voice. If not set, the service will choose a voice based on
 *  the other parameters such as language_code and gender.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The preferred gender of the voice. If not set, the service will choose a
 *  voice based on the other parameters such as language_code and name. Note
 *  that this is only a preference, not requirement; if a voice of the
 *  appropriate gender is not available, the synthesizer should substitute a
 *  voice with a different gender rather than failing the request.
 *
 *  Likely values:
 *    @arg @c kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_Female A female
 *        voice. (Value: "FEMALE")
 *    @arg @c kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_Male A male
 *        voice. (Value: "MALE")
 *    @arg @c kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_Neutral A
 *        gender-neutral voice. This voice is not yet supported. (Value:
 *        "NEUTRAL")
 *    @arg @c kGTLRTexttospeech_VoiceSelectionParams_SsmlGender_SsmlVoiceGenderUnspecified
 *        An unspecified gender. In VoiceSelectionParams, this means that the
 *        client doesn't care which gender the selected voice will have. In the
 *        Voice field of ListVoicesResponse, this may mean that the voice
 *        doesn't fit any of the other categories in this enum, or that the
 *        gender of the voice isn't known. (Value:
 *        "SSML_VOICE_GENDER_UNSPECIFIED")
 */
@property(nonatomic, copy, nullable) NSString *ssmlGender;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
