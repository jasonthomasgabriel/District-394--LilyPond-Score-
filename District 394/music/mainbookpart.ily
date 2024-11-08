%%%% ENGRAVING QUICKSTART
%%%% music/mainbook.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"


\bookpart {
  \paper {
    system-system-spacing.basic-distance = #28
  }

  \header {
    % Headers are centralised (to make things easier when dealing with multiple parts).
    % If needed a header can be overwritten by restating below the include-file.
    \include "headers.ily"

    % Set the instrument and/or part name below
    instrument = "Full Score"
  }

  % Score 
  % Visual output only
  % Optionally set staff size in \layout{}, depending on needs when dealing with multiple scores.
  \score { \scoring \layout { %{ #(layout-set-staff-size 20) %} } }
  
  % MIDI output only
  \score { \scoring \midi { \set Score.midiChannelMapping = #'instrument } }
  
  % Articulated MIDI score block %
  % (Purposely creates no visual output) %
  \score { \unfoldRepeats \articulate << \scoring >> \midi { \set Score.midiChannelMapping = #'instrument } }
}
