%%%% ENGRAVING QUICKSTART
%%%% music/parts/global.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

global = {
  %0
  \key f \major
  \time 2/2
  \set Score.tempoHideNote = ##t
  \tempo "A piacere" 4 = 100
  
  \skip 1
  \bar "||" \mark \default
  
  %1 - 4
  \set Score.currentBarNumber = #1
  \barNumberCheck #1
  \skip 1*4
  
  %5
  \barNumberCheck #5
  \bar "||"
  \tempo "Allegro" 8 = 247
  \time 5,5 10/8
  \skip 8*10
  
  %6 - 8
  \mark \default
  \skip 8*10*3
  
  %9
  \time 5,5,2 12/8
  \skip 8*12
  
  %10 - 11
  \time 5,5 10/8
  \skip 8*10*2
  
  %12
  \time 5,4 9/8
  \skip 8*9
  
  %13 - 15
  \barNumberCheck #13
  \bar "||"
  \time 5,5,2 12/8
  \skip 8*12*3
  
  %16
  \time 7 7/8
  \skip 8*7
  
  \repeat unfold 2 {
    %17 - 18
    %\barNumberCheck #17
    \mark \default \bar "||"
    \time 7,7 14/8
    \skip 8*14*2
    
    %19
    \time 7,6 13/8
    \skip 8*13
    
    %20
    \time 7,7 14/8
    \skip 8*14
    
    %21
    %\barNumberCheck #21
    \bar "||"
    \skip 8*14
    
    %22
    \time 7,6 13/8
    \skip 8*13
    
    %23
    \time 7,7 14/8
    \skip 8*14
    
    %24
    \time 7,5 12/8
    \skip 8*12
  }
  
  %33
  \barNumberCheck #33
  \bar "||"
  \time 7,7 14/8
  \skip 8*14
  
  %34
  \time 7,7,5 19/8
  \skip 8*19
  
  %35
  \time 7/8
  \skip 8*7
  
  %36 - 38
  \barNumberCheck #36
  \bar "||"
  \mark \default
  \time 5,5 10/8
  \skip 8*10*3
  
  %39
  \time 5,5,2 12/8
  \skip 8*12
  
  %40 - 41
  \time 5,5 10/8
  \skip 8*10*2
  
  %42
  \time 7,5 12/8
  \skip 8*12
  
  %43 - 44
  \barNumberCheck #43
  \bar "||"
  \mark \default
  \time 5,5 10/8
  \override TextSpanner.bound-details.left.text = "rit."
  \tag #'part { s8*15\startTextSpan s8*5\stopTextSpan }
  \tag #'score { \skip 8*20 }
  
  \bar "|."
}