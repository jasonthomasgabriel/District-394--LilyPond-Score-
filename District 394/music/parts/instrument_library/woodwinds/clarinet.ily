%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/clarinet.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_clarinet_one = \relative c' {
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10*4 | %5-8
    R8*12 | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    R8*12 | %13
    r4 f4.\mf ~ f \tuplet 3/4 {g8\tenuto\( c\tenuto f\tenuto\)} | %14
    e4. c4 ~ c4. ~ c4 ~ c\< ~ | %15
    c4.\! \f r2 | %16
    
    
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
    r8 r f,8\mf -. r f-. r f-. r r f-. r f-. r f-. | %25
    r8 r e8_\stacc_sempre r e r e r r e r e r e | %26
    r8 r c8 r c r c r r c r c r | %27
    r8 r d8 r d r d r r d r d r d | %28
    
    r8 r f8 r f r f r r f r f r f | %29
    r8 r e8 r e r e r r e r e r | %30
    r8 r c8 r c r c r r c r c r c | %31
    r8 r d8 r d r d r r d r d | %32
    r8 r f8 r f r f r r f r f r f | %33
    r8 r e8 r e r e r r e r e r e r r e r e | %34
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

  notes_clarinet_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_clarinet_score = \new Staff \with {
    instrumentName = \markup \concat { "Clarinet in B" \super \flat }
    shortInstrumentName = \markup \concat { "Cl.B" \super { \flat } "."}
    midiInstrument = "clarinet"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_clarinet_one \notes_clarinet_two >> }

  % Part Only Part Definition
    % Concert pitch
    part_clarinet_part = \new Staff \with {
      midiInstrument = "clarinet"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \compressMMRests { \partCombine #'(1 . 0) \notes_clarinet_one \notes_clarinet_two } >> }

    % Transposed for instrument
    part_clarinet_part_transposed = \new Staff \with {
      midiInstrument = "clarinet"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \compressMMRests { \transpose bf c' { \partCombine #'(1 . 0) \notes_clarinet_one \notes_clarinet_two } } >> }


% Scoring (for part only purposes)
  scoring_clarinet_part = {
    <<
      \part_clarinet_part
    >>
  }

  scoring_clarinet_part_transposed = {
    <<
      \part_clarinet_part_transposed
    >>
  }