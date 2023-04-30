%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/strings/violin_I.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input 
  notes_violin_I = \relative c'' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10*4 | %5-8
    R8*12 | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    R8*12*3 | %13-15
    R8*7 | %16
    
    
    \barNumberCheck #17 
    d2..\mp c8 ~ c2. | %17
    g1 ~ g2. | %18
    a2 ~ a2. ~ a4. | %19
    c1 ~ c2. | %20
    
    d2.. c8 ~ c2. | %21
    g2 ~ g2. ~ g4. | %22
    a1 ~ a2. | %23
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
    R4*5 | %36
    R4*5 | %37
    R4*5 | %38
    R1. | %39
    
    R4*5 | %40
    R4*5 | %41
    c1.\< \p | %42
    
    \barNumberCheck #43
    R4*5\! | %43
    R4*5 | %44
  }

% Part definitions
  % Full Score Part Definition 
  part_violin_I_score = \new Staff \with {
    instrumentName = "Violin I"
    shortInstrumentName = "Vl. I"
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_violin_I >> }

  % Part Only Part Definition  
  part_violin_I_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_violin_I } >> }

% Scoring (for part only purposes)
  scoring_violin_I_part = {
    <<
      \part_violin_I_part
    >>
  }