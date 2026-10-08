%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.322"
  source = "https://s9.imslp.org/files/imglnks/usimg/f/f8/IMSLP914603-PMLP476139-E4553_7-9-Scarlatti_-_Keyboard_Sonatas,_L.481-500.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.5) (0.3 . 0.5) (0.5 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 1) (0.5 . 1) (1 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 1) (0.5 . 1) (1 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . -0.2) (0 . 0.2) (0 . 0.5) (0 . -0.5)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 0) (0.5 . 0) (0 . -1)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.7) (0.5 . 1) (1 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.7) (0.5 . 1) (1 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.3))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 1) (0 . 2.5) (0.3 . 2.7))
                      ) \etc

tieShapeA = \shape #'((0 . 1) (0 . 1.2) (1 . 1.2) (1 . 1)) \etc
tieShapeB = \shape #'((0 . 2) (0 . 2.2) (1 . 2.2) (1 . 2)) \etc

%
% Music
%

global = {
  \time 2/2
  \key a \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    e''2 e |
    e2. a8( e |
    \appoggiatura { gs8 } fs4 e8 d  cs4-.) b-. |
    cs8( d e4)  r4 \osp #'(0 . 1.5) a8( cs, |
    \appoggiatura { e8 } d4 cs8 b  a4-.) gs-. |
    a4( e) r cs'8-\slurShapeA ( e |
    d4-.) b-. e,-. d'-. |
    \grace { e16( } d4)(\trill cs) r cs8( e |
    
    \barNumberCheck 9
    d4-.) b'2 d,4-. |
    \grace { e16( } d4)(\trill cs) r a'8( cs, |
    b4-.) fs'2 a,4-. |
    \grace { b16( } a4)-\slurShapeB (\trill gs) r e'8-\slurShapeC ( b |
    b4-.) fs'2 a,4-. |
    \grace { b16( } a4)-\slurShapeE (\trill gs) r e'8( b |
    b4-.) b-. b-. e8( gs,) |
    gs4( a) r e'8( a,) |
    
    \barNumberCheck 17
    a4( \stemUp b) r \stemNeutral e8( b) |
    b4( cs) r a'8-\slurShapeF ( cs, |
    ds4-.) b'8( ds,  ds4-.) b'8( ds, |
    e4-.) b'8( e,  fs4-.) b8( fs |
    gs4-.) a8( b  a gs fs e |
    ds4-.) b-.  r b'8( g |
    g4-.) g-. g-. g-. |
    \acciaccatura { a8 } g( fs e4)  r b'8( e, |
    
    \barNumberCheck 25
    e4-.) e-. e-. e-. |
    e8( d c4) c'2->-\slurShapeG (~ |
    c4 b8 a  g fs e ds |
    e2) r4 b8( g |
    g4-.) g-. g-. g-. |
    gs!4( a2) e'8( c |
    a4-.) a-. a-. a-. |
    as4( b2) b'8( g |
    
    \barNumberCheck 33
    e4-.) e-. e-. e-. |
    e8( d c4) c'2->-\slurShapeH (~ |
    c4 b8 a  g fs e ds |
    e4-.) \osp #'(0 . 1.5) b(  cs! ds8 e |
    b4 a8 gs  a4 gs8 fs |
    gs4-.) e'-\slurShapeI ( cs b8 a |
    gs4 fs8 e  fs4 e8 ds |
    e4-.) \osp #'(0 . 1.5) b'( cs ds8 e |
    
    \barNumberCheck 41
    b4 a8 gs  a4 gs8 fs |
    gs4) e'( \appoggiatura { ds8 } cs4 b8 a |
    % Fourth beat, ds according to an urtext
    gs4 fs8 e  fs4 e8 ds |
    \alternative {
      { e1) | }
      { e2-\tieShapeA ^\repeatTie }
    }
  }
  \repeat volta 2 {
    \bar "||.|:"
    r4 e'8( b |
    b4-.) b-. b-. b-. |
    gs8( a \stemUp b4) r \stemNeutral e8( b |
    b4-.) b-. b-. b-. |
    
    \barNumberCheck 49
    as8-\slurShapeJ ( b cs4) r cs'8( as |
    g4 e) e( cs) |
    d8( e fs4) r b8( fs |
    fs4-.) b8( fs  fs4-.) fs-. |
    b8( g a fs  e4-.) a8( e |
    e4-.) a8( e  e4-.) e-. |
    a8( fs g e  d4-.) a'8-\slurShapeK ( d, |
    cs4-.) a'8( cs,  b4-.) \osp #'(0 . 3) a'8( b, |
    
    \barNumberCheck 57
    a4-.) e'8( a,  b4-.) e8( b |
    cs4-.) a'8( cs,  d4-.) a'8( d, |
    e4-) \osp #'(0 . 2.5) fs8( e  d cs b a |
    gs4-.) e-. r e'8-\slurShapeL ( c |
    c4-.) c-. c-. c-. |
    \acciaccatura { d8 } c( b a4)  r \osp #'(0 . 2.5) e'8( a, |
    a4-.) a-. a-. a-. |
    f8-\slurShapeM ( gs! b d f2->~ |
    
    \barNumberCheck 65
    f4 e8 d  c b a gs |
    a2) r4 e'8( c |
    c4-.) c-. c-. c-. |
    cs!( d2) a'8( f |
    d4-.) d-. d-. d-. |
    ds4( e2) c'8( a |
    e4-.) e-. e-. e-. |
    f4( d2) d'8( b |
    
    \barNumberCheck 73
    e,4-.) c'8( a  d,4-.) b'8( gs |
    a4-.) e( fs gs8 a |
    \appoggiatura { fs8 } e4 d8 cs  d4 cs8 b |
    cs4-.) a'-\slurShapeN ( \appoggiatura { gs8 } fs4 e8 d |
    cs4 b8 a  b4 a8 gs |
    a4-.) e'( fs gs8 a |
    e4 d8 cs  d4 cs8 b |
    cs4-.) a'( fs e8 d |
    
    \barNumberCheck 81
    cs4 b8 a  b4 a8 gs |
    a2)
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1 |
    a2( cs |
    d2 e |
    a,2) \osp #'(1.5 . 1.5) a,( |
    d2 e |
    a,2) a' |
    a2( gs |
    a2) a |
    
    \barNumberCheck 9
    a2( gs |
    a2) cs,( |
    d2 ds |
    e2) e-\slurShapeD ( |
    ds2) ds( |
    e2) e'( |
    d!2) d( |
    cs2) cs( |
    
    \barNumberCheck 17
    gs2) gs( |
    a2) a |
    a2 a( |
    gs2 ds |
    e2) a( |
    b2) r |
    e2( d! |
    c2) c( |
    
    \barNumberCheck 25
    g2) g( |
    a2) a( |
    b2 b, |
    e2) e( |
    e'2 d |
    c2) c |
    c2 r |
    g2 g |
    
    \barNumberCheck 33
    g2 r |
    a2 a( |
    b2 b, |
    e2) a( |
    gs2 fs |
    e2) a( |
    b2 b, |
    e2) a( |
    
    \barNumberCheck 41
    b2 ds, |
    e2) \osp #'(0 . -1.5) a( |
    b2 b, |
    \alternative {
      { e,1) | }
      { e2-\tieShapeB ^\repeatTie }
    }
  }
  \repeat volta 2 {
    r2 |
    e''2 e( |
    d!2) d |
    d2 d( |
    
    \barNumberCheck 49
    cs2) cs( |
    fs,2) fs( |
    b2) b( |
    a2) a( |
    g2) r |
    g2 g( |
    fs2) fs( |
    e2 d |
    
    \barNumberCheck 57
    cs2 gs! |
    a2 b |
    cs2 d |
    e2) r |
    a2( g |
    f2) \osp #'(0 . 2.5) f( |
    c2) \osp #'(2.5 . 0) c( |
    d2) d( |
    
    \barNumberCheck 65
    e2 e, |
    a1) |
    a'2( g |
    f2) f |
    f2 r |
    c2 c |
    c2 r |
    d2 \osp #'(0 . 2.5) d( |
    
    \barNumberCheck 73
    e2 e, |
    a2) d'( |
    cs2 b |
    a2) d,-\slurShapeO ( |
    e2 e, |
    a2) \osp #'(0 . 2.5) d( |
    cs2 b |
    a2) \osp #'(0 . 2.5) d( |
    
    \barNumberCheck 81
    e2 e, |
    a2)
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\mf |
    s1*4 |
    s4\> s2.\! |
    s1 |
    s4\> s2.\! |
    
    \barNumberCheck 9
    s4 s2-\tag layout \sf -\tag midi \ff s4-\tag midi \mf |
    s4\> s2.\! |
    s1 |
    s4\> s2.\! |
    s1 |
    s4\> s2.\! |
    s1 |
    s4\> s2.\! |
    
    \barNumberCheck 17
    s4\> s2.\! |
    s4\> s4.\! s\cresc |
    s1*2 |
    s1-\tweak Y-offset #-2 \f |
    s2. s4\< |
    s4\f s2.\p\< |
    \grace { s8\> } s4 s2\! s4\< |
    
    \barNumberCheck 25
    s4\f s2.\p\< |
    s4\> s\! s2\f |
    s1 |
    s2 s\p |
    s1 |
    s2 s8 s4.\cresc |
    s1*2 |
    
    \barNumberCheck 33
    s1 |
    s2 s\f |
    s1*5 |
    s4 s2.\p |
    
    \barNumberCheck 41
    s1 |
    s4 s2.\cresc |
    s1 |
    \alternative {
      { s1\f | }
      { s2\f }
    }
  }
  \repeat volta 2 {
    s4 s\p |
    s1*3 |
    
    \barNumberCheck 49
    s2 s\f |
    s1 |
    \override DynamicLineSpanner.Y-offset = #0.5
    s2 s\mf |
    s1 |
    s2.\f s4\mf |
    s1 |
    s2.\f s4\p |
    s1\cresc |
    
    \barNumberCheck 57
    s1 |
    s1\f |
    s1 |
    s2. s4\< |
    s4\f s2.\p\< |
    \grace { s8\> } s4 s\! s s\< |
    s4\f s2.\p\< |
    s1\f |
    
    \barNumberCheck 65
    s1 |
    s2. s4\p |
    s1 |
    s2 s8 s4.\cresc |
    s1 |
    s2. s4\f |
    s1*2 |
    
    \barNumberCheck 73
    s1*5 |
    s4 s2.\p |
    s1 |
    s4 s2.\cresc |
    
    \barNumberCheck 81
    s1 |
    s2\f
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 108
    s1*40 |
    
    \barNumberCheck 41
    s1*2 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 100 s \tempo 2 = 92 s \tempo 2 = 84 s |
    \alternative {
      { \tempo 2 = 76 s1 | }
      { \tempo 2 = 76 s2 }
    }
  }
  \repeat volta 2 {
    \tempo 2 = 108
    s2 |
    s1*3 |
    
    \barNumberCheck 49
    s1*32 |
    
    \barNumberCheck 81
    \tag layout { s1 | s2 }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 100 s \tempo 2 = 92 s \tempo 2 = 84 s |
          \tempo 2 = 76 s2
        }
        {
          s4 \tempo 2 = 96 s \tempo 2 = 84 s \tempo 2 = 72 s |
          \tempo 2 = 40 s2
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
  \grace { s8 } s1*5 \pageBreak
  
  % page 2
  s1*6 \break
  s1*5 \break
  s1*5 s2 \break
  s2 s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*6 \break
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
