%%%% ENGRAVING QUICKSTART
%%%% music/parts/unsorted/piano.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_piano_upper = \relative c' {
    \set PianoStaff.connectArpeggios = ##t
    \arpeggioArrowUp
    <a c f>1\arpeggio \fermata | %0
    
    a2^\sempre_legato <f a f'> | %1
    e' c | %2
    r d | %3
    <a c>1\fermata | %4
    
    c8\p f a f a    c, f a f a | %5
    c,8 f a f a    c, f a f a | %6
    d,8 f a f a     d, f a f a | %7
    bf,8 f' bf f bf    bf, f' bf f bf | %8
    c,8 f a f a      c, f a f a    f a | %9
    c,8 f a f a    c, f a f a | %10
    d,8 f a f a    d, f a f a | %11
    bf,8 f' bf f     bf bf, f' bf f | %12


    \repeat unfold 3 { c8 f a f a     c, f a f a    f a } | %13-15
    c,8 f a f a f a | %16

    \barNumberCheck #17
    f8\mf bf d bf d bf d     f, bf d bf d bf d | %17
    e,8 g c g c g c     e,8 g c g c g c | %18
    c,8 f a f a f a     c,8 f a f a f | %19
    d8 f bf f bf f bf     d,8 f bf f bf f bf | %20

    f8 bf d bf d bf d     f, bf d bf d bf d | %21
    e,8 g c g c g c     e,8 g c g c g | %22
    c,8 f a f a f a     c,8 f a f a f a | %23
    d,8 f bf f bf f bf     d,8\> f bf f bf | %24

    \barNumberCheck #25
    f8\! \p bf d bf d bf d     f, bf d bf d bf d | %17
    e,8 g c g c g c     e,8 g c g c g c | %18
    c,8 f a f a f a     c,8 f a f a f | %19
    d8 f bf f bf f bf     d,8 f bf f bf f bf | %20

    f8 bf d bf d bf d     f, bf d bf d bf d | %21
    e,8 g c g c g c     e,8 g c g c g | %22
    c,8 f a f a f a     c,8 f a f a f a | %23
    d,8 f bf f bf f bf     d,8 f bf f bf | %24

    \barNumberCheck #33
    f8 bf d bf d bf d     f, bf d bf d bf d | %33
    e,8 g c g c g c     e, g c g c g c    e, g c g c | %34
    e,2.. | %35

    \barNumberCheck #36
    c8\reminderDynamic \p f a f a    c, f a f a | %36
    d,8 f a f a     d, f a f a | %37
    bf,8 f' bf f bf    bf, f' bf f bf | %38
    c,8 f a f a      c, f a f a    f a | %39
    c,8 f a f a    c, f a f a | %40
    d,8 f a f a    d, f a f a | %41
    d,8\< f bf f bf f bf     d, f bf f bf\! \mf | %42

    \barNumberCheck #43
    c,8\p f a f a     c, f a f a | %43
    R8*10 | %44
  }
  
  notes_piano_lower = \relative c' {
    \arpeggioArrowUp
    <f,, c' f>1\arpeggio | %0
    f1 | %1
    <c' g'> | %2
    <bf f' bf> | %3
    <f c' f> | %4

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
    f,4. ~ f4 ~ f4. ~ f4 | %44
  }

% Part definitions
  % Full Score Part Definition 
  part_piano_score = \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "Pno."
  } {
      <<
        \new Staff = "staff_piano_upper" \with {
          midiInstrument = "acoustic grand"
        } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_upper >> } 
        \new Staff = "staff_piano_lower" \with {
          midiInstrument = "acoustic grand"
        } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_lower >> }
      >>
  }

  % Part Only Part Definition
  part_piano_part = \new PianoStaff {
    <<
      \new Staff = "staff_piano_upper" \with {
        \magnifyStaff #125/170
        midiInstrument = "acoustic grand"
      } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_piano_upper } >> } 
      \new Staff = "staff_piano_lower" \with {
        \magnifyStaff #125/170
        midiInstrument = "acoustic grand"
      } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \compressMMRests { \notes_piano_lower } >> }
    >>
  }
  
% Scoring (for part only purposes)
  scoring_piano_part = {
    <<
      \part_piano_part
    >>
  }