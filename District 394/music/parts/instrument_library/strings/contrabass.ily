%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/strings/contrabass.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_contrabass = \relative c, {
    \transposition c
    R1\fermata | %0
    
    R1*4 | %1-4
    
    R8*10 | %5
    
    f2\p ~ f8 ~ f2 ~ f8 | %6
    d'2 ~ d8 ~ d2 ~ d8 | %7
    bf2 ~ bf8 ~ bf2 ~ bf8 | %8
    f2 ~ f8 ~ f2 ~ f8 ~ f4 | %9

    f2 ~ f8 ~ f2 ~ f8 | %10
    d'2 ~ d8 ~ d2 ~ d8 | %11
    bf2 ~ bf8 ~ bf2 | %12
    
    f2 ~ f8 ~ f2 ~ f8 ~ f4 ~ | %13
    f2 ~ f8 ~ f2 ~ f8 ~ f4 ~ | %14
    f2 ~ f8 ~ f2 ~ f8 ~ f4 ~ | %15
    f2.. | %16

    \barNumberCheck #17
    bf2..\f ~ bf | %17
    e2.. ~ e | %18
    f2.. e2. | %19
    d2.. c | %20

    bf2.. ~ bf | %21
    e2.. ~ e2. | %22
    f2.. e | %23
    d2. c\> | %24

    \barNumberCheck #25
    bf2..\! \mf ~ bf | %25
    e2.. ~ e | %26
    f2.. e2. | %27
    d2.. c | %28
    
    bf2.. ~ bf | %29
    e2.. ~ e2. | %30
    f2.. e | %31
    d2. c | %32
    bf2.. ~ bf | %33
    e2.. ~ e2.. ~ e2 ~ e8 ~ | %34
    e2.. | %35

    \barNumberCheck #36
    f,2\p ~ f8 ~ f2 ~ f8 | %36
    d'2 ~ d8 ~ d2 ~ d8 | %37
    bf2 ~ bf8 ~ bf2 ~ bf8 | %38
    f2 ~ f8 ~ f2 ~ f8 ~ f4 | %39

    f2 ~ f8 ~ f2 ~ f8 | %40
    d'2 ~ d8 ~ d2 ~ d8 | %41
    d2.\< c2. | %42
    
    f2\! \p ~ f8 ~ f2 ~ f8 | %43
    R8*10 | %44  
  }

% Part definitions
  % Full Score Part Definition 
  part_contrabass_score = \new Staff \with {
    instrumentName = "Contrabass"
    shortInstrumentName = "Cb."
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_contrabass >> }

  % Part Only Part Definition
  part_contrabass_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_contrabass } >> }
  
 % Scoring (for part only purposes)
  scoring_contrabass_part = {
    <<
      \part_contrabass_part
    >>
  }