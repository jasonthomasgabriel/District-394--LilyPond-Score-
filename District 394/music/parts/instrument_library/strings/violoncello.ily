%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/strings/violoncello.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_violoncello = \relative c' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10 | %5
    
    c2\p ~ c8 ~ c2 ~ c8 | %6
    a2 ~ a8 ~ a2 ~ a8 | %7
    f2 ~ f8 ~ f2 ~ f8 | %8
    c2 ~ c8 ~ c2 ~ c8 ~ c4 | %9

    c'2 ~ c8 ~ c2 ~ c8 | %10
    a2 ~ a8 ~ a2 ~ a8 | %11
    f2 ~ f8 ~ f2 | %12
    
    c2 ~ c8 ~ c2 ~ c8 ~ c4 ~ | %13
    c2 ~ c8 ~ c2 ~ c8 ~ c4 ~ | %14
    c2 ~ c8 ~ c2 ~ c8 ~ c4 ~ | %15
    c2.. | %16

    \barNumberCheck #17
    d2..\mf ~ d | %17
    c2.. ~ c | %18
    g'2.. e2. | %19
    d2.. c | %20

    d2.. ~ d | %21
    c2.. ~ c2. | %22
    g'2.. e | %23
    d2. c8 ~ c2 ~ c8 | %24

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
    c'2\p ~ c8 ~ c2 ~ c8 | %36
    a2 ~ a8 ~ a2 ~ a8 | %37
    f2 ~ f8 ~ f2 ~ f8 | %38
    c2 ~ c8 ~ c2 ~ c8 ~ c4 | %39

    c'2 ~ c8 ~ c2 ~ c8 | %40
    a2 ~ a8 ~ a2 ~ a8 | %41
    d,2.\< c2. | %42
    
    c2\! \p ~ c8 ~ c2 ~ c8 | %43
    R8*10 | %44  
  }

% Part definitions
  % Full Score Part Definition 
  part_violoncello_score = \new Staff \with {
    instrumentName = "Violoncello"
    shortInstrumentName = "Vc."
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_violoncello >> }

  % Part Only Part Definition
  part_violoncello_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_violoncello } >> }
  
% Scoring (for part only purposes)
  scoring_violoncello_part = {
    <<
      \part_violoncello_part
    >>
  }