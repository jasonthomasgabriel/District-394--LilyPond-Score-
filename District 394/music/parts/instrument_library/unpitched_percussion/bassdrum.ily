%%%% ENGRAVING QUICKSTART
%%%% music/parts/unpitched_percussion/bassdrum.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_bassdrum = \drummode {
    \stemUp %My preference for one-line percussion
    
    R1\fermata | %0
    
    R1*3 | %1-3
    R1\fermata | %4
    
    R8*10*4 | %5-8
    R8*12 | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    R8*12 | %13
    R8*12 | %14
    R8*12 | %15
    r4. \once \override Hairpin.to-barline = ##f bd2:32\ppp \< | %16
    
    
    \barNumberCheck #17 
    R8*14\! \f | %17
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

% Part definitions
  % Full Score Part Definition 
  part_bassdrum_score = \new DrumStaff \with {
    instrumentName = "Bass Drum"
    shortInstrumentName = "B.D."
    midiInstrument = "orchestra kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'part \global \removeWithTag #'part \notes_bassdrum >> }

  % Part Only Part Definition
  part_bassdrum_part = \new DrumStaff \with {
    midiInstrument = "orchestra kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_bassdrum } >> }
  
% Scoring (for part only purposes)
  scoring_bassdrum_part = {
    <<
      \part_bassdrum_part
    >>
  }