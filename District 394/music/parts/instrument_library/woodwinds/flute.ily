%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/flute.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_flute_one = \relative c''' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10*4 | %5-8
    g8-.\p \< f-. g-. f-. g-. \once \override TextScript.outside-staff-priority = #1 f_\stacc_sempre\! \mf \> g f g f    g\! \mp f | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    \once \override TextScript.outside-staff-priority = #1
    f8_\reminderStacc \p \< g f g f     g\! \mf \> f g f g     f g | %13
    f8 g f g f     g f g f g     f g | %14
    f8 g f g f     g f g f g     f g | %15
    f8 g f g f     g f\! \pp | %16
    
    
    \barNumberCheck #17 
    R8*14 | %17
    R8*14 | %18
    R8*13 | %19
    R8*14 | %20
    
    R8*14 | %21
    R8*13 | %22
    R8*14 | %23
    R8*12 | %24
    
    \barNumberCheck #25
    R1.. | %25
    R1.. | %26
    R8*13 | %27
    R1.. | %28
    
    R1.. | %29
    R8*13 | %30
    R1.. | %31
    R1. | %32
    R1.. | %33
    R8*19 | %34
    R2.. | %35
    
    \barNumberCheck #36
    R4*5 | %36
    R4*5 | %37
    R4*5 | %38
    \once \override TextScript.outside-staff-priority = #1
    g8_\reminderStacc \p \< f g f g    f\! \mf \> g f g f    g\! \mp f | %39
    
    R4*5 | %40
    R4*5 | %41
    R8*12 | %42
    
    \barNumberCheck #43
    R4*5\! | %43
    R4*5 | %44
  }

  notes_flute_two = \relative c'' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10*4 | %5-8
    
    c8-.\p \< a-. c-. a-. c-. \once \override TextScript.outside-staff-priority = #1 a_\stacc_sempre\! \mf \> c a c a    c\! \mp a | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    \once \override TextScript.outside-staff-priority = #1
    a8_\reminderStacc\p \< c a c a     c\! \mf \> a c a c     a c | %13
    a8 c a c a     c a c a c     a c | %14
    a8 c a c a     c a c a c     a c | %15
    a8 c a c a     c a\! \pp | %16
    
    
    \barNumberCheck #17 
    R8*14 | %17
    R8*14 | %18
    R8*13 | %19
    R8*14 | %20
    
    R8*14 | %21
    R8*13 | %22
    R8*14 | %23
    R8*12 | %24
    
    \barNumberCheck #25
    R1.. | %25
    R1.. | %26
    R8*13 | %27
    R1.. | %28
    
    R1.. | %29
    R8*13 | %30
    R1.. | %31
    R1. | %32
    R1.. | %33
    R8*19 | %34
    R2.. | %35
    
    \barNumberCheck #36
    R4*5 | %36
    R4*5 | %37
    R4*5 | %38
    \once \override TextScript.outside-staff-priority = #1
    c8_\reminderStacc \p \< a c a c    a\! \mf \> c a c a    c\! \mp a | %39
    
    R4*5 | %40
    R4*5 | %41
    R8*12 | %42
    
    \barNumberCheck #43
    R4*5\! | %43
    R4*5 | %44
  }

% Part definitions
  % Full Score Part Definition 
  part_flute_score = \new Staff \with {
    instrumentName = "Flute"
    shortInstrumentName = "Fl."
    midiInstrument = "flute"
    
    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \removeDynamics {\notes_flute_one} \notes_flute_two >> }

  % Part Only Part Definition
  part_flute_part = \new Staff \with {
    midiInstrument = "flute"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \partCombine #'(1 . 0) \removeDynamics {\notes_flute_one} \notes_flute_two } >> }
  
% Scoring (for part only purposes)
  scoring_flute_part = {
    <<
      \part_flute_part
    >>
  }