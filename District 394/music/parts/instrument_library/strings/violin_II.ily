%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/strings/violin_II.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_violin_II = \relative c'' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10 | %5
    
    a2\p ~ a4 g8 ~ g4. | %6
    f2 ~ f4 e8 ~ e4. | %7
    d2 c4 bf8 ~ bf4. | %8
    a1. | %9
    
    a'2 ~ a4 g8 ~ g4. | %10
    f2 ~ f4 e8 ~ e4. | %11
    d4. ~ d8 c4 bf4. | %12
    
    a1. ~ | %13
    a1. ~ | %14
    a1. ~ | %15
    a2 ~ a4. | %16
    
    \barNumberCheck #17
    f'1\mf ~ f2. | %17
    f2.. e8 ~ e2. | %18
    f2 ~ f2. ~ f4. | %19
    f1 ~ f2. ~ | %20
    
    f1 ~ f2. | %21
    f2 ~ f4. e2. | %22
    f1 ~ f2. | %23
    f1. | %24
    
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
    a2\p ~ a4 g8 ~ g4. | %36
    f2 ~ f4 e8 ~ e4. | %37
    d2 c4 bf8 ~ bf4. | %38
    a1. | %39
    
    a'2 ~ a4 g8 ~ g4. | %40
    f2 ~ f4 e8 ~ e4. | %41
    f1.\< | %42
    
    \barNumberCheck #43
    a2\! \p ~ a2. | %43
    R4*5 | %44
  }

% Part definitions
  % Full Score Part Definition 
  part_violin_II_score = \new Staff \with {
    instrumentName = "Violin II"
    shortInstrumentName = "Vl. II"
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_violin_II >> }

  % Part Only Part Definition  
  part_violin_II_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_violin_II >> }
  
% Scoring (for part only purposes)
  scoring_violin_II_part = {
    <<
      \part_violin_II_part
    >>
  }