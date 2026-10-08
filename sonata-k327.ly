%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.327"
  source = "https://s9.imslp.org/files/imglnks/usimg/4/44/IMSLP914910-PMLP523876-E4465_24-26-Scarlatti_-_Keyboard_Sonatas,_L.146-160.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 2) (0 . 1.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 0.5) (0 . 1) (0 . -1.5))
                      ) \etc
slurShapeC = \shape #'((-0.75 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (-0.5 . -1)) \etc
slurShapeE = \shape #'((-0.75 . 0.4) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'((-0.75 . 0) (0 . 1) (0 . 1.5) (0 . 1)) \etc
slurShapeG = \shape #'((0 . 2) (0 . -0.5) (0 . 0) (0 . -0.5)) \etc
slurShapeH = \shape #'((0 . -1) (0 . 0.25) (0 . 0.75) (0 . -0.5)) \etc
slurShapeI = \shape #'(
                        ((0 . -2.5) (0 . -2) (0 . 0) (0 . 0))
                        ((0 . -2.8) (0 . -2.8) (0.2 . -2.8) (0.2 . -2.8))
                      ) \etc
slurShapeJ = \shape #'((-0.75 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.3))
                        ((-0.5 . 0.25) (0 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key c \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \voiceOne e''16( c g c g'8-.) |
    f4( e8) |
    e16( c g c g'8-.) |
    f4( e8) |
    <c e>4( <d f>8~ |
    q8 <c e> <b d>) |
    <c e>4-\slurShapeA ( <d f>8~ |
    q8 <c e> <b d>) |
    
    \barNumberCheck 9
    e16( c g c fs8-.) |
    \osp #'(0 . -0.5) g8( d e |
    \oneVoice \afterGrace 15/16 c4.-\insideSlur \trill { b32 c } |
    b4.) |
    \voiceOne g'16( d b d b'8~ |
    b8 a g) |
    g16( d b d b'8~ |
    b8 a g) |
    
    \barNumberCheck 17
    \osp #'(-0.5 . 0) <g b>4( <a c>8~ |
    q8 <g b> <fs a>) |
    \osp #'(-0.5 . 0) <g b>4( <a c>8~ |
    q8 <g b> <fs a>) |
    \oneVoice b8-\slurShapeB ( fs g |
    ds8 e g |
    \afterGrace 15/16 c,4.-\insideSlur \trill { b32 c } |
    b4.) |
    
    \barNumberCheck 25
    \voiceOne g'4 af8->-\slurShapeC (~ |
    af8 g f) |
    g4 af8->-\slurShapeC (~ |
    af8 g f) |
    g4.~ |
    g8 g( f~ |
    f8 e d~ |
    \oneVoice d8 cs16 b! a8-.) |
    
    \barNumberCheck 33
    \voiceOne a'4 bf8->-\slurShapeE (~ |
    bf8 a g) |
    a4 bf8->-\slurShapeF (~ |
    bf8 a g~ |
    g8 fs g |
    a4.~ |
    a8) bf8( a |
    fs8) g8.(\trill fs32 g) |
    
    \barNumberCheck 41
    \oneVoice \grace { g16( } <d a')>4. |
    \voiceOne <fs a>4 <a c>8->(~ |
    q8 <g b>) <fs a>-. |
    q4 <a c>8->(~ |
    q8 <g b>) <fs a>-. |
    q4-\slurShapeG ( <a c>8->~ |
    c8 b16 a g fs |
    \oneVoice e16-.) fs32( g  fs16-.)[ e-. d-. c-.] |
    
    \barNumberCheck 49
    b4( g'8) |
    \voiceOne e4( g8) |
    d4( g8) |
    e4( g8) |
    d4( g8) |
    \oneVoice <c, e>8-. <b d>-. <a c>-. |
    b4( g'8) |
    \voiceOne e4( g8) |
    
    \barNumberCheck 57
    d4( g8) |
    e4( g8) |
    d4( g8) |
    \oneVoice <c, e>8-. <b d>-. <a c>-. |
    \voiceOne b8-\slurShapeH ( c d |
    \tuplet 3/2 { c16[ b a] } b8-.) a-. |
    \oneVoice g4.->-\tag layout \prallprall -\tag midi \prall |
  }
  \repeat volta 2 {
    \voiceOne g'4 f!8->~ |
    
    \barNumberCheck 65
    f8 ef-. d-. |
    g4 f8->~ |
    f8 ef-. d-. |
    g4 g8->~ |
    g8 f-. e-. |
    g4 g8->~ |
    g8 f-. e-. |
    f4 s8 |
    
    \barNumberCheck 73
    s4. |
    bf4 s8 |
    s4. |
    g4 s8 |
    \voiceFour af,4.~ |
    af8 g-. f-. |
    \oneVoice g8-. g'4-\slurShapeM (~ |
    g8 f16 ef d c |
    
    \barNumberCheck 81
    b!8 c) d-. |
    <c ef>8( <d f>) <c ef>->~ |
    \voiceOne ef8 d16(\prall c) d8-. |
    \oneVoice <b d>4^\aTempo <d f>8->-\slurShapeK (~ |
    q8 <c e!>) <b d>-. |
    q4 <d f>8->(~ |
    q8 <c e>) <b d>-. |
    \osp #'(-0.5 . 0) q4( <d f>8-.) |
    
    \barNumberCheck 89
    \voiceOne e8 f g |
    \omit TupletBracket
    \tuplet 3/2 { f16-\slurShapeL ( e d } e8-.) d-. |
    \oneVoice c8( e) g-. |
    a,8( c) f-. |
    g,8( c) e-. |
    a,8( c) f-. |
    g,8( c) e-. |
    <f, d'>8-. <e c'>-. <d b'>-. |
    
    \barNumberCheck 97
    c'4( c'8) |
    a8( f) c'-. |
    g8( e) c'-. |
    a8( f) c'-. |
    g8( e) c'-. |
    a8-. g16( f e d |
    e16 g b,d c e |
    f,16 d' e, c' d, b' |
    
    \barNumberCheck 105
    \override Parentheses.font-size = #-3
    <c, \parenthesize c'>4.->) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s8 \voiceFour g'4 |
    a8( b c) |
    s8 g4 |
    a8( b c) |
    g4. |
    g4. |
    g4. |
    g4. |
    
    \barNumberCheck 9
    r8 g( a) |
    b4. |
    s4.*2 |
    s8 b4 |
    c4( b8) |
    s8 b4 |
    c4( b8) |
    
    \barNumberCheck 17
    d4. |
    d4. |
    d4. |
    d4. |
    s4.*4 |
    
    \barNumberCheck 25
    \osp #'(0 . -2) g16( d b g c8 |
    b4 c8) |
    \osp #'(0 . -2) g'16( d b g c8 |
    b4 c8) |
    g'16( d b g cs8) |
    d4. |
    bf4. |
    s4. |
    
    \barNumberCheck 33
    \osp #'(0 . 1) a'16( e cs a d8 |
    cs4 d8) |
    \osp #'(0 . 0.5) a'16( e cs a d8 |
    cs4) d8( |
    c!4 ef8~ |
    ef8 d c |
    d4.~ |
    d8) c4 |
    
    \barNumberCheck 41
    s4. |
    d4. |
    d4. |
    d4. |
    d4. |
    d4. |
    d4. |
    s4. |
    
    \barNumberCheck 49
    s4. |
    c4. |
    b4. |
    c4. |
    b4. |
    s4.*2 |
    c4. |
    
    \barNumberCheck 57
    b4. |
    c4. |
    b4. |
    s4. |
    g4. |
    g4 fs8 |
    s4. |
  }
  \repeat volta 2 {
    g'16( d b g af8 |
    
    \barNumberCheck 65
    g8-.) c-. b-. |
    g'16( d b g af8 |
    g8-.) c-. b-. |
    g'16( e! c g bf8 |
    af4) g8-. |
    g'16( e c g bf8 |
    af4) g8-. |
    f'16 c a! f \oneVoice <c' ef>8->~ |
    
    \barNumberCheck 73
    q8 <bf d>-. <a c>-. |
    \voiceFour bf'16 f d bf \oneVoice <f' af>8->~ |
    q8 <ef g>-. <d f>-. |
    g16 ef bf g \oneVoice g'8(~ |
    \voiceOne g8 f) ef-. |
    d4. |
    s4.*2 |
    
    \barNumberCheck 81
    s4. |
    s4 \voiceFour \hideNoteHead c8~ |
    c8 b4 |
    s4.*5 |
    
    \barNumberCheck 89
    c4. |
    c4 b8 |
    s4.*6 |
    
    \barNumberCheck 97
    s4.*8 |
    
    \barNumberCheck 105
    s4. |
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4.*24 |
    
    \barNumberCheck 25
    \clef treble \voiceThree g'4( f!8) |
    g4( af8) |
    g4( f8) |
    g4( af8) |
    s4.*4 |
    
    \barNumberCheck 33
    a4( g8) |
    a4( bf8) |
    a4( g8) |
    a4( bf8) |
    a4( g8 |
    \oneVoice fs4 d8 |
    g4 d8 |
    ef4. |
    
    \barNumberCheck 41
    d4 \clef bass d,8-.) |
    s4.*7 |
    
    \barNumberCheck 49
    s4.*8 |
    
    \barNumberCheck 57
    s4.*7 |
  }
  \repeat volta 2 {
    s4. |
    
    \barNumberCheck 65
    s4.*8 |
    
    \barNumberCheck 73
    s4.*4 |
    \voiceThree f'4.~ |
    f8 ef-. d-. |
    \oneVoice \osp #'(0 . 1.5) ef8.( d16 c bf |
    \voiceThree af4) f'8->-\slurShapeJ (~ |
    
    \barNumberCheck 81
    f8 ef) d-. |
    s4.*7 |
    
    \barNumberCheck 89
    s4.*16 |
    
    \barNumberCheck 105
    s4. |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4.*4 |
    c'16( g e c g8-.) |
    c,4( g'8) |
    c'16( g e c g8-.) |
    c,4( g'8) |
    
    \barNumberCheck 9
    c'4.( |
    b4) \osp #'(0 . 1) g8( |
    a8 fs d |
    g8 d b |
    g4.) |
    d4( g8) |
    g'4. |
    \osp #'(0 . 2.5) d4( g,8) |
    
    \barNumberCheck 17
    g''16( d b g d8-.) |
    g,4( d8) |
    g''16( d b g d8-.) |
    g,4( d8) |
    g8( a b |
    c4.) |
    d8( e fs |
    \stemDown g8 d g,) |
    
    \barNumberCheck 25
    \clef treble \voiceTwo g'4. |
    g4. |
    g4. |
    g4. |
    \clef bass \oneVoice g4-\slurShapeD ( a!8 |
    bf4 a8 |
    g4 g'8 |
    a,4 a,8-.) |
    
    \barNumberCheck 33
    \clef treble \voiceTwo a'4. |
    a4. |
    a4. |
    a4. |
    a4. |
    s4.*3 |
    
    \barNumberCheck 41
    s4. |
    \clef bass \oneVoice \osp #'(0 . 2) d16( a fs d d,8-.)\noBeam |
    g4( d8) |
    \osp #'(0 . 2) d''16( a fs d d,8-.)\noBeam |
    g4( d8) |
    \osp #'(0 . 2) d''16( a fs d d,8-.)\noBeam |
    g8( a b |
    c8 d-.) d,-. |
    
    \barNumberCheck 49
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    \osp #'(0 . 2.5) g''16( e c g g,8-.)\noBeam |
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    \osp #'(0 . 2.5) g''16( e c g g,8-.)\noBeam |
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    c8-. d-. d,-. |
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    \osp #'(0 . 2.5) g''16( e c g g,8-.)\noBeam |
    
    \barNumberCheck 57
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    \osp #'(0 . 2.5) g''16( e c g g,8-.)\noBeam |
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    c8-. d-. d,-. |
    g8( a b |
    c8 d-.) d,-. |
    g4.-> |
  }
  \repeat volta 2 {
    g4. |
    
    \barNumberCheck 65
    g4. |
    g4. |
    g4. |
    c,4.( |
    c'4.) |
    c,4.( |
    c'4.) |
    f,4. |
    
    \barNumberCheck 73
    f4.( |
    bf4.) |
    \osp #'(2 . 0) bf4.( |
    ef4) <ef' g>8 |
    \voiceTwo d4-\slurShapeI ( c8 |
    bf4.) |
    s4. |
    af4.( |
    
    \barNumberCheck 81
    g4.) |
    \oneVoice c8( b) c-. |
    g4.-> |
    \osp #'(0 . 1.5) g'16( d b g g,8-.)\noBeam |
    c,4( g'8) |
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    c,4( g'8) |
    \osp #'(0 . 1.5) g''16( d b g g,8-.)\noBeam |
    
    \barNumberCheck 89
    <c c'>8-. <d d'>-. <e e'>-. |
    \stemDown f8( g-.) g,-. |
    \osp #'(0 . 2) c'16( g e c \stemNeutral c,8-.)\noBeam |
    \osp #'(0 . 3) c''16( a f c c,8-.)\noBeam |
    \osp #'(0 . 2) c''16( g e c c,8-.)\noBeam |
    \osp #'(0 . 3) c''16( a f c c,8-.)\noBeam |
    \osp #'(0 . 2) c''16( g e c c,8-.)\noBeam |
    \stemDown f'8-. g-. g,-. |
    
    \barNumberCheck 97
    \osp #'(0 . 2) c'16( g e c \stemNeutral c,8-.)\noBeam |
    \osp #'(0 . 3) c''16( a f c c,8-.)\noBeam |
    \osp #'(0 . 2) c''16( g e c c,8-.)\noBeam |
    \osp #'(0 . 3) c''16( a f c c,8-.)\noBeam |
    \osp #'(0 . 2) c''16( g e c c,8-.)\noBeam |
    \addStaccato {
      f8 g b |
      c8 d e |
      \stemDown f8 g g, |
    }
    
    \barNumberCheck 105
    \stemNeutral c,4.-> |
  }
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\mf |
    s4-\tweak Y-offset #-1 \> s8\! |
    s4.\p |
    s4. |
    s4\< s8\! |
    s8-\tweak Y-offset #-1 -\tag layout \sf -\tag midi \f s4-\tag midi \p |
    s4\< s8\! |
    s4-\tag layout \sf -\tag midi \f \> s8\! |
    
    \barNumberCheck 9
    s4-\tweak Y-offset #0 \f s8-\tweak Y-offset #0 -\tag layout \sf
      -\tag midi \ff |
    s4.-\tag midi \f |
    s4. |
    s4\> s8\! |
    s4.\mf |
    s4. |
    s4.-\tweak Y-offset #0 \p |
    s4. |
    
    \barNumberCheck 17
    s4-\tweak Y-offset #1.5 \< s8\! |
    s8-\tag layout \sf -\tag midi \f s4-\tag midi \p |
    s4. |
    s4-\tag layout \sf -\tag midi \f \> s8\! |
    s4.\p |
    s4.*3 |
    
    \barNumberCheck 25
    s4\mf\< s8-\tag layout \sf -\tag midi \ff |
    s4\> s8\! |
    s4\< s8-\tag layout \sf -\tag midi \ff |
    s4\> s8\! |
    s4.\mf |
    s4.*2 |
    s4-\tweak Y-offset #1.5 \>s8\! |
    
    \barNumberCheck 33
    s4\mf\< s8-\tag layout \sf -\tag midi \ff |
    s4\> s8\! |
    s4-\tweak Y-offset #-1 \< s8-\tweak Y-offset #-1.5 -\tag layout \sf
      -\tag midi \ff |
    s4\> s8\! |
    s8 s4\p\< |
    s8\! s\> s\! |
    s4.*2 |
    
    \barNumberCheck 41
    s4-\tweak Y-offset #1 \> s8\! |
    \override DynamicLineSpanner.Y-offset = #1
    s4.\cresc |
    s4.*3 |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 49
    s4\f\> s8\! |
    s4.\p |
    s4.\cresc |
    s4.*2 |
    s4.-\tweak Y-offset #-2.5 \f |
    s4\f\> s8\! |
    s4.\p |
    
    \barNumberCheck 57
    s4.*3 |
    s4.-\tweak Y-offset #-2.5 \f |
    s4.*3 |
  }
  \repeat volta 2 {
    \override DynamicLineSpanner.Y-offset = #-0.5
    s4.\f |
    
    \barNumberCheck 65
    s8 s4\p |
    s4.\f |
    s8 s4\p |
    s4.\f |
    s8 s4\p |
    s4.\f |
    s8 s4-\tweak Y-offset #-1 \p |
    s4.-\tweak Y-offset #-1 \f |
    
    \barNumberCheck 73
    s4.*3 |
    s4 s8-\tweak Y-offset #0.5 -\tag layout \sf -\tag midi \ff |
    s4.-\tweak Y-offset #1 \mf |
    s4. |
    s8.\< s\! |
    s4. |
    
    \barNumberCheck 81
    s4. |
    s4.-\tweak Y-offset #-2 ^\pocoSostenuto |
    s4. |
    s4.\p |
    \override DynamicLineSpanner.Y-offset = #1
    s4.-\tweak Y-offset #-1 \cresc |
    s4.*3 |
    
    \barNumberCheck 89
    s4.\f |
    s4. |
    s4.\f |
    s4.\p |
    s4.-\tweak Y-offset #-0.5 \cresc |
    s4.*2 |
    s4.-\tweak Y-offset #-1.5 \f |
    
    \barNumberCheck 97 
    s4.\f |
    s4.\p |
    s4.*3 |
    s4.-\tweak Y-offset #-1 \f |
    s4.*2 |
    
    \barNumberCheck 105
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 84
    s4.*56 |
    
    \barNumberCheck 57
    s4.*5 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 76 s8 \tempo 4. = 69 s \tempo 4. = 63 s |
    \tempo 4. = 58 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 84 
    s4. |
    
    \barNumberCheck 65
    s4.*16 |
    
    \barNumberCheck 81
    s4. |
    \tempo 4. = 76 s4 \tempo 4. = 69 s8 |
    s8 \tempo 4. = 63 s4 |
    \tempo 4. = 84
    s4.*5 |
    
    \barNumberCheck 89
    s4.*8 |
    
    \barNumberCheck 97
    s4.*7 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 76 s8 \tempo 4. = 69 s \tempo 4. = 63 s |
          
          \barNumberCheck 105
          \tempo 4. = 58 s4. |
        }
        {
          \tempo 4. = 72 s8 \tempo 4. = 63 s \tempo 4. = 56 s |
          
          \barNumberCheck 105
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*6 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*8 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
