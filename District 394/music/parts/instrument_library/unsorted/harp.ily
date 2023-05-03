%%%% ENGRAVING QUICKSTART
%%%% music/parts/unsorted/harp.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_harp_upper = \relative c' {
    R1\fermata | %0
    
    R1*3 | %1-3
    R1\fermata | %4
    
    R8*10\p | %5
    R8*10*3 | %6-8
    R8*12 | %9
    R8*10*2 | %10-11
    R8*9| %12
    
    R8*12 | %13
    R8*12 | %14
    R8*12 | %15
    r4. \once \override Glissando.style = #'trill f,2\f \glissando | %16
    
    
    \barNumberCheck #17 
    f'4.\mf r2 r4. r2 | %17
    R8*14 | %18
    R8*13 | %19
    R8*14 | %20
    
    R8*14 | %21
    R8*13 | %22
    R8*14 | %23
    \after 2.. \> R8*12 | %24
    
    \barNumberCheck #25
    R1..\! \p | %25
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
    R4*5\reminderDynamic \p | %36
    R4*5 | %37
    R4*5 | %38
    R8*12 | %39
    
    R4*5 | %40
    R4*5 | %41
    \after 8*11 \mf R8*12\< | %42
    
    \barNumberCheck #43
    R4*5\!\p | %43
    R4*5 | %44
  }
  
  notes_harp_lower = \relative c {
    R1 | %0
    
    R1*4 | %1-4
    
    \repeat unfold 2 { f8 a c a c    f, a c a c } | %5-6
    f,8 a d a d    f, a d a d | %7
    f,8 bf d bf d     f, bf d bf d | %8
    f,8 a c a c    f, a c a c    a c | %9
    f,8 a c a c    f, a c a c  | %10
    f,8 a d a d    f, a d a d | %11
    f,8 bf d bf d     f, bf d bf | %12
    
    \repeat unfold 3 { f8 a c a c    f, a c a c    a c } | %13-15
    f,8 a c a c a c | %16
    
    
    \barNumberCheck #17
    \repeat unfold 2 {
      bf8 d f d f d f     bf, d f d f d f | %17
      g,8 c e c e c e    g, c e c e c e  | %18
      f,8 a c a c a c     f, a c a c a | %19
      f8 bf d bf d bf d     f, bf d bf d bf d | %20
      
      bf8 d f d f d f     bf, d f d f d f | %21
      g,8 c e c e c e    g, c e c e c | %22
      f,8 a c a c a c     f, a c a c a c | %23
      f,8 bf d bf d bf d     f, bf d bf d | %24
    }
    
    \barNumberCheck #33
    f,8 bf d bf d bf d     f, bf d bf d bf d | %33
    g,8 c e c e c e    g, c e c e c e g, c e c e | %34
    R2.. | %35
    
    \barNumberCheck #36
    f,8 a c a c    f, a c a c | %36
    f,8 a d a d    f, a d a d | %37
    f,8 bf d bf d     f, bf d bf d | %38
    f,8 a c a c    f, a c a c    a c | %39
    
    f,8 a c a c    f, a c a c | %40
    f,8 a d a d    f, a d a d | %41
    f,8 bf d bf d bf d    f, bf d bf d | %42
    
    \barNumberCheck #43
    f,8 a c a c    f, a c a c | %43
    R4*5 | %44
  }

% Part definitions
  % Full Score Part Definition 
  part_harp_score = \new PianoStaff \with {
    instrumentName = "Harp"
    shortInstrumentName = "Hp."
  } {
      <<
        \new Staff = "staff_harp_upper" \with {
          midiInstrument = "orchestral harp"
        } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_harp_upper >> } 
        \new Staff = "staff_harp_lower" \with {
          midiInstrument = "orchestral harp"
        } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_harp_lower >> }
      >>
  }

  % Part Only Part Definition
  part_harp_part = \new PianoStaff {
    <<
      \new Staff = "staff_harp_upper" \with {
        \magnifyStaff #13/17
        midiInstrument = "orchestral harp"
      } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_harp_upper } >> } 
      \new Staff = "staff_harp_lower" \with {
        \magnifyStaff #13/17
        midiInstrument = "orchestral harp"
      } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \compressMMRests { \notes_harp_lower } >> }
    >>
  }
  
% Scoring (for part only purposes)
  scoring_harp_part = {
    <<
      \part_harp_part
    >>
  }