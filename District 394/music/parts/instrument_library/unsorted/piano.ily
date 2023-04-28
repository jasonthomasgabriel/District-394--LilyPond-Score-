%%%% ENGRAVING QUICKSTART
%%%% music/parts/unsorted/piano.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_piano_upper = \relative c' {
    \set PianoStaff.connectArpeggios = ##t
    \arpeggioArrowUp
    <a c f>1\arpeggio \fermata %0
    a2 <f a f'> %1
    e' c %2
    r d %3
    <a c>1 %4
    
    c8\p f a f a c, f a f a | % 
    c, f a f a c, f a f a |
    d, f a f a d, f a f a |
    bf, f' bf f bf bf, f' bf f bf |
    c, f a f a c, f a f a f a |
    c, f a f a c, f a f a |
    d, f a f a d, f a f a |
    bf, f' bf f bf bf, f' bf f |
    c f a f a c, f a f a f a |
    c, f a f a c, f a f a f a
  }
  
  notes_piano_lower = \relative c' {
    \arpeggioArrowUp
    <f,, c' f>1\arpeggio \fermata %0
    f1 %1
    <c' g'> %2
    <bf f' bf> %3
    <f c' f> %4
  }

% Part definitions
  % Full Score Part Definition 
  part_piano_score = \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "Pno."
  } {
      <<
        \new Staff = "staff_piano_upper" \with {
          midiInstrument = "acoustic grand"
        } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_upper >> } 
        \new Staff = "staff_piano_lower" \with {
          midiInstrument = "acoustic grand"
        } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_lower >> }
      >>
  }

  % Part Only Part Definition
  part_piano_part = \new PianoStaff {
    <<
      \new Staff = "staff_piano_upper" \with {
        midiInstrument = "acoustic grand"
      } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_piano_upper >> } 
      \new Staff = "staff_piano_lower" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_lower >> }
    >>
  }
  
% Scoring (for part only purposes)
  scoring_piano_part = {
    <<
      \part_piano_part
    >>
  }