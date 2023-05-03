%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/user_instruments/user_instrument_1.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input 
  notes_user_instrument_one = \relative c' {
    % Let's have the solo player be the loudest player
    % Tho please don't actually listen to the midi file. Go to soundcloud.com/jasonthomasgabriel/district-394
    \set Staff.midiMinimumVolume = #0.8
    \set Staff.midiMaximumVolume = #0.9
    
    R1\fermata | %0
    
    R1*3 | %1-3
    R1\fermata | %4
    
    R8*10 | %5
    f,2.\dynamic_molto_espressivo \f \tuplet 3/4 { g8\(\tenuto c\tenuto f\)\tenuto } | %6
    \tuplet 6/7 { e4 c bf } d4.\tenuto | %7
    \tuplet 6/7 { c4 a g ~ } g4 bf8 | %8
    a1. | %9
    f'2. \tuplet 3/4 { e8\(\tenuto c\)\tenuto f\tenuto } | %10
    \tuplet 6/7 { e4 c a\( } c4.\)\tenuto | %11
    bf4. ~ bf8 c\( d2\) | %12
    c1. | %13
    R8*12 | %14
    R8*12 | %15
    R8*7 | %16

    \barNumberCheck #17 
    r4. r8 d'4.\dynamic_molto_espressivo \ff ~ d c4 a ~ | %17
    a4. bf16( a16) g4. ~ g8 a2  bf8 c | %18
    r8 a2. ~ a4 g4. a8 | %19
    f2.. r4. r4 c8([ f | % 20

    g8] c4) d2 ~ d4. e f8 ~ | %21
    f8 c2. r8 bf4. a8 bf | %22
    a2. \tuplet 3/4 { d4 a f ~ } | %23
    f2. r2. | %24

    \barNumberCheck #25
    \set Staff.midiInstrument = "pizzicato strings"
    r8 r d'8^"pizz."\mp -. r d-. r d-. r r d-. r d-. r d-. | %25
    r8 r c8_\stacc_sempre r c r c r r c r c r c | %26
    r8 r a8 r a r a r r a r a r | %27
    r8 r bf8 r bf r bf r r bf r bf r bf | %28
    
    r8 r d8 r d r d r r d r d r d | %29
    r8 r c8 r c r c r r c r c r | %30
    r8 r a8 r a r a r r a r a r a | %31
    r8 r bf8 r bf r bf r r bf r bf | %32
    r8 r d8 r d r d r r d r d r d | %33
    r8 r c8 r c r c r r c r c r c r r c r c | %34
    R2.. | %35

    \set Staff.midiInstrument = "viola"
    \once \override TextScript.outside-staff-priority = #1 f,,2.^"arco"-\nonStacc \dynamic_molto_espressivo \f \tuplet 3/4 { g8\(\tenuto c\tenuto f\)\tenuto } | %36
    \tuplet 6/7 { e4 c bf } d4.\tenuto | %37
    \tuplet 6/7 { c4 a g ~ } g4 bf8 | %38
    a1. | %39
    f'2. \tuplet 3/4 { e8\(\tenuto c\)\tenuto f\tenuto } | %40
    \tuplet 6/7 { e4 c a\( } c4.\)\tenuto | %41
    bf2.\< d\tenuto | %42

    c4.\! ~ c4 ~ c4. ~ c4 | %43
    R8*10 | %44
  }

% Part definitions
  % Full Score Part Definition 
  part_user_instrument_one_score = \new Staff \with {
    instrumentName = \user_instrument_one_instrumentname
    shortInstrumentName = \user_instrument_one_shortinstrumentname
    midiInstrument = "viola"
  } { \clef alto << \removeWithTag #'score \global \removeWithTag #'part \notes_user_instrument_one >> }

  % Part Only Part Definition  
  part_user_instrument_one_part = \new Staff \with {
    midiInstrument = "viola"
  } { \clef alto << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_user_instrument_one } >> }
  
% Scoring (for part only purposes)
  scoring_user_instrument_one_part = {
    <<
      \part_user_instrument_one_part
    >>
  }