%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.323"
  source = "https://s9.imslp.org/files/imglnks/usimg/f/f4/IMSLP914683-PMLP476159-E4446_29-30-Scarlatti_-_Keyboard_Sonatas,_L.085-100.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0.5) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . -0.5) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -0.25) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeF = \shape #'(
                        ((0 . 0.2) (1 . 1) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . 0.2) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeH = \shape #'(
                        ((0 . 0.2) (0 . 1) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -0.5))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -0.5))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.2))
                        ((0.3 . 0) (0.3 . 1) (0 . 1) (0 . -1))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 1) (0 . 1) (0 . 1))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.2))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . -0.5))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.2 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 1) (0 . 1.7))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . -0.3) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.2 . 0))
                        ((0.3 . 2.7) (0.3 . 2.7) (0 . 2.7) (0 . 2.7))
                      ) \etc

tieShapeA = \shape #'((0 . 0.3) (0 . 0.5) (1 . 0.5) (1 . 0.3)) \etc
tieShapeB = \shape #'((0 . -0.3) (0 . -0.5) (1 . -0.5) (1 . -0.3)) \etc

%
% Music
%

global = {
  \time 6/8
  \key a \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    e''8-\slurShapeA ( cs a'  e cs a' |
    e4 a8  d, cs b |
    cs4 a'8  b, a gs |
    a4 a'8 d, cs b |
    cs4 a'8  b, a gs |
    a4.) <a cs> |
    q4. q |
    q4.( <b d> |
    
    \barNumberCheck 9
    e8 cs a) <a cs>4. |
    q4. q |
    q4.( <b d>) |
    e8( cs a'  ds, b a' |
    gs8 fs e) <e gs>4. |
    q4. q |
    q4.( <fs a> |
    b8 gs e) <e gs>4. |
    
    \barNumberCheck 17
    q4. q |
    q4.( <fs a>) |
    b8( gs e  b gs' b) 
    b8( a gs)  gs( fs e |
    ds8 b ds  e cs) as-\slurShapeE (~ |
    as8 b ds  e cs) as-\slurShapeF (~ |
    as8 b ds  e cs as' |
    b8 fs ds  e gs b, |
    
    \barNumberCheck 25
    cs8 a' gs  fs e ds |
    e8) cs( ds  e cs) as-\slurShapeG (~ |
    as8 b ds  e cs) as-\slurShapeH (~ |
    as8 b ds  e cs as' |
    b8 fs ds  e gs b, |
    cs8 a' gs  fs e ds |
    e8 b gs  e fs b |
    cs8 a a'  fs e ds |
    
    \barNumberCheck 33
    \alternative {
      { e2.) | }
      { e4-\tieShapeA \repeatTie r8 }
    }
  }
  \repeat volta 2 {
    \bar "||.|:"
    <gs, b>4. |
    q4.( <as cs> |
    <b d>4.) <d fs> |
    <cs fs>4.( <b gs'>) |
    a'8-\slurShapeI ( fs cs  a cs fs |
    a8 e cs  a cs e |
    a8 fs d  a d fs |
    
    \barNumberCheck 41
    a8 e cs  a cs e |
    a8 fs ds  b ds fs |
    a8 gs fs)  fs-\slurShapeK ( e ds |
    e4. d! |
    cs4. b |
    e8 cs a  a' fs) \osp #'(0 . -0.5) ds(~ |
    ds8 e gs  a fs) ds-\slurShapeM (~ |
    ds8 e gs  a fs ds |
    
    \barNumberCheck 49
    e8 b' gs  a e cs |
    d!8 fs d~  d cs b |
    a8 cs e  a fs) \osp #'(0 . -0.5) ds(~ |
    ds8 e gs  a fs) \osp #'(0 . -0.5) ds(~ |
    ds8 e gs  a fs) ds-\slurShapeO ( |
    e8 b' gs  a e cs |
    d!8 fs d~  d cs b |
    a8 e') d(~  d cs b |
    
    \barNumberCheck 57
    cs8 e) d-\slurShapeP (~  d cs b |
    a'8 e cs  a cs e |
    fs8 d b~  b a gs |
    a8 e') d(~  d cs b |
    cs8 e) d(~  d cs b) |
    \osp #'(0 . 0.5) cs'8( a e  cs a e' |
    fs8 e b~ b a gs |
    a4.)
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    a4. a |
    a8-\slurShapeB ( b cs  d4 e8 |
    a,8 b cs  d4 e8 |
    a,8 b cs  d4 e8 |
    a,8 b cs  d4 e8 |
    a,4.) \osp #'(-0.5 . 2) a8( cs a |
    gs8 b gs  fs a fs |
    e8 gs e  d fs d |
    
    \barNumberCheck 9
    cs4.) a'8-\slurShapeC ( cs a |
    gs8 b gs  fs a fs |
    e8 gs e  d fs d |
    cs4. b |
    e4.) e'8( gs e |
    ds8 fs ds  cs e cs |
    b8 ds b  a cs a |
    gs4.)  e'8-\slurShapeD ( gs e |
    
    \barNumberCheck 17
    ds8 fs ds  cs e cs |
    b8 ds b  a cs a |
    gs4.) gs( |
    a4. as |
    b4. cs |
    b4. cs |
    b4. cs |
    b4. gs |
    
    \barNumberCheck 25
    a4. b |
    e,4.) cs'( |
    b4. cs |
    b4. cs |
    b4. gs |
    a4. b |
    e,4.) gs,( |
    a4. b |
    
    \barNumberCheck 33
    \alternative {
      { e,2.) | }
      { e4-\tieShapeB \repeatTie r8 }
    }
  }
  \repeat volta 2 {
    \osp #'(-0.5 . 1) e'8( gs e |
    d!8 fs d  \stemDown cs e cs |
    \stemNeutral b4.) \osp #'(-0.5 . 0) b'8( d b |
    a8 cs a  gs b gs |
    fs4.) fs( |
    e4.) e-\slurShapeJ ( |
    d4.) \osp #'(0 . 2.5) d( |
    
    \barNumberCheck 41
    cs4.) \osp #'(1.5 . 0) cs( |
    b4. b' |
    a4.) a-\slurShapeL ( |
    gs8 b gs  fs a fs |
    e gs e  d fs d |
    cs4.) fs-\slurShapeN ( |
    e4. fs |
    e4. fs |
    
    \barNumberCheck 49
    e4. cs |
    d4. e |
    a,4.) fs'-\slurShapeN ( |
    e4. fs |
    e4. fs |
    e4. cs |
    d4. e |
    a,4.) e'-\slurShapeQ ( |
    
    \barNumberCheck 57
    a4. e |
    a,4. cs |
    d4. e |
    a,4.) \osp #'(-0.5 . 1) e'( |
    a4. e |
    cs4.) \osp #'(2 . 2) cs( |
    d4. e |
    a,4.)
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \override DynamicLineSpanner.Y-offset = #-4
    s2.\p |
    s2.\cresc |
    s2.*3 |
    s4.\f s\p |
    s2.\cresc |
    s2. |
    
    \barNumberCheck 9
    s4.\f\> s\p |
    s2.\cresc |
    s2. |
    s2.-\tweak Y-offset #-1.5 \f |
    s4.\> s\p |
    s2.\cresc |
    s2. |
    s4.\f\> s\p |
    
    \barNumberCheck 17
    s2.\cresc |
    s2. |
    s2.-\tweak Y-offset #4 \f |
    s2.*5 |
    
    \barNumberCheck 25
    s2. |
    s8 s4-\tweak Y-offset #-1.5 \p s4. |
    s2. |
    s2.\cresc |
    s2.*2 |
    s2.-\tweak Y-offset #3.5 \f |
    s2. |
    
    \barNumberCheck 33
    \alternative {
      { s2. | }
      { s4. }
    }
  }
  \repeat volta 2 {
    s4.\p |
    s2.\cresc |
    s4.\f s-\tweak Y-offset #0.5 \cresc |
    s2. |
    s2.\f |
    s2.*2 |
    
    \barNumberCheck 41
    s2.*3 |
    s2.-\tweak Y-offset #5 \dim |
    s2. |
    s2.\p |
    s2.\cresc |
    s2. |
    
    \barNumberCheck 49
    s4. s\f |
    s2.-\tweak Y-offset #-1 \dim |
    s2.-\tweak Y-offset #-1.5 \p |
    s2.\cresc |
    s2. |
    s4. s\f |
    s2.\dim |
    s2.\p |
    
    \barNumberCheck 57
    s2. |
    s2.-\tweak Y-offset #0 \f |
    s2. |
    \override DynamicLineSpanner.Y-offset = #0
    s8 s4\p s4. |
    s2. |
    s2.\f |
    s2. |
    s4.
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 152
    s2.*24 |
    
    \barNumberCheck 25
    s2.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 138 s4 \tempo 4. = 126 s \tempo 4. = 116 s |
    
    \barNumberCheck 33
    \alternative {
      { \tempo 4. = 108 s2. | }
      { \tempo 4. = 80 s4. }
    }
  }
  \repeat volta 2 {
    \tempo 4. = 152
    s4. |
    s2.*6 |
    
    \barNumberCheck 41
    s2.*16 |
    
    \barNumberCheck 57
    s2.*6 |
    \tag layout { s2. | s4. }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 138 s4 \tempo 4. = 126 s \tempo 4. = 116 s |
          \tempo 4. = 80 s4.
        }
        {
          \tempo 4. = 132 s4 \tempo 4. = 116 s \tempo 4. = 104 s |
          \tempo 4. = 40 s4.
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*5 \break
  s2.*6 \break
  s2.*6 \break
  s2.*6 \break
  s2.*5 \break
  s2.*5 s4. \pageBreak
  
  % page 2
  s4. s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
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
