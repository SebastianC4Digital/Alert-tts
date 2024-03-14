#include <iostream>
#include <string>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <espeak/speak_lib.h>

/*
https://espeak.sourceforge.net/voices.html
https://github.com/mondhs/espeak-sample/blob/master/sampleSpeak.cpp


   text: The text to be spoken, terminated by a zero character. It may be either 8-bit characters,
      wide characters (wchar_t), or UTF8 encoding.  Which of these is determined by the "flags"
      parameter.

   Size: Equal to (or greatrer than) the size of the text data, in bytes.  This is used in order
      to allocate internal storage space for the text.  This value is not used for
      AUDIO_OUTPUT_SYNCHRONOUS mode.

   position:  The position in the text where speaking starts. Zero indicates speak from the
      start of the text.

   position_type:  Determines whether "position" is a number of characters, words, or sentences.
      Values:

   end_position:  If set, this gives a character position at which speaking will stop.  A value
      of zero indicates no end position.

   flags:  These may be OR'd together:
      Type of character codes, one of:
         espeakCHARS_UTF8     UTF8 encoding
         espeakCHARS_8BIT     The 8 bit ISO-8859 character set for the particular language.
         espeakCHARS_AUTO     8 bit or UTF8  (this is the default)
         espeakCHARS_WCHAR    Wide characters (wchar_t)

      espeakSSML   Elements within < > are treated as SSML elements, or if not recognised are ignored.

      espeakPHONEMES  Text within [[ ]] is treated as phonemes codes (in espeak's Hirshenbaum encoding).

      espeakENDPAUSE  If set then a sentence pause is added at the end of the text.  If not set then
         this pause is suppressed.

   unique_identifier: message identifier; helpful for identifying later
     data supplied to the callback.

   user_data: pointer which will be passed to the callback function.

   espeak_Synth() Returns: EE_OK: operation achieved
                           EE_BUFFER_FULL: the command can not be buffered;
                           you may try after a while to call the function again.
                        EE_INTERNAL_ERROR.
*/

int main()
{
   espeak_AUDIO_OUTPUT output;
   espeak_VOICE voice;
   espeak_POSITION_TYPE position_type;
   int bufLength = 4500;
   int options = 0;
   espeak_Initialize(output, bufLength, NULL, options);
   // Set voice properties
   memset(&voice, 0, sizeof(voice)); // Initialize the voice struct
   voice.languages = "es-mx";        // Language code for Spanish
   voice.gender = 1;                 // Female voice
   voice.variant = 2;
   voice.age = 1;
   espeak_SetVoiceByProperties(&voice);

   const char *text = "Atención, trabajador José Rodríguez, haga uzo de su casco de seguridad.";

   espeak_Synth(text, strlen(text) + 1, 0, position_type, 0, espeakCHARS_AUTO, 0, NULL);
   espeak_Synchronize();
   return 0;
}
