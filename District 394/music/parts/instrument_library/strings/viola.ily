%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/strings/viola.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_viola = \relative c' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10 | %5
    
    g2\p a4 bf8 ~ bf4. | %6
    c2 ~ c2. | %7
    c4 bf4 a2. | %8
    g4 ( f8 ~ f4. ~ f2. ) | %9
    
    g2 a4 bf8 ~ bf4. | %10
    c2 ~ c2. | %11
    c4 bf8 ~ bf4 a8 ~ a4. | %12
    
    g4 ( f8 ~ f4. ~ f2. ~ | %13
    f1. ~ | %14
    f1. ~ | %15
    f2 ~ f4. ) | %16
    
    \barNumberCheck #17
    c'1\mf ~ c2. | %17
    c1 ~ c2. | %18
    c2 ~ c2. ~ c4. | %19
    c1 ~ c2. ~ | %20
    
    c1 ~ c2. | %21
    c2 ~ c2. ~ c4. | %22
    c1 ~ c2. | %23
    c1. | %24
    
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
    g2\p a4 bf8 ~ bf4. | %36
    c2 ~ c2. | %37
    c4 bf4 a2. | %38
    g4 ( f8 ~ f4. ~ f2. ) | %39
    
    g2 a4 bf8 ~ bf4. | %40
    c2 ~ c2. | %41
    c1.\< | %42
    
    \barNumberCheck #43
    g2\! \p ~ g2. | %43
    R4*5 | %44
  }

% Part definitions
  % Full Score Part Definition 
  part_viola_score = \new Staff \with {
    instrumentName = "Viola"
    shortInstrumentName = "Vla."
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef alto << \removeWithTag #'part \global \removeWithTag #'part \notes_viola >> }

  % Part Only Part Definition
  part_viola_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef alto << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_viola } >> }
  
% Scoring (for part only purposes)
  scoring_viola_part = {
    <<
      \part_viola_part
    >>
  }