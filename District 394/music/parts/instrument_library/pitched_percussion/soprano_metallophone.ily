%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/pitched_percussion/soprano_metallophone.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_soprano_metallophone = \relative c'' {
    \transposition c''
    R1\fermata | %0
    
    R1*4 | %1-4
    
    a8\p c f c f a, c f c f | %5
    a, c f c f a, c f c f | %6
    a, d f d f a, d f d f | %7
    a, c f c f a, c f c f | %8
    a, c f c f a, c f c f c f | %9
    
    a,8 c f c f a, c f c f | %10
    a, d f d f a, d f d f | %11
    a, c f c f a, c f c | %12
    
    a8 c f c f a, c f c f c f | %13
    a, c f c f a, c f c f c f | %14
    a, c f c f a, c f c f c f | %15
    a, c f c f c f | %16
    
    \barNumberCheck #17
    d,8\mf f bf f bf f bf d, f bf f bf f bf | %17
    e, g c g c g c e, g c g c g c | %18
    c, f a f a f a c, f a f a f | %19
    bf d f d f d f bf, d f d f d f | %20
    
    d,8 f bf f bf f bf d, f bf f bf f bf | %21
    e, g c g c g c e, g c g c g | %22
    c, f a f a f a c, f a f a f a | %23
    bf d f d f d f bf,\> d f d f | %24
    
    \barNumberCheck #25
    d,8\! \p f bf f bf f bf d, f bf f bf f bf | %25
    e, g c g c g c e, g c g c g c | %26
    c, f a f a f a c, f a f a f | %27
    bf d f d f d f bf, d f d f d f | %28
    
    d,8 f bf f bf f bf d, f bf f bf f bf | %29
    e, g c g c g c e, g c g c g | %30
    c, f a f a f a c, f a f a f a | %31
    bf d f d f d f bf, d f d f | %32
    d, f bf f bf f bf d, f bf f bf f bf | %33
    e, g c g c g c e, g c g c g c e, g c g c | %34
    R8*7 | %35
    
    \barNumberCheck #36
    a8\p c f c f a, c f c f | %36
    a, d f d f a, d f d f | %37
    a, c f c f a, c f c f | %38
    a, c f c f a, c f c f c f | %39
    
    a,8 c f c f a, c f c f | %40
    a, d f d f a, d f d f | %41
    bf,\< d f d f d f bf, d f d f\! \mf | %42
    
    \barNumberCheck #43
    a,8\p c f c f a, c f c f | %45
  R8*10 | %46
  }

% Part definitions
  % Full Score Part Definition 
  part_soprano_metallophone_score = \new Staff \with {
    instrumentName = "Sop. Metallophone"
    shortInstrumentName = "Sop. Met."
    midiInstrument = "glockenspiel" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_soprano_metallophone >> }

  % Part Only Part Definition
  part_soprano_metallophone_part = \new Staff \with {
    midiInstrument = "glockenspiel" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_soprano_metallophone } >> }
  
% Scoring (for part only purposes)
  scoring_soprano_metallophone_part = {
    <<
      \part_soprano_metallophone_part
    >>
  }