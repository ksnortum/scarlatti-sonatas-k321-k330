%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.326"
  source = "https://s9.imslp.org/files/imglnks/usimg/8/82/IMSLP914438-PMLP523804-E4483_1-3-Scarlatti_-_Keyboard_Sonatas,_L.201-205.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . -13) (1 . -11) (0 . 4))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (-0.2 . 0) (-0.2 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . -2) (0 . -1) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 1) (0 . -0.7))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 1) (0 . 1) (-0.3 . -4)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 1) (0 . -1.5))
                      ) \etc
slurShapeI = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 2/2
  \key c \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    c'''2-> g-> |
    \osp #'(0 . 1.5) e4.( d8  c b a g |
    f8 e d c  b a g f |
    e4-.) g''-. \grace { a16( } g2)\trill |
    R1*2 |
    r4 g8( a  g f e d |
    e8 c e f  e d c b |
    
    \barNumberCheck 9
    c8 g) g'( a  g f e d |
    e8 c e f  e d c b |
    \stemDown c8 b c g <d' f>2 |
    <c e>2~ e8) d( c b |
    c8 b c g <d' f>2 |
    <c e>2~ e8) d\( c b |
    c8 g c d  e c e fs |
    g8 d e b \grace { d16( } c2)\trill |
    
    \barNumberCheck 17
    b8-.\) \osp #'(0 . -1) fs'( g d  e fs g c, |
    d8 fs g b,  c fs g a, |
    b2) \grace { g'16( } g2)~\startTrillSpan |
    g1 <>\stopTrillSpan |
    g4-. c( b a |
    g4 fs e d |
    c4-.) \stemNeutral b8( a  b g a fs |
    g8-.) fs'( g d  e fs g c, |
    
    \barNumberCheck 25
    d8 fs g b,  c fs g a, |
    b2) \grace { g'16( } g2)~\startTrillSpan |
    g1 <>\stopTrillSpan |
    g4-. c( b a |
    g4 fs e d |
    c4-.) b8( a  b g a fs |
    g8 b d g) g2~-\tag layout \prallprall -\tag midi \prall |
    g8 d( e c  b4-.) a-.\prall |
    
    \barNumberCheck 33
    b8( g b d) b'2~-\tag layout \prallprall -\tag midi \prall |
    b8 d,( e c  b4-.) a-.\prall |
    b8( g b d) d'2~-\tag layout \prallprall -\tag midi \prall |
    d8 b( c a  g4-.) fs-.\prall |
    g8( d e g,)  g4-. fs-.\prall |
    g1-> |
  }
  \repeat volta 2 {
    \osp #'(0.5 . 0) g8( fs g d  <g b>4-.) <e cs'>-. |
    << 
      { 
        \voiceOne d'2( \oneVoice <f, a>4-.) <gs b>-. | 
        
        \barNumberCheck 41
        \voiceOne c8( b c a \oneVoice <e c'>4-.) <fs ds'>-. |
        \voiceOne e'2 \oneVoice g,4-. a-. |
      } 
      \new Voice {  
        \voiceFour \osp #'(0 . 0.5) f8( e f d \hideNoteHead f4) s |
        
        \barNumberCheck 41
        e2 s |
        \osp #'(0 . 0.5) g8( fs g e \hideNoteHead g4) s |
      } 
    >>
    b8( a g fs  g e a fs |
    b8) \osp #'(0 . 1) ds( e b  c ds e a, |
    b8 ds e g, a ds e fs, |
    g2) \osp #'(2.5 . 0) a( |
    b2 c |
    b8) f'!( e d  c a d b |
    
    \barNumberCheck 49
    e8 c <a f'>4~
    << 
      { \voiceOne f'8 e4 d8 | } 
      \new Voice { \voiceFour gs,4 a | } 
    >>
    \override Parentheses.font-size = #-3
    \oneVoice <\parenthesize gs e'>8-.) \osp #'(0 . -1.5) gs'( a e  f gs a d, |
    e8 gs a c,  d gs a b, |
    c2) \grace { a'16( } a2)~\startTrillSpan |
    a1 <>\stopTrillSpan |
    a4-. \osp #'(0 . -1) d( c b |
    a4 g f e |
    d8 c b a  g f e d |
    
    \barNumberCheck 57
    e8) b''( c g  a b c f, |
    g8 b c e,  f b c d, |
    e2) f( |
    e2 a |
    g4) f-\slurShapeF ( e d |
    c4 b a g |
    <\parenthesize f) f'>4-. e'8-\slurShapeG ( d  e c d b |
    c8) b( c g  a b c f, |
    
    \barNumberCheck 65
    g8 b c e,  f b c d, |
    e2) \grace { c'16( } c2)~\startTrillSpan |
    c1 <>\stopTrillSpan
    c4-. f( e d |
    c4 b a g |
    f8 d e f  e4-.) d-. |
    c8( g' e c  a'4-.) \grace { b16( } b8)-\slurShapeI _(\trill a16 b |
    c8-.) g'( e c  a'4-.) \grace { b16( } \osp #'(0 . -0.5) b8)(\trill a16 b |
    
    \barNumberCheck 73
    c8 g a c,)  c4-. b-.\prall |
    c1-> |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1*3 |
    c2-> g-> |
    c8-\slurShapeB ( b c d  e f g a |
    b8 c d e \clef treble f g a b |
    c2) r |
    r4 g8( a  g f e d |
    
    \barNumberCheck 9
    c2) r |
    r4 g'8( a  g f e d |
    c2) \clef bass r8 d( c b |
    c8 b c g f'2 |
    e2 e8) d( c b |
    c8 b c g f'2 |
    e2.) c4-\slurShapeC _( |
    << 
      { 
        \voiceTwo b2 a |
        
        \barNumberCheck 17
        g2)
      } 
      \new Voice {
        \voiceThree r4 g'2( fs4 |
        
        \barNumberCheck 17
        g2)
      } 
    >>
    \oneVoice c,2( |
    b2 a |
    g8) fs'-\slurShapeA ( g d  e fs g c, |
    d8 fs g b,  c fs g a, |
    b8 g' a, fs'  g, e' fs, d' |
    e,8 c' d, b'  c, a' b, g' |
    a,8 fs' g,4-.) d'-. d,-. |
    g2 c'( |
    
    \barNumberCheck 25
    b2 a |
    g8) fs'-\slurShapeD ( g d  e fs g c, |
    d8 fs g b,  c fs g a, |
    b8 g' a, fs'  g, e' fs, d' |
    e,8 c' d, b'  c, a' b, g' |
    a,8 fs' g,4-.) d'-. d,-. |
    g2. b'4( |
    c4) c(d-.) d,-. |
    
    \barNumberCheck 33
    g2.( b4 |
    c4) c( d-.) d,-. |
    g2.( b4 |
    c4) c( d-.) d,-. |
    b'4( c d-.) d,-. |
    g,1-> |
  }
  \repeat volta 2 {
    g2~ \stemDown g8 g'( f! e |
    d2~ d8) d'( c b |
    
    \barNumberCheck 41
    \stemNeutral a,2~ a8) \osp #'(0 . 0.5) a'( g fs |
    e2~ e8) e'( ds cs |
    ds4-.) b-. e-. c!-. |
    b2 a( |
    g2 fs |
    e8) ds'( e b  c ds e a, |
    b8 ds e g, a ds e fs, |
    gs2 a4-.) b-. |
    
    \barNumberCheck 49
    c4-. d( e f |
    e2) d( |
    c2 b |
    a8) gs'-\slurShapeE ( a e  f gs a d, |
    e8 gs a c,  d gs a b, |
    c8 a' b, g'!  a, f' g, e' |
    f,8 d' e, c'  d, b' c c, |
    g2) b'( |
    
    \barNumberCheck 57
    c2) \clef treble f( |
    e2 d |
    c8) b'_( c g  a b c f, |
    g8 b c e,  f b c d, |
    e8 c' d, b' c, a' b, g' |
    \clef bass a,8 f' g, e'  f, d' e, c' |
    d,8 b' c c,  g'4-.) g,-. |
    c2 f( |
    
    \barNumberCheck 65
    e2 d |
    c8) b'-\slurShapeH ( c g  a b c f, |
    g8 b c e,  f b c d, |
    e8 c' d, b'  c, a' b, g' |
    a,8 f' g, e'  f, d' e, c' |
    d,4-.) c( g'-.) g-. |
    c,2-> f'4-. \osp #'(-1 . 0) d( |
    e4 c f-.) \osp #'(-1 . 0) d( |
    
    \barNumberCheck 73
    e4 f g-.) g,-. |
    c,1-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s1*7 |
    
    \barNumberCheck 9
    s4 s2.\p |
    s1 |
    s1\cresc |
    s1*4 |
    s1-\tweak Y-offset #1 \f |
    
    \barNumberCheck 17
    s8 s4.\p s2\cresc |
    s1 |
    s1\f |
    s1*4 |
    s8 s4.-\tweak Y-offset #-1.5 \p s2\cresc |
    
    \barNumberCheck 25
    s1 |
    s1\f |
    s1*6 |
    
    \barNumberCheck 33
    s1*6 |
  }
  \repeat volta 2 {
    s1\p\cresc |
    s1 |
    
    \barNumberCheck 41
    s1*3 |
    s8\f s4.\p s2\cresc |
    s1 |
    s1-\tweak Y-offset #0 \f |
    s1*2 |
    
    \barNumberCheck 49
    s1 |
    s8 s4.\p s2\cresc |
    s1 |
    s1-\tweak Y-offset #0 \f |
    s1*4 |
    
    \barNumberCheck 57
    s8 s4.\p s2\cresc |
    s1 |
    s1\f |
    s1*4 |
    s8 s4.\p s2\cresc |
    
    \barNumberCheck 65
    s1 |
    s1\f |
    s1*6 |
    
    \barNumberCheck 73
    s1*2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 104
    s1*32 |
    
    \barNumberCheck 33
    s1*4 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 96 s \tempo 2 = 88 s \tempo 2 = 80 s |
    \tempo 2 = 72 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 104
    s1*2 |
    
    \barNumberCheck 41
    s1*32 |
    
    \barNumberCheck 73
    \tag layout { s1*2 | } 
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 96 s \tempo 2 = 88 s \tempo 2 = 80 s |
          \tempo 2 = 72 s1 |
        }
        {
          s4 \tempo 2 = 92 s \tempo 2 = 80 s \tempo 2 = 69 s |
          \tempo 2 = 60 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \pageBreak
  
  % page 2
  s1*4 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
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
