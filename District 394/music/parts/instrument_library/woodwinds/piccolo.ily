%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/piccolo.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_piccolo_one = \relative c' {
    \transposition c''
    R1\fermata | %0
    
    R1*3 | %1-3
    R1\fermata | %4
    
    R8*10*4 | %5-8
    R8*12 | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    R8*12 | %13
    r4 f4.\mp ~ f \tuplet 3/4 {g8\tenuto\( c\tenuto f\tenuto\)} | %14
    \override Hairpin.to-barline = ##f
    e4. c4 ~ \after 8*5 \< c2.. ~ | %15
    \revert Hairpin.to-barline
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

  notes_piccolo_two = \relative c' {
    \transposition c''
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_piccolo_score = \new Staff \with {
    instrumentName = "Piccolo"
    shortInstrumentName = "Pic."
    midiInstrument = "flute" %saving midi channels for preview purposes

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_piccolo_one \notes_piccolo_two >> }

  % Part Only Part Definition
  part_piccolo_part = \new Staff \with {
    midiInstrument = "flute" %saving midi channels for preview purposes

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \partCombine #'(1 . 0) \notes_piccolo_one \notes_piccolo_two } >> }
  
% Scoring (for part only purposes)
  scoring_piccolo_part = {
    <<
      \part_piccolo_part
    >>
  }