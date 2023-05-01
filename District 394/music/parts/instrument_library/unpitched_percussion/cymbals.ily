%%%% ENGRAVING QUICKSTART
%%%% music/parts/unpitched_percussion/cymbals.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_cymbals = \drummode {
    \stemUp %My preference for one-line percussion
    
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10*4 | %5-8
    R8*12 | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    R8*12 | %13
    R8*12 | %14
    R8*12 | %15
    R8*7 | %16
    
    
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
    r2.. \once \override Hairpin.to-barline = ##f cymc2..:32\p \< ~ cymc4.: ~ cymc4: ~  | %34
    cymc2..:32 ~ | %35
    
    \barNumberCheck #36
    
    cymc4.\f \! r4 r4. r4 | %36
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

% Part definitions
  % Full Score Part Definition 
  part_cymbals_score = \new DrumStaff \with {
    instrumentName = "Cymbals"
    shortInstrumentName = "Cym."
    midiInstrument = "standard kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'part \global \removeWithTag #'part \notes_cymbals >> }

  % Part Only Part Definition
  part_cymbals_part = \new DrumStaff \with {
    midiInstrument = "standard kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_cymbals } >> }
  
% Scoring (for part only purposes)
  scoring_cymbals_part = {
    <<
      \part_cymbals_part
    >>
  }