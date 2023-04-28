%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/user_instruments/user_instrument_1.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input 
  notes_user_instrument_one = \relative c' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10 | %5
    f,2.\dynamic_molto_espressivo \f \tuplet 3/4 { g8\(\tenuto c\tenuto f\)\tenuto } | %6
    
    \tuplet 6/7 { e4 c bf } d4.\tenuto | %7
  }

% Part definitions
  % Full Score Part Definition 
  part_user_instrument_one_score = \new Staff \with {
    instrumentName = \user_instrument_one_instrumentname
    shortInstrumentName = \user_instrument_one_shortinstrumentname
    midiInstrument = "viola"
  } { \clef alto << \removeWithTag #'score \global \removeWithTag #'part \notes_user_instrument_one >> }

  % Part Only Part Definition  
  part_user_instrument_one_part = \new Staff \with {
    midiInstrument = "viola"
  } { \clef alto << \removeWithTag #'score \global \removeWithTag #'score \notes_user_instrument_one >> }
  
% Scoring (for part only purposes)
  scoring_user_instrument_one_part = {
    <<
      \part_user_instrument_one_part
    >>
  }