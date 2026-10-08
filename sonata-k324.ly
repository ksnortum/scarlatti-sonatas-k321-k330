%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in G major"
  opus   = "K.324"
  source = "https://s9.imslp.org/files/imglnks/usimg/9/98/IMSLP914542-PMLP523597-E4525_5-8-Scarlatti_-_Keyboard_Sonatas,_L.331-345.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeC = \shape #'((0 . 2.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . 1))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0.5) (2.7 . 0.5) (2.7 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . -1.5) (3 . -0.5) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0 . 2) (0 . -2) (3 . 2) (3 . -5)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.3) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeL = \shape #'((0 . 0) (0 . 0) (3 . 2.5) (3 . -2)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.4))
                        ((0 . 0.3) (0 . 0.3) (0 . 0) (0 . 0))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0.5) (0 . 0.3) (0 . 0.3) (0 . 0.8))
                        ((0.2 . 0.2) (0.2 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . -0.3) (0 . -0.3) (0 . 0))
                        ((0.2 . 0.2) (0.2 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . 2.5))
                      ) \etc
slurShapeS = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeT = \shape #'(
                        ((0 . 2.2) (0 . 2.2) (0 . 2.2) (0 . 2.2))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1.5))
                      ) \etc
slurShapeU = \shape #'((0 . 0) (3 . -1) (3.5 . 0) (3.5 . -1.5)) \etc
slurShapeV = \shape #'((0 . 2) (0 . 0) (1 . 1) (0 . -2)) \etc
slurShapeW = \shape #'(
                        ((0 . 0) (0 . 0) (-0.2 . 0.2) (-0.2 . 0.2))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc

moveTrillA = \once \override Script.X-offset = #1

%
% Music
%

global = {
  \time 4/4
  \key g \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    g'4(~-\tag layout \prallprall -\tag midi \prall g16 fs g a) \moveTrillA
      b4(~-\tag layout \prallprall -\tag midi \prall b16 a b c |
    d1~ |
    d4) d-\slurShapeA ( c b8 a |
    b4 a8 g  a4 g8 fs |
    g4) g'(~  g8 fs) fs( e |
    d4) g(~  g8 fs) fs( e |
    d4 c8 b  c4 b8 a |
    b4) d-\slurShapeB ( b a8 g |
    
    \barNumberCheck 9
    a4 b8 c  b4 a8 g |
    <fs a>4) <g b>-\slurShapeC ( c b8 a |
    b4) d,-.( d-. d-.) |
    <d b'>8( <e c'> <f d'> <g e'>  <a f'> <b g'> <c a'> <d b'> |
    <e c'>2) <e g>(~ |
    q8 <d f> <c e> <b d>) <e g>2(~ |
    q8 <d f> <c e> <b d>  <a c> <g b> <fs! a> <e g> |
    <d fs>4) d-.( d-. d-.) |
    
    \barNumberCheck 17
    <e cs'>8( <fs d'> <g e'> <a fs'>  <b g'> <cs a'> <d b'> <e cs'> |
    <fs d'>2) <fs a>(~ |
    q8 <e g> <d fs> <cs e>) <fs a>2(~ |
    a8 g fs g  a b) b( d, |
    cs8 d e fs  g a) a-\slurShapeF ( cs, |
    b8 cs d e  fs g) g( b, |
    a8 b cs d  e fs) fs( a, |
    \stemDown g8 a b cs  d e) \osp #'(0 . 3) e( g, |
    
    \barNumberCheck 25
    \stemNeutral fs4) a'2 d,4-\slurShapeG ( |
    e4 a2) e4( |
    d4 b'2) d,4( |
    cs4 a'2) cs,4( |
    b4 g'2) s4 |
    s2. \voiceOne a4-\slurShapeJ (~ |
    a8 g fs e \oneVoice fs d e cs |
    d8 a' fs d  a fs d a |
    
    \barNumberCheck 33
    \staffDown \voiceOne fs d a fs) \oneVoiceUp r8 cs''''-\slurShapeK ( d4~ |
    d8 fs, g e  d4) cs\prall |
    d8-\slurShapeL ( a' fs d  a fs d a |
    \staffDown \voiceOne fs d a fs) \oneVoiceUp r8 cs''''-\slurShapeM ( d4~ |
    d8 fs, g e  d4) cs\prall |
    d4 d'8( a)  a( b a g) |
    g8( a g fs)  fs( e d cs) |
    d,4 d'8( a)  a( b a g) |
    
    \barNumberCheck 41
    g8( a g fs)  fs( e d cs |
    d1) |
  }
  \repeat volta 2 {
    <fs b ds>4-- q8-. q-. << { ds'4 e } \\ { b8([ fs)] c'( a) } >> |
    <fs b ds>4-- q8-. q-. << { ds'4 e } \\ { b8([ fs)] c'( a) } >> |
    <fs b ds>4-- q8-. q-. << { ds'4 e } \\ { b8([ fs)] c'( a) } >> |
    fs'2 <g b>-\slurShapeN (~ |
    q8 <fs a> <e g> <ds fs>) <g b>2(~ |
    q8 <fs a> <e g> <d! fs>  <cs e> <b d> <as cs> <b d> |
    
    \barNumberCheck 49
    cs2) <d fs>2-\slurShapeO (~ |
    q8 <cs e> <b d> <as cs>) \hideNoteHead \osp #'(-1 . -1) <d fs>2( |
    s2. \voiceOne d4 |
    \oneVoice gs,4) r <c! e>2-\slurShapeP (~ |
    q8 <b d> <a c> <gs b>) \hideNoteHead \osp #'(-1 . -1) <c e>2( |
    s2. \voiceOne c4 |
    \oneVoice fs,4) r <b d>2-\slurShapeQ (~ |
    q8 <a c> <g b> <fs a>) <b d>2(~ |
    
    \barNumberCheck 57
    d8 c b c  d e) \osp #'(0 . 2) e_( g, |
    fs8 g a b  c d) \osp #'(1 . 0) d( fs, |
    e8 fs g a  b c) c( e, |
    d8 e fs g  a b) b( d, |
    c8 d e fs  g a) a( c, |
    b4) d'2 \osp #'(0 . 2.5) g4( |
    a,2.) fs'4-\slurShapeS ( |
    g,2.) \osp #'(0 . 2.5) e'4( |
    
    \barNumberCheck 65
    fs,2.) \osp #'(0 . 2.5) d'4( |
    e,2.) s4 |
    s2. \voiceOne d'4-\slurShapeT (~ |
    d8 c b a  b g a fs |
    \oneVoice g8) d''-\slurShapeU ( b g  d b g d |
    \staffDown \voiceFour b8 g d b) \oneVoiceUp r8 s \voiceOne
      d'''4-\slurShapeV (~ |
    d8 b c! a \oneVoice g4) fs\prall |
    g8 d'-\slurShapeU ( b g  d b g d |
    
    \barNumberCheck 73
    \staffDown \voiceFour b8 g d b) \oneVoiceUp r8 s \voiceOne
      d'''4-\slurShapeV (~ |
    d8 b c! a \oneVoice g4) fs\prall |
    g,4-. g'8( d)  d( e d c) |
    c8( d c b)  b( a g fs) |
    g,4-. g'8( d)  d( e d c) |
    c8( d c b)  b( a g fs |
    g1) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*24 |
    
    \barNumberCheck 25
    s1*4 |
    s2. b'4-\slurShapeH ( |
    a8) b'_( a g \voiceFour fs e d cs |
    b2) s2 |
    s1 |
    
    \barNumberCheck 33
    \oneVoice r2 s |
    s1*2 |
    r2 s |
    s1*4 |
    
    \barNumberCheck 41
    s1*2 |
  }
  \repeat volta 2 {
    s1*6 |
    
    \barNumberCheck 49
    s1 |
    s2 <d fs>~ |
    fs8 e d cs \voiceFour d cs b a! |
    s1 |
    s2 \oneVoice <c e>~ |
    e8 d c b \voiceFour c b a g |
    s1*2 |
    
    \barNumberCheck 57
    s1*8 |
    
    \barNumberCheck 65
    s1 |
    s2. \oneVoice c4( |
    \stemDown d,8) e'_( d c \voiceFour b a g fs |
    e2) d4 s |
    s1 |
    \oneVoice r2 s8 \voiceFour cs''( d d, |
    e4) s2. |
    s1 |
    
    \barNumberCheck 73
    \oneVoice r2 s8 \voiceFour cs'( d d, |
    e4) s2. |
    s1*5 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1 |
    g4(~-\tag layout \prallprall -\tag midi \prall g16 fs g a)
      b4(~-\tag layout \prallprall -\tag midi \prall b16 a b c |
    d4) d( e fs |
    g4 b, c d |
    g,2) <c e>( |
    <b d>2) \osp #'(-2 . 0) <c e>( |
    << 
      { \voiceThree d4 g2 fs4) | s } 
      \new Voice { \voiceTwo b,2( c4 d | g,) } 
    >>
    \oneVoice g'4(~  g8 fs) fs( e |
    
    \barNumberCheck 9
    d4) g4(~  g8 fs) fs-\slurShapeD ( e |
    d4 c8 b  a4 g8 fs |
    g,4) <g' b>-.( q-. q-.) |
    f1( |
    e4) <e' g>4(~  q8 <d f> <c e> <b d> |
    <c e>4 <b d>)  <e g>8( <d f> <c e> <b d> |
    <c e>4) g( c,2 |
    d4) d,-.( d-. d-.) |
    
    \barNumberCheck 17
    a'1-\slurShapeE ( |
    d4) \clef treble <fs' a>(~  q8 <e g> <d fs> <cs e> |
    <d fs>4 <cs e>)  <fs a>8( <e g> <d fs> <cs e>) |
    \clef bass d,4( d') r g( |
    a,2.) fs'4( |
    g4 g,2) e'4( |
    fs4 fs,2) d'4(
    e4 e,2) a4_( |
    
    \barNumberCheck 25
    \clef treble d8 e fs g  a b) b( d, |
    cs8 d e fs  g a) a( cs, |
    b8 cs d e  fs g) g( b, |
    a8 b cs d  e fs) fs( a, |
    g8 a b cs  d e) e-\slurShapeI _( g, |
    \clef bass fs2. g4 |
    g,4) g'( a) a,-. |
    d,2 r |
    
    \barNumberCheck 33
    s2 d |
    \osp #'(1 . 0) g4( g' a) a,-. |
    d,2 r |
    s2 d |
    \osp #'(1 . 0) g4( g' a) a,-. |
    d4-. d'2( cs4 |
    d4 fs, g a) |
    d,,4-. \osp #'(-2 . 0) d'2_( cs4 |
    
    \barNumberCheck 41
    d4 fs, g a |
    d,1) |
  }
  \repeat volta 2 {
    b'1 |
    b1 |
    b1 |
    b4-. \clef treble <g'' b>4(~  q8 <fs a> <e g> <ds fs> |
    <e g>4 <b fs'>)  <g' b>8( <fs a> <e g> <ds fs>) |
    \clef bass e,2 e( |
    
    \barNumberCheck 49
    fs4) <d' fs>4(~  q8 <cs e> <b d> <as cs> |
    <b d>4 <fs cs'>)  <d' fs>8( <cs e> <b d> <as cs> |
    <b d>4) b, \osp #'(2.5 . 0) b( d |
    e4) <c'! e>(~  q8 <b d> <a c> <gs b> |
    <a c>4 <e b'>)  <c' e>8( <b d> <a c> <gs b> |
    a4) a, \osp #'(0 . -2.5) a_( c |
    d4) <b' d>4(~  q8 <a c> <g b> <fs a> |
    <g b>4 <d a'>)  <b' d>8( <a c> <g b> <fs a> |
    
    \barNumberCheck 57
    <g b>4) g,2 c'4( |
    d4 d,2) b'4( |
    c4 c,2) a'4-\slurShapeR ( |
    b4 b,2) g'4( |
    a4 a,2) d4( |
    g8 a b c  d e) e( g, |
    fs8 g a b  c d) d( fs, |
    e8 fs g a  b c) c( e, |
    
    \barNumberCheck 65
    d8 e fs g  a b) b( d, |
    c8 d e fs  g a) a( c, |
    b2.) b'4( |
    c4 c, d) d,-. |
    g2 r |
    s2 g4 b( |
    c4 c' d) c-. |
    b2 r |
    
    \barNumberCheck 73
    s2 g,4 b( |
    c4 c' d) c-. |
    g,4-. g'-\slurShapeW ( fs d |
    g4 b, c d |
    g,4) g'2( fs4 |
    g4) b,_( c d |
    g,1) |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1-\tweak Y-offset #-5 \p |
    s1*3 |
    s4 s\mf s2\> |
    s4 s\mf s2-\tweak Y-offset #1 \> |
    s1-\tweak Y-offset #1 \p |
    s4 s2.-\tweak Y-offset #0 \mf |
    
    \barNumberCheck 9
    s1 |
    s1-\tweak Y-offset #1 \dim |
    s4 s2.\p |
    s1\< |
    s1-\tweak X-offset #0.5 \mf |
    s1 |
    s8 s4.\> s2 |
    s4\! s2.\p |
    
    \barNumberCheck 17
    s1\< |
    s1\mf |
    s1*2 |
    s1\dim |
    s1 |
    s1\p |
    s1 |
    
    \barNumberCheck 25
    s1*2 |
    s1\cresc |
    s1*2 |
    s1\mf |
    s1 |
    s1\> |
    
    \barNumberCheck 33
    s2 s8 s4.\mf |
    s1 |
    s1\p |
    s1*2 |
    s4 s2.\mf |
    s1*2 |
    
    \barNumberCheck 41
    s1*2 |
  }
  \repeat volta 2 {
    s1\p |
    s1*2 |
    s4 s2.-\tweak Y-offset #0 \mf |
    s1 |
    s2 s\> |
    
    \barNumberCheck 49
    s4\! s2.-\tweak Y-offset #1 \p |
    s1*2 |
    s4 s2.\mf |
    s1 |
    s2 s\> |
    s1\p |
    s1 |
    
    \barNumberCheck 57
    s1*7 |
    s1\cresc |
    
    \barNumberCheck 65
    s1*2 |
    s1-\tweak Y-offset #-2.5 \mf |
    s1 |
    s1\> |
    s2 s8 s4.\mf |
    s1*2 |
    
    \barNumberCheck 73
    s1*2 |
    s4 s2.\p |
    s1\cresc |
    s1*2 |
    s1-\tweak Y-offset #-2 \f |
  }
}

tempi = {
  \repeat volta 2 {
    % NB, metronome marking does not seem like Andante, but I'm leaving it
    \tempo "Andante" 2 = 112
    s1*40 |
    
    \barNumberCheck 41
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 104 s \tempo 2 = 96 s \tempo 2 = 88 s |
    \tempo 2 = 80 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 112
    s1*6 |
    
    \barNumberCheck 49
    s1*24 |
    
    \barNumberCheck 73
    s1*5 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 104 s \tempo 2 = 96 s \tempo 2 = 88 s |
          \tempo 2 = 80 s1 |
        }
        {
          s4 \tempo 2 = 100 s \tempo 2 = 88 s \tempo 2 = 76 s |
          \tempo 2 = 66 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*4 \break
  s1*5 \break
  s1*4 \break
  s1*4 \break
  s1*4 \pageBreak
  
  % page 2
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*5 \pageBreak
  
  % page 3
  s1*4 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*4 \pageBreak
  
  % page 4
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
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
