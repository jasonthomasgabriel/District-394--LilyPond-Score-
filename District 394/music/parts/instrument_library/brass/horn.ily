%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/horn.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_horn_one = \relative c' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10*4 | %5-8
    R8*12 | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    R8*12 | %13
    r4 a4.\p ~ a \tuplet 3/4 {bf8\tenuto\( e\tenuto a\tenuto\)} | %14
    g4. e4 ~ e4. ~ e4 ~ e\< ~ | %15
    e4.\! \f r2 | %16
    
    
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
    R8*12 | %39
    
    R4*5 | %40
    R4*5 | %41
    R8*12 | %42
    
    \barNumberCheck #43
    R4*5 | %43
    R4*5 | %44
  }

  notes_horn_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_horn_score = \new Staff \with {
    instrumentName = "Horn in F"
    shortInstrumentName = "Hn.F."
    midiInstrument = "french horn"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_horn_one \notes_horn_two >> }

  % Part Only Part Definition
    % Concert pitch
    part_horn_part = \new Staff \with {
      midiInstrument = "french horn"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose f c' { \global } \removeWithTag #'score \partCombine #'(1 . 0) \notes_horn_one \notes_horn_two >> }

    % Transposed for instrument
    part_horn_part_transposed = \new Staff \with {
      midiInstrument = "french horn"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose f c' { \global } \removeWithTag #'score \compressMMRests { \transpose f c' { \partCombine #'(1 . 0) \notes_horn_one \notes_horn_two } } >> }

% Scoring (for part only purposes)
  scoring_horn_part = {
    <<
      \part_horn_part
    >>
  }

  scoring_horn_part_transposed = {
  <<
    \part_horn_part_transposed
  >>
}