%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in G major"
  opus   = "K.325"
  source = "https://ks15.imslp.org/files/imglnks/usimg/6/69/IMSLP914796-PMLP523696-E4443_24-26-Scarlatti_-_Keyboard_Sonatas,_L.031-045.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -1) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (-0.2 . 0.2) (-0.2 . 0.2))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (-0.2 . 0) (-0.2 . 0))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (-0.2 . 0) (-0.2 . 0))
                        ((0.3 . 0.2) (0.3 . 0.2) (0 . 0) (0 . -0.2))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1.5) (0 . 1.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeI = \shape #'((0 . 0) (1 . -2) (0 . 1) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeL = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeM = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) \etc

moveCrescA = \once \override DynamicTextSpanner.bound-details.left.padding = 0

%
% Music
%

global = {
  \time 3/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''4. |
    d4. |
    d4. |
    \stemDown e16( c b a g fs |
    \stemNeutral d'4.) |
    d4. |
    d4. |
    \stemDown e16-\slurShapeC ( c b a g fs |
    
    \barNumberCheck 9
    g16 a b c d e |
    fs16 g a c, b a |
    b4. |
    \stemNeutral a4.) |
    r16 d-\slurShapeD ( c b c d |
    e16 d c b a g |
    fs4. |
    g4. |
    
    \barNumberCheck 17
    a8 b c |
    b16 d c b a g |
    \stemDown fs8-.) d'16( cs d fs,) |
    fs16( g d' cs d g,) |
    g16( a d cs d a) |
    a16( b g' fs g b,) |
    \osp #'(0 . 1) b16( cs a' g a cs,) |
    cs16( d a' g a d,) |
    
    \barNumberCheck 25
    d16( e a g a e) |
    \osp #'(0 . 0.5) e16( fs d' cs d fs,) |
    fs16( g d' cs d g,) |
    g16-\slurShapeF ( a d cs d a |
    b16 cs, d a' cs, g' |
    fs16 a cs, e a, fs' |
    b,16 b' a g fs e |
    d4.) |
    
    \barNumberCheck 33
    R4.*2 |
    r16 <g b>( <fs a> <e g> <d fs> <cs e> |
    d4.) |
    R4.*2 |
    r16 \osp #'(0 . -1) <b' d>( <a cs> <g b> <fs a> <e g> |
    <d fs>16 a' cs, e a, fs' |
    
    \barNumberCheck 41
    b,16 g' fs e d cs |
    d16 fs g, e' fs, d' |
    \stemNeutral e,16 <g b> <fs a> < e g> <d fs> <cs e> |
    d4.) |
  }
  \repeat volta 2 {
    d'4. |
    d4. |
    r16 d-\slurShapeI ( c b c d |
    e16 d c d e fs |
    
    \barNumberCheck 49
    \stemDown g16 d b g d b) |
    r8 g''16( fs g b,) |
    b16( a fs' e fs a,) |
    a16( g e' ds e g,) |
    \stemNeutral g16( fs c' b c fs,) |
    fs16( e c' b c e,) |
    e8(\prall ds4) |
    R4. |
    
    \barNumberCheck 57
    R4. |
    r16 b''-\slurShapeJ ( ds, fs e g |
    fs16 <a c> <g b> <fs a> <e g> <ds fs> |
    e8)\noBeam
    << 
      { 
        \voiceOne b'4->~ |
        b8\noBeam a16 g a e |
        e16( fs) a4->~ |
        a8\noBeam g16-\slurShapeK ( fs g d |
      } 
      \new Voice {
        \voiceFour e16( d e g,) |
        b16( c) c4->~ |
        c8\noBeam d16( c d a) |
        a16( b) b4-> |
      } 
    >>
    \oneVoice e16 d c b e g,) |
    
    \barNumberCheck 65
    g8(\prall fs4) |
    R4.*2 |
    r16 \stemDown e'( fs, a g b |
    a16 <c e> <b d> <c a> <g b> <fs a> |
    \stemNeutral g8)\noBeam \osp #'(0 . -0.5) g'16( fs g b,) |
    \osp #'(0 . 1.5) b16( c a' g a a,) |
    a16( b g' fs g b,) |
    
    \barNumberCheck 73
    b16( c a' g a a, |
    b16) b'( fs a d, g |
    e16 c' d, b' c, a' |
    b,4) g'8->(~ |
    g16 a fs a d, c' |
    b4) g8->-\slurShapeL (~ |
    g16 a fs a d, c' |
    b16 d, c a' b, g' |
    
    \barNumberCheck 81
    a,16 <c e> <b d> <c a> <g b> <fs a> |
    <g b>16 d' fs, a d, b' |
    c,16 a' b, g' a, fs' |
    \override Parentheses.font-size = #-3
    <g, \parenthesize g'>4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    g16-\slurShapeA ( a b c d e |
    \clef treble fs16 g a b c a |
    b16 a g fs e d |
    \clef bass c8 d-.) d,-. |
    g16-\slurShapeB ( a b c d e |
    \clef treble fs16 g a b c a |
    b16 a g fs e d |
    \clef bass c8 d-.) d,-. |
    
    \barNumberCheck 9
    g4.( |
    d4.) |
    g16( a b c d e |
    fs16 g a c, b a |
    b4. |
    c4.) |
    r16 d-\slurShapeE ( c b c d |
    e16 d c b a g |
    
    \barNumberCheck 17
    fs16 e d c b a |
    g4 c8 |
    d4.)( |
    e4. |
    fs4. |
    g4. |
    a4. |
    b4. |
    
    \barNumberCheck 25
    cs4. |
    d4. |
    e4. |
    fs4. |
    g8 fs) e-. |
    d8-. e-. fs-. |
    g8( a-.) a,-. |
    d,8 \osp #'(0 . -0.5) d'16( cs d d,) |
    
    \barNumberCheck 33
    d16( e) \osp #'(0 . -0.5) d'(^\md cs d e,) |
    e16(^\ms fs) d'(^\md cs d fs, |
    g8->-\noPriority -\insideSlur ^\ms a-.) a,-. |
    d8 \osp #'(0 . -0.5) d'16( cs d d,) |
    d16( e) \osp #'(0 . -0.5) d'(^\md cs d e,) |
    e16(^\ms fs) d'-\slurShapeG (^\md cs d fs, |
    g8->-\noPriority -\insideSlur ^\ms a-.) a,-. |
    d8( e fs |
    
    \barNumberCheck 41
    g8-> a-.) a,-. |
    d8( e fs |
    g8-> a-.) a,-. |
    d,4.-> |
  }
  \repeat volta 2 {
    d'16-\slurShapeH ( e fs g a b |
    \clef treble c!16 d e fs g a |
    b8 a g |
    \clef bass c,8 b a |
    
    \barNumberCheck 49
    g4. |
    g,8-.) r r |
    d''4(_\> ds8\! |
    e4) g,8-. |
    a4( b8 |
    c4) c,8-. |
    b8 \osp #'(0 . -0.5) b'16( a b b,) |
    b16( cs) \osp #'(0 . -0.5) b'(^\md a b cs,) |
    
    \barNumberCheck 57
    \osp #'(-0.5 . 0) cs16(^\ms ds) b'-\slurShapeM (^\md a b ds, |
    e8-\noPriority ^\ms fs g |
    a8-> b-.) b,-. |
    e4.( |
    a,4. |
    d4. |
    g,4. |
    c4. |
    
    \barNumberCheck 65
    d8)\noBeam \osp #'(0 . -0.5) d'16( c d d,) |
    d16( e) d'(^\md c d e,) |
    e16(^\ms fs) \osp #'(-0.5 . 0) d'(^\md c d fs, |
    g8-\noPriority ^\ms a b |
    c8 d-.) d,-. |
    g4.( |
    d4. |
    g,4. |
    
    \barNumberCheck 73
    d'4. |
    g8 a b |
    c8 d-.) d,-. |
    g8-. \osp #'(0 . -0.5) g'16( fs g g,) |
    d,4.->( |
    g8)\noBeam  \osp #'(0 . -0.5) g''16( fs g g,) |
    d,4.-> |
    g'8( a b |
    
    \barNumberCheck 81
    c8 d-.) d,-. |
    g,8( a b |
    c8 d-.) d,-. |
    g4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset #-1 \p |
    s4.\cresc |
    s4\mf\> s16 s\! |
    s4\f\> s16 s\! |
    s4.-\tweak Y-offset #-1 \p |
    s4.\cresc |
    s4\mf\> s16 s\! |
    s4\f\> s16 s\! |
    
    \barNumberCheck 9
    s4-\tweak Y-offset #-1.5 \p-\tweak Y-offset #-1 \< s16 s\! |
    s8.-\tweak Y-offset #-1.5 \f-\tweak Y-offset #-1 \> s-\tweak Y-offset #-1.5 \p |
    s4\< s16 s\! |
    s8.\f\> s\p |
    s16 s-\tweak Y-offset #-1 \< s8. s16\! |
    s4-\tweak Y-offset #-1.5 \> s16 s\! |
    s4.-\tweak Y-offset #-1.5 \cresc |
    s4. |
    
    \barNumberCheck 17
    s4.*2 |
    s8\f s4\p\cresc |
    s4.*5 |
    
    \barNumberCheck 25
    s4. |
    s4.\f |
    s4.*5 |
    s8 s4\mf |
    
    \barNumberCheck 33
    s4.\cresc |
    s4. |
    s4.\f |
    s8 s4\mf |
    s4.\cresc |
    s4. |
    s4.\f |
    s4. |
    
    \barNumberCheck 41
    s4.*4 |
  }
  \repeat volta 2 {
    s8\f s4\dim |
    s4. |
    s4.\p |
    s4.\cresc |
    
    \barNumberCheck 49
    s4.\f |
    s8 s4\p |
    s4.\mf |
    s4.\p |
    s4.\mf\> |
    s4.-\tweak X-offset #0.25 \p |
    s8\mf s4\p |
    s4.\cresc |
    
    \barNumberCheck 57
    s4. |
    s4.-\tweak Y-offset #1 \f |
    s4. |
    s8 s4\p |
    s8 s4\f |
    s8 s4\p |
    s8 s4\f |
    s4. |
    
    \barNumberCheck 65
    s8\> s4\p |
    \moveCrescA s4.\cresc |
    s4. |
    s4.-\tweak Y-offset #1 \f |
    s4. |
    s8 s4\p |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 73
    s4.\f |
    s4.*2 |
    s4.\f |
    s4.*4 |
    
    \barNumberCheck 81
    s4.*4 |
  }
}

tempi = {
  \repeat volta 2 {
    % Source as 4 = 72 (not 4.)
    \tempo "Allegro" 4. = 72
    s4.*40 |
    
    \barNumberCheck 41
    s4.*2 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
    \tempo 4. = 52 s4. |
  }
  \repeat volta 2 {
    \tempo  4. = 72
    s4.*4 |
    
    \barNumberCheck 49
    s4.*32 |
    
    \barNumberCheck 81
    s4.*2 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
          \tempo 4. = 52 s4. |
        }
        {
          \tempo 4. = 63 s8 \tempo 4. = 56 s \tempo 4. = 50 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*5 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*5 \pageBreak
  
  % page 2
  s4.*5 \break
  s4.*5 \break
  s4.*6 \break
  s4.*5 \break
  s4.*5 \pageBreak
  
  % page 3
  s4.*5 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
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
