%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/pitched_percussion/glockenspiel.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_glockenspiel = \relative c'' {
    \transposition c'''
    R1\fermata | %0
    
    R1*4 | %1-4
    
    bf8\p c g' c, g' bf, c g' c, g' | %5
    bf, c g' c, g' bf, c g' c, g' | %6
    a, c f c f a, c f c f | %7
    c f a f a c, f a f a | %8
    bf, c g' c, g' bf, c g' c, g' c, g' | %9
    
    bf,8 c g' c, g' bf, c g' c, g' | %10
    a, c f c f a, c f c f | %11
    c f a f a c, f a f | %12
    
    bf,8 c g' c, g' bf, c g' c, g' c, g' | %13
    bf, c g' c, g' bf, c g' c, g' c, g' | %14
    bf, c g' c, g' bf, c g' c, g' c, g' | %15
    bf, c g' c, g' c, g' | %16
    
    \barNumberCheck #17
    c,8\mf d a' d, a' d, a' c, d a' d, a' d, a' | %17
    d, e f e f e f d e f e f e f | %18
    bf, c f c f c f bf, c f c f c | %19
    c g' bf g bf g bf c, g' bf g bf g bf | %20
    
    c,8 d a' d, a' d, a' c, d a' d, a' d, a' | %21
    d, e f e f e f d e f e f e | %22
    bf c f c f c f bf, c f c f c f | %23
    c g' bf g bf g bf c,\> g' bf g bf | %24
    
    \barNumberCheck #25
    c,8\! \p d a' d, a' d, a' c, d a' d, a' d, a' | %25
    d, e f e f e f d e f e f e f | %26
    bf, c f c f c f bf, c f c f c | %27
    c g' bf g bf g bf c, g' bf g bf g bf | %28
    
    c,8 d a' d, a' d, a' c, d a' d, a' d, a' | %29
    d, e f e f e f d e f e f e | %30
    bf c f c f c f bf, c f c f c f | %31
    c g' bf g bf g bf c, g' bf g bf | %32
    c, d a' d, a' d, a' c, d a' d, a' d, a' | %33
    d, e f e f e f d e f e f e f d e f e f | %34
    R8*7 | %35
    
    \barNumberCheck #36
    bf,8\p c g' c, g' bf, c g' c, g' | %36
    a, c f c f a, c f c f | %37
    c f a f a c, f a f a | %38
    bf, c g' c, g' bf, c g' c, g' c, g' | %39
    
    bf,8 c g' c, g' bf, c g' c, g' | %40
    a, c f c f a, c f c f | %41
    c\< g' bf g bf g bf c, g' bf g bf\! \mf | %42
    
    \barNumberCheck #43
    bf,8\p c g' c, g' bf, c g' c, g' | %43
    R8*10 | %44
}

% Part definitions
  % Full Score Part Definition 
  part_glockenspiel_score = \new Staff \with {
    instrumentName = "Glockenspiel"
    shortInstrumentName = "Gls."
    midiInstrument = "glockenspiel"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_glockenspiel >> }

  % Part Only Part Definition
  part_glockenspiel_part = \new Staff \with {
    midiInstrument = "glockenspiel"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_glockenspiel >> }
  
% Scoring (for part only purposes)
  scoring_glockenspiel_part = {
    <<
      \part_glockenspiel_part
    >>
  }