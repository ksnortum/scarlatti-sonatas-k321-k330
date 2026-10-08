%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.329"
  source = "https://s9.imslp.org/files/imglnks/usimg/f/fa/IMSLP914799-PMLP524116-E4611_18-22-Scarlatti_-_Keyboard_Sonatas,_Supp_01-16.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . -1.5) (0 . -1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -2) (0 . -2.8))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (-0.5 . -0.5) (0 . -0.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -0.5))
                      ) \etc
slurShapeG = \shape #'((0 . -2) (0 . 0.5) (0 . 1) (0 . -1)) \etc
slurShapeH = \shape #'(
                        ((0 . -2.5) (0 . -2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0.1) (0 . 0.1) (0 . 0.1) (0 . 0.1))
                        ((0 . 0) (0 . 0.5) (0 . 1) (0 . -1))
                      ) \etc
slurShapeJ = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc

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
    g''4.(-\tag layout \prallprall -\tag midi \prall f8 e4) a-- |
    g4.(-\tag layout \prallprall -\tag midi \prall f8 e4) g-- |
    d4( e8 f  e d c b |
    c4 g) g-. g-. |
    \addTenuto {
      c4 c c c |
      c4 c c c |
    }
    \osp #'(0 . 2) c8( d e f  e d c b |
    c4 g) g-. g-. |
    
    \barNumberCheck 9
    \addTenuto {
      c4 c c c |
      c4 c c c |
    }
    \osp #'(0 . 2) c8( d e f  e d c b |
    c4 g) g-. g-. |
    g'4.(-\tag layout \prallprall -\tag midi \prall f8 e4) g-- |
    cs,4( d2.) |
    g4.(-\tag layout \prallprall -\tag midi \prall f8 e4) g-- |
    b,8( c d2.) |
    
    \barNumberCheck 17
    f4.(-\tag layout \prallprall -\tag midi \prall e8 d4) a'-- |
    b,4( c2) g'4-- |
    f4.(-\tag layout \prallprall -\tag midi \prall e8 d4) a'-- |
    b,4( c2) g'4-- |
    \tuplet 3/2 { e8( f g } f4) \tuplet 3/2 { d8( e f } e4) |
    \tupletOff \tuplet 3/2 { c8( d e } d4) \tuplet 3/2 { b8( c d } c4~ |
    c8) a'( g f  e d c b |
    c4) c-. c-. g'-. |
    
    \barNumberCheck 25
    \tuplet 3/2 { e8( f g } f4) \tuplet 3/2 { d8( e f } e4) |
    \tuplet 3/2 { c8( d e } d4) \tuplet 3/2 { b8( c d } c4~ |
    c8) a'( g f  e d c b |
    c1)\fermata |
    \bar "||"
    ef4.(-\tag layout \prallprall -\tag midi \prall d8 c4) f-- |
    ef4.(-\tag layout \prallprall -\tag midi \prall d8 c4) g'-- |
    g4( c, b) \grace { c16( } c8.)(\trill b32 c) |
    c4( d g,2) |
    
    \barNumberCheck 33
    ef'4.(-\tag layout \prallprall -\tag midi \prall d8 c4) f-- |
    ef4.(-\tag layout \prallprall -\tag midi \prall d8 c4) g'-- |
    c4( c, b) \grace { c16( } c8.)(\trill b32 c) |
    c4( d g,2) |
    d'4.(-\tag layout \prallprall -\tag midi \prall c8 d4) d-- |
    d4-- a'( f cs) |
    d4.(-\tag layout \prallprall -\tag midi \prall cs8 d4) d-- |
    d4-- g( e b) |
    
    \barNumberCheck 41
    c4.(-\tag layout \prallprall -\tag midi \prall b8 c4) c-- |
    \osp #'(0 . -0.5) fs4( a fs c |
    a'4 c,) c4.(\trill b16 a |
    a4 b2) d4( |
    \tupletOn \tuplet 3/2 { b8 c d } c4) \tuplet 3/2 { a8( b c } b4) |
    \tupletOff \tuplet 3/2 { g8( a b } a4)
      \tuplet 3/2 { \osp #'(0 . -0.5) fs8( g a } g4~ |
    g8) e'-\slurShapeC ( d c  b a g fs |
    g2.) d'4( |
    
    \barNumberCheck 49
    \tupletOn \tuplet 3/2 { b8 c d } c4) \tuplet 3/2 { a8( b c } b4) |
    \tupletOff \tuplet 3/2 { g8( a b } a4)
      \tuplet 3/2 { \osp #'(0 . -0.5) fs8( g a } g4~ |
    g8) \osp #'(0 . -1) e'( d c  b a g fs |
    g1)\fermata |
    \bar "||"
    bf'4.(-\tag layout \prallprall -\tag midi \prall a8 g4) c-- |
    bf4.(-\tag layout \prallprall -\tag midi \prall a8 g4) bf( |
    c,4 a') \grace { g16( } g4.)(\trill fs16 g) |
    g4( a d,2) |
    
    \barNumberCheck 57
    bf'4.(-\tag layout \prallprall -\tag midi \prall a8 g4) c-- |
    bf4.(-\tag layout \prallprall -\tag midi \prall a8 g4) bf( |
    c,4 a') \grace { g16( } g4.)(\trill fs16 g) |
    g4( a d,2) |
    d4.(-\tag layout \prallprall -\tag midi \prall c8 d4) b'! |
    b4( c c,2) |
    c4.(-\tag layout \prallprall -\tag midi \prall b8 c4) a'-- |
    a4( b b,) c-- |
    
    \barNumberCheck 65
    d4.(-\tag layout \prallprall -\tag midi \prall c8 b4) e-- |
    d4.(-\tag layout \prallprall -\tag midi \prall c8 b4) g'-- |
    a,8( e' d c  b a g fs |
    g4 a b) c-- |
    d4.(-\tag layout \prallprall -\tag midi \prall c8 b4) e-- |
    d4.(-\tag layout \prallprall -\tag midi \prall c8 b4) g'-- |
    a,8( e' d c  b a g fs |
    g4) g'8( d  d4-.) g8( b, |
    
    \barNumberCheck 73
    b4-.) d8( g,  g4-.) b8( d, |
    d4-.) g8( b,  b4-.) d8-\slurShapeE ( g, |
    g4-.) g'-. g2->~ |
    g8 \osp #'(0 . -1) e'( d c  b a g fs |
    g8) \osp #'(0 . -1) e'( d c  b a g fs |
    g8) \osp #'(0 . -1) e'( d c  b a g fs |
    g1) |
  }
  \repeat volta 2 {
    d'4.(-\tag layout \prallprall -\tag midi \prall c8 b4) e-- |
    
    \barNumberCheck 81
    d4.(-\tag layout \prallprall -\tag midi \prall c8 b4) \osp #'(0 . 1) a'( |
    gs4 f! e b |
    c4.-\insideSlur -\tag layout \prallprall -\tag midi \prall b8 a2) |
    c4.(-\tag layout \prallprall -\tag midi \prall b8 c4) e-- |
    d4.(-\tag layout \prallprall -\tag midi \prall c8 b4) a'-- |
    a4( fs b, a' |
    g4. fs8 e4) b'( |
    e,4) e-- e-- e-- |
    
    \barNumberCheck 89
    e4-- e-- e-- e-- |
    \osp #'(0 . 2) e4( c b as) |
    as4( \stemUp b2.) |
    \stemNeutral d4.(-\tag layout \prallprall -\tag midi \prall c8 d4) f!-- |
    d4.(-\tag layout \prallprall -\tag midi \prall c8 d4) f( |
    d4 b' gs d |
    c4.-\tag layout \prallprall -\tag midi \prall b8 a2) |
    c4.(-\tag layout \prallprall -\tag midi \prall b8 c4) a'-- |
    
    \barNumberCheck 97
    c,4.(-\tag layout \prallprall -\tag midi \prall b8 c4) a'-\slurShapeF \( |
    g4 e c bf |
    \grace { c16( } bf4)-\insideSlur \trill a2\) a4-- |
    \tupletOn \tuplet 3/2 { f'8( g a } f4) \tuplet 3/2 { e8( f g } e4) |
    \tupletOff \tuplet 3/2 { d8( e f } d4) \tuplet 3/2 { c8( d e } c4) |
    \tuplet 3/2 { bf8-\slurShapeG \( c d } bf2 a4 |
    \grace { bf16( } a4)-\insideSlur \trill g2\) c4-\slurShapeI ( |
    a8 b! c4) c-. c-. |
    b4( a') \tupletOn \tuplet 3/2 { a8( g f } f4-.) |
    \tupletOff \tuplet 3/2 { f8( e d } d4) \tuplet 3/2 { f8( e d } d4) |
    \tuplet 3/2 { d8( c b } b4) b-. b-. |
    f'4( d2 c8 b) |
    \appoggiatura { b4 } c1\fermata |
    \bar "||"
    af'4.(-\tag layout \prallprall -\tag midi \prall ^\trillFlat g8 f4) bf-- |
    af4.(-\tag layout \prallprall -\tag midi \prall ^\trillFlat g8 f4) c'( |
    bf4 f e f) |
    
    \barNumberCheck 113
    f4( g c,2) |
    af'4.(-\tag layout \prallprall -\tag midi \prall ^\trillFlat g8 f4) bf( |
    af4 g f ef |
    d4 c b!2 |
    c2.) d4-- |
    ef4.(-\tag layout \prallprall -\tag midi \prall d8 c4) f |
    ef4.(-\tag layout \prallprall -\tag midi \prall d8 c4) g'( |
    a!4 ef d c |
    
    \barNumberCheck 121
    b4.-\tag layout \prallprall -\tag midi \prall a8 g2) |
    d'4.(-\tag layout \prallprall -\tag midi \prall c8 b4) e-- |
    d4.(-\tag layout \prallprall -\tag midi \prall c8 b4) a'( |
    f4 d c b |
    c4 d e f) |
    g4.(-\tag layout \prallprall -\tag midi \prall f8 e4) a-- |
    g4.(-\tag layout \prallprall -\tag midi \prall f8 e4) g( |
    d4 e8 f  e d c b |
    
    \barNumberCheck 129
    c4 g) g-. g-. |
    \addTenuto {
      c4 c c c |
      c4 c c c |
    }
    c8( d e f  e d c b |
    c4-.) c'8( g  g4-.) c8( e, |
    e4-.) g8( c,  c4-.) e8( g, |
    g4-.) c8( e,  e4-.) g8( c, |
    c4-.) c' c2->(~ |
    
    \barNumberCheck 137
    c8 d e f  e d c b |
    c8) a'( g f  e d c b |
    c8) a'( g f  e d c b |
    c8) c'( b a  g f e d |
    c1) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    c'2 r |
    c2 r |
    r4 f,( g) g,-. |
    c2 r |
    e'4.(-\tag layout \prallprall -\tag midi \prall d8 c4) f-- |
    e4.(-\tag layout \prallprall -\tag midi \prall d8 c4) e-- |
    r4 f,( g) g,-. |
    c2 r |
    
    \barNumberCheck 9
    e'4.(-\tag layout \prallprall -\tag midi \prall d8 c4) f-- |
    e4.(-\tag layout \prallprall -\tag midi \prall d8 c4) e-- |
    r4 f,( g) g,-. |
    c2( c,) |
    \addTenuto {
      r4 c'' c c |
      r4 b b b |
      r4 c c c |
      r4 g g g |
      
      \barNumberCheck 17
      r4 f f f |
      r4 e e e |
      r4 f f f |
      r4 e e e |
    }
    r4 a2( g4~ |
    g4 f2 e4 |
    f4) f-\slurShapeA _( g g, |
    c4-.) g-. c,2 |
    
    \barNumberCheck 25
    r4 a''2( g4~ |
    g4 f2 e4 |
    f4) \osp #'(-2 . 0) f_( g g, |
    c,1)\fermata |
    c''1 |
    c1 |
    af2 af( |
    g2. g,4) |
    
    \barNumberCheck 33
    c'1 |
    c1 |
    af2 af( |
    g2. g,4) |
    \addTenuto {
      r4 g' g g |
      f4 f f f |
      f4 f f f |
      e4 e e e |
      
      \barNumberCheck 41
      e4 e e e |
      d4 d d d |
      d4 d d d\slurShapeB _( |
    }
    g4 g,) g2 |
    r4 e''2( d4~ |
    d4 c2 b4 |
    c4) c,( \stemUp d) d-\slurShapeD _( |
    g,4 d' \stemNeutral g2) |
    
    \barNumberCheck 49
    r4 e'2( d4~ |
    d4 c2 b4 |
    c4) c,( \stemUp d) d_( |
    g,1)\fermata |
    g''1 |
    g1 |
    \stemNeutral ef2 ef( |
    d1) |
    
    \barNumberCheck 57
    g1 |
    g1 |
    \stemNeutral ef2 ef( |
    d1) |
    b!2. b4( |
    a4 g fs e |
    d2.) \osp #'(0 . 2) d4( |
    \override Parentheses.font-size = #-1
    \parenLeft \parenthesize g,2.) a'4-- |
    
    \barNumberCheck 65
    b4( a g) c-- |
    b4( a g) \parenRight \parenthesize b,-- |
    c2_( d4 d, |
    g2.) a'4-- |
    b4( a g) c-- |
    b4( a g) b,( |
    c4) c_( d d, |
    g2) g |
    
    \barNumberCheck 73
    g2 g |
    g2 g |
    \osp #'(1 . 1) g2._( b4 |
    c2 \stemUp d4 a |
    b4 c d a |
    b4 c d d, |
    g1) |
  }
  \repeat volta 2 {
    g'1( |
    
    \barNumberCheck 81
    f!1 |
    e1 |
    a1) |
    \stemNeutral a2( g! |
    fs2 e |
    ds2) ds( |
    e1 ) |
    g'4.(-\tag layout \prallprall -\tag midi \prall fs8 e4) a-- |
    
    \barNumberCheck 89
    g4.(-\tag layout \prallprall -\tag midi \prall fs8 e4) d-- |
    \osp #'(-1 . 0) c2_( c, |
    b1) |
    b'2( a |
    gs2 f! |
    e2) e( |
    a,1) |
    a'2( g |
    
    \barNumberCheck 97
    f2) f( |
    e2) e( |
    f2 f,) |
    \clef treble r4 d'''2( c4~ |
    c4 bf2 a4~ |
    a4 g f) \clef bass f,-\slurShapeH _( |
    c2 e |
    f2 e |
    
    \barNumberCheck 105
    d1) |
    d1_( |
    g2 g,) |
    g2 g( |
    c,1)\fermata |
    f''1 |
    f1 |
    df2 df( |
    
    \barNumberCheck 113
    c1) |
    f1 |
    f1 |
    f4( af g f |
    ef4 d c bf |
    af1)-\slurShapeJ ( |
    g1 |
    fs1 |
    
    \barNumberCheck 121
    g1) |
    g2 g( |
    f!2) f |
    f2 f( |
    e2. d4 |
    c2) c |
    c2 c |
    r4 f_( g g, |
    
    \barNumberCheck 129
    c1) |
    e'4.(-\tag layout \prallprall -\tag midi \prall d8 c4) f-- |
    e4.(-\tag layout \prallprall -\tag midi \prall d8 c4) e,-- |
    r4 \osp #'(-2 . 0) f_( g g, |
    c2) c |
    c2 c |
    c2 c |
    c2.( e4 |
    
    \barNumberCheck 137
    f4) f( g d |
    e4 f g d |
    e4 f g d |
    e4 f g) g,( |
    c,1) |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1-\tweak Y-offset #-4.5 \p |
    s1*7 |
    
    \barNumberCheck 9
    s1*4 |
    s1\mf |
    s4\> s2.\! |
    s1*2 |
    
    \barNumberCheck 17
    s1*4 |
    s1\mf |
    s1*3 |
    
    \barNumberCheck 25
    s4\p s2.\cresc |
    s2. s4\mf |
    s1*2 |
    s1-\tweak Y-offset #0.25 \p |
    s2. s4\mf |
    s1*2 |
    
    \barNumberCheck 33
    s1-\tweak Y-offset #0.25 \p |
    s2. s4\mf |
    s1\p |
    s4 s2.\mf |
    s1\p |
    s4 s2.\mf |
    s1\p |
    s4 s2.\mf |
    
    \barNumberCheck 41
    s2.\p s4\< |
    s1\f |
    s1 |
    s4\> s2.\mf |
    s1*3 |
    s2. s4\p |
    
    \barNumberCheck 49
    s4 s2.\cresc |
    s2. s4\f |
    s1*2 |
    s1\mf |
    s1*3 |
    
    \barNumberCheck 57
    s1\p |
    s1*3 |
    s1\mf |
    s1*2 |
    s2. s4\p |
    
    \barNumberCheck 65
    s1*4 |
    s1-\tweak Y-offset #0 \mf |
    s1 |
    s2..\< s8\! |
    s1\f |
    
    \barNumberCheck 73
    s1*4 |
    s8 s2..\p\cresc |
    s1 |
    s1\f |
  }
  \repeat volta 2 {
    s1\p |
    
    \barNumberCheck 81
    s2. s4\mf |
    s1*2 |
    s1\p |
    s2 s4\< s\! |
    s1\mf |
    s2. s4\f |
    s1 |
    
    \barNumberCheck 89
    s2. s4-\tweak Y-offset #0 \mf |
    s1 |
    s4\< s2.\! |
    \override DynamicLineSpanner.Y-offset = #0.5
    s1\p |
    s1\cresc |
    s1-\tweak Y-offset #-1 \mf |
    s1 |
    s1\p |
    
    \barNumberCheck 97
    s2.\cresc s4\mf |
    s1*2 |
    s1\mf |
    s1*4 |
    
    \barNumberCheck 105
    s1*2 |
    s2 s4\< s\! |
    s1\f |
    \grace { s4-\tweak Y-offset #0.5 \> } s1\! |
    s1\mf |
    s1*2 |
    
    \barNumberCheck 113
    s1 |
    s1\p |
    s1\cresc |
    s2 s-\tweak Y-offset #0.5 \mf |
    s1*4 |
    
    \barNumberCheck 121
    s1 |
    s1\p |
    s2. s4\mf |
    s1*5 |
    
    \barNumberCheck 129
    s1 |
    s1-\tweak Y-offset #1.5 \f |
    s2. s4\mf |
    s2..\< s8\! |
    s1\f |
    s1*3 |
    
    \barNumberCheck 137
    s1 |
    s8 s2..\p |
    s1\cresc |
    s1 |
    s1\f |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 96
    s1*24 |
    
    \barNumberCheck 25
    s1*3 |
    \set Score.tempoHideNote = ##t
    \tempo 2 = 69 s1 |
    \tempo 2 = 96
    s1*4 |
    
    \barNumberCheck 33
    s1*16 |
    
    \barNumberCheck 49
    s1*3 |
    \tempo 2 = 69 s1 |
    \tempo 2 = 96
    s1*4 |
    
    \barNumberCheck 57
    s1*16 |
    
    \barNumberCheck 73
    s1*5 |
    s4 \tempo 2 = 88 s \tempo 2 = 80 s \tempo 2 = 72 s |
    \tempo 2 = 66 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 96
    s1 |
    
    \barNumberCheck 81
    s1*24 |
    
    \barNumberCheck 105
    s1*4 |
    \tempo 2 = 69 s1 |
    \tempo 2 = 96
    s1*3 |
    
    \barNumberCheck 113
    s1*24 |
    
    \barNumberCheck 137
    s1*3 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 88 s \tempo 2 = 80 s \tempo 2 = 72 s |
          \tempo 2 = 66 s1 |
        }
        {
          s4 \tempo 2 = 84 s \tempo 2 = 72 s \tempo 2 = 63 s |
          \tempo 2 = 56 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*6 \break
  s1*6 \break
  s1*6 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 2
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*5 \pageBreak
  
  % page 3
  s1*6 \break
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 4
  s1*6 \break
  s1*6 \break
  s1*6 \break
  s1*6 \break
  s1*6 \pageBreak
  
  % page 5
  s1*7 \break
  s1*7 \break
  s1*6 \break
  s1*6 \break
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
