%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in G major"
  opus   = "K.328"
  source = "https://ks15.imslp.org/files/imglnks/usimg/6/62/IMSLP914452-PMLP452006-E4612_49-52-Scarlatti_-_Keyboard_Sonatas,_Supp_17-29.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . -0.8))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 1) (0.3 . 0) (0 . 1) (0 . 2.5))
                      ) \etc
slurShapeF = \shape #'((0 . -3) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 1.5) (0.3 . 2.5) (0 . 2) (0 . -0.5))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 1.5) (0 . -1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.8) (0.3 . 2.8) (0.3 . 2.8) (0.3 . 2.8))
                      ) \etc
slurShapeL = \shape #'((0 . 0.5) (0 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0.5) (0 . 0.5) (0 . -1))
                      ) \etc
slurShapeP = \shape #'(
                        ((-0.3 . 2.8) (-0.3 . 2.8) (0 . 2.8) (0 . 2.8))
                        ((0.3 . 0.3) (0.3 . 1.3) (0 . 1) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 1) (0.3 . 1) (0 . 0) (0 . -1))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc

%
% Music
%

global = {
  \time 6/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    R2.*4 |
    g'4.-\slurShapeB ^(^\mf fs8 e d |
    g4. fs8 e d |
    b'8 a g  fs e d |
    cs8 a d  e d cs) |
    
    \barNumberCheck 9
    d'4.-\slurShapeC ( b8 a g |
    d'4. b8 a g |
    e'8 d c  b a g |
    fs8 d g  a g fs |
    g4.) b'8(\prall a b |
    c4 b8 a4-\tag layout \prallprall -\tag midi \prall g8 |
    fs8 g a)  b8-\slurShapeD (\prall a b |
    c4 b8 a4-\insideSlur -\tag layout \prallprall -\tag midi \prall g8 |
    
    \barNumberCheck 17
    a4.) d,,-\slurShapeE (~ |
    d8 b d e4.~ |
    e8 fs g a4.~ |
    a8 b cs d4.~ |
    d8 e fs g4. |
    fs8 a fs  d fs d |
    b8 d b  g b g |
    fs8 a d,  e d cs |
    
    \barNumberCheck 25
    d4.) fs'8-\slurShapeF \( g a |
    b8 d b \grace { g32( } \afterGrace 15/16 g4.)\trill { a32 g } |
    fs4.\) fs,8-\slurShapeG \( g a |
    b8 d b \grace { g32( } \afterGrace 15/16 g4.)\trill { a32 g } |
    fs4.\) a'8( b a) |
    a8( d a)  a( g fs |
    e4.) a,8( b a) |
    \stemUp a8( d a) \stemNeutral a( g fs |
    
    \barNumberCheck 33
    e4.) <d fs>8( <e g> <fs a> |
    <e g>8 <d fs> <e g>  <d fs> <cs e> <d fs> |
    <cs e>4.) cs'8-\slurShapeH ( d e |
    fs8 g a  b cs d |
    cs8 b a  g fs e |
    fs8 g a  <e g> <d fs> <cs e> |
    d4.) cs,8( d e |
    fs8 g a  b cs d |
    
    \barNumberCheck 41
    cs8 b a  g fs e |
    fs8 g a  <e g> <d fs> <cs e> |
    d4.) a''8( g fs |
    e4 fs8 g4 fs8 |
    e4.) a,8( g fs |
    e4 fs8 g4 fs8 |
    e8 fs g a4.~ |
    a8 b cs d4 cs8 |
    
    \barNumberCheck 49
    b8 a g  fs g e |
    d4.) <e' g>( |
    fs4.) <a,, cs e g>( |
    <a d fs>4.) <a' e' g>( |
    <a d fs>4.) <g cs e>4.( |
    \stemDown <fs a d>4.) \stemNeutral <a, cs e g>( |
    <a d fs>4.) <g cs e>4.( |
    <fs a d>2.) |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    a'4.-\slurShapeK ( fs8 e d |
    a'4. fs8 e d |
    b'4. g8 fs e |
    b'4. g8 fs e |
    c'!8 b a  g fs e |
    fs4.) g'8(\prall fs g |
    a4 g8 fs4-\tag layout \prallprall -\tag midi \prall e8 |
    fs4.) g,8(\prall fs g |
    
    \barNumberCheck 65
    a4 g8 fs4-\tag layout \prallprall -\tag midi \prall e8 |
    fs4.) b'4.-\slurShapeM (~ |
    b8 a b  c b a |
    b4.) \stemDown g,8( a b |
    \stemNeutral cs8 d e  g, fs e |
    fs4.) fs'8( e fs |
    g8 fs e  d cs d |
    cs4.) fs,8( e fs |
    
    \barNumberCheck 73
    g8 as b  e, d e |
    fs4.) as'8( b cs |
    d8 c! b  a! g fs |
    g4.) gs8( a b |
    cs8 b a  g! fs e |
    fs4.) d,-\slurShapeP (~ |
    d8 e fs g4. |
    e8 fs g a4.~ |
    
    \barNumberCheck 81
    a8 b cs d4.~ |
    d8 e fs  g4 fs8 |
    e8 d c!  b a g |
    a4.) b'8(\prall a b |
    c4 b8 a4-\tag layout \prallprall -\tag midi \prall g8 |
    a4.) b,8-\slurShapeQ ( a b |
    c4 b8 a4-\insideSlur -\tag layout \prallprall -\tag midi \prall g8 |
    a4.) d'( |
    
    \barNumberCheck 89
    b8\prall a g d'4. |
    b8\prall a b  d c b |
    a4 g8  a g fs |
    g4.)
    << 
      { 
        \voiceOne \osp #'(-1 . -1) g,4.( |
        s4. a4.~ |
        a8 b c d4.~ |
        d8 c b
      } 
      \new Voice { 
        \voiceFour b,8( c d |
        \oneVoice e8) fs g \voiceFour c,( d e |
        fs4.~ fs8 g a |
        b4.)
      } 
    >>
    \oneVoice <a c>8 <g b> <fs a> |
    g4.) <d' fs a c>( |
    
    \barNumberCheck 97
    <d g b>4.) <d, fs a c>( |
    <d g b>4.) <d' fs a c>( |
    <d g b>4.) <c fs a>( |
    <b d g>4.) <d, fs a c> |
    <d g b>4. <c fs a> |
    <b d g>2. |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    d'4.( b8 a g |
    d'4. b8 a g |
    e'8 d c  b a g |
    fs8 d g  a g fs |
    g8)-\slurShapeA (^\p b g e4.) |
    g8( b cs d4.) |
    g,2.(~ |
    g4 fs8 g4 a8) |
    
    \barNumberCheck 9
    d,8( e fs g4.) |
    d8( e fs g4.) |
    \osp #'(0.5 . 0) c2.(~ |
    c4 b8 c4 d8 |
    g,4.) \clef treble g''8( fs g |
    a8 fs g  c, d e |
    d8 e fs  g fs g |
    a8 fs g  c, d e |
    
    \barNumberCheck 17
    d4.) \clef bass d,,8( e fs |
    g4.~ g8 e g |
    a4.~ a8 b cs |
    d4.~ d8 e fs |
    g4. e8 cs a |
    d4.) fs,( |
    g4. g, |
    a2. |
    
    \barNumberCheck 25
    d,4.) \clef treble d'''8( e fs |
    g4. e8 cs a |
    d4.) \clef bass d,,8( e fs |
    g4. a8 b cs |
    d4.) \clef treble fs'8( g fs) |
    \osp #'(0.5 . 0) fs4.(~ fs8 e d |
    a4.) fs8( g fs) |
    fs4.(~ fs8 e d |
    
    \barNumberCheck 33
    a4.) \clef bass d,4._( |
    a4. d |
    a4.) \clef treble a''8-\slurShapeI ( b cs |
    d8 e fs  g a b |
    a8 g fs  e d cs |
    d4) <fs, d'>8-. g4( a8 |
    d,4.) \clef bass 
    << 
      { 
        s4. |
        \voiceTwo d,4.( g |
        
        \barNumberCheck 41
        \oneVoice a4.~ a8 b cs |
        d4)
      } 
      \new Voice { 
        a8( b cs |
        \voiceThree d2.) |
        
        \barNumberCheck 41
        s2. |
        s4
      } 
    >>
    <fs, d'>8-. g4( a8 |
    d,4.) \clef treble fs''8( e d |
    cs8 a d  e cs d |
    a4.) fs8-\slurShapeJ _( e d |
    cs8 a d  e cs d |
    \clef bass a4.~ a8 b cs |
    d,4.~ d8 e fs |
    
    \barNumberCheck 49
    g4.
    << 
      { \voiceTwo a4. } 
      \new Voice { \voiceThree d4( cs8) } 
    >>
    \oneVoice d,4.) \clef treble a''4.( |
    d4.) \clef bass a,,( |
    d,4.) a''( |
    d4.) a( |
    d4.) a,( |
    \stemUp d4.) \stemNeutral  a( |
    d,2.) |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    a'8( b cs d4.) |
    a8( b cs d4.) |
    b8( cs ds e4.) |
    b8( cs ds e4.) |
    << 
      { 
        \voiceThree a2.( |
        \hideNoteHead \oneVoice b4.)
      } 
      \new Voice { 
        \voiceTwo a,4.( c! |
        \oneVoice <b b'>4.)
      } 
    >>
    \clef treble e''8( ds e |
    fs8 ds e  a, b c |
    b4.) e,8-\slurShapeL ( ds e |
    
    \barNumberCheck 65
    fs8 ds e  a, b c |
    b4.) b'8-\slurShapeN ( c ds |
    e8 fs g  a g fs |
    g4.) \clef bass g,,( |
    a4. a, |
    d4.) \clef treble d''8-\slurShapeO ( cs d |
    e8 d cs  b as b |
    fs4.) \clef bass d,4.( |
    
    \barNumberCheck 73
    e4. g |
    fs4.) \clef treble fs''8( gs as |
    b8 a! g!  fs e d |
    e4.) e8( fs gs |
    a8 g! fs  e d cs |
    d4.) \clef bass d,,8( e fs |
    g4.) e8( fs g |
    a4.) a,8( b cs |
    
    \barNumberCheck 81
    d4.~ d8 e fs |
    g4.~ g8 a b |
    c!8 b a  g fs e |
    d4.) \clef treble g''8( fs g |
    a8 fs g  c, d e |
    d4.) g,8( fs g |
    a8 fs g  c, d e |
    d4.) d'8( e fs |
    
    \barNumberCheck 89
    g4.) d8( e fs |
    g4.) b,4.-\slurShapeR ( |
    c8 d e d4. |
    g,4.) \clef bass g,8( a b |
    c4. a8 b c |
    d4.) d,8_( e fs |
    g4. c,4 \stemUp d8 |
    \stemNeutral g,4.) d''( |
    
    \barNumberCheck 97
    g4.) d,,( |
    g4.) d''( |
    g4.) d( |
    g4.) <d,, d'> |
    <g g'>4. <d d'> |
    g2. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\mf |
    s4. s4\< s8\! |
    s4.\> s\p |
    s4 s8-\tweak Y-offset #-1 \< s4-\tweak Y-offset #-1 \> s8\! |
    % The following avoids a dynamic conflict with the mf in the right hand
    s256 s4......-\tag midi \p s4  |
    s4. s4 s8\< |
    s4.\> s\p |
    s4 s8\< s4\> s8\! |
    
    \barNumberCheck 9
    s2.\mf |
    s2.*3 |
    s4. s\p |
    s2.*3 |
    
    \barNumberCheck 17
    s4. s\mf\> |
    s8 s4\p s4. |
    s2.-\tweak Y-offset #1 \cresc |
    s2. |
    s4. s-\tweak Y-offset #1.5 \mf |
    s4. s\dim
    s2.*2 |
    
    \barNumberCheck 25
    s4.\p s\mf |
    s2. |
    s4. s\p |
    s2. |
    s4. s-\tweak Y-offset #0 \mf |
    s2. |
    s4. s\p |
    s2. |
    
    \barNumberCheck 33
    s4. s-\tweak Y-offset #-1.5 \mf |
    s2. |
    s4. s\p |
    s4.-\tweak Y-offset #1 \< s4 s8\! |
    s4.-\tweak Y-offset #1 \> s4 s8\! |
    s2.*3 |
    
    \barNumberCheck 41
    s2.*2 |
    s4. s-\tweak Y-offset #0 \mf |
    s2. |
    s4. s\p |
    s2. |
    s2.-\tweak Y-offset #0.5 \cresc |
    s4. s\mf |
    
    \barNumberCheck 49
    s2. |
    s4. s\p |
    s4. s-\tweak Y-offset #-2.5 \mf |
    s4. s\p |
    s2. |
    s4. s-\tweak Y-offset #-2.5 \mf |
    s2.*2 |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    s2.\p |
    s2.*4 |
    s4. s-\tweak Y-offset #0 \mf |
    s2. |
    s4. s\p |
    
    \barNumberCheck 65
    s2. |
    s4. s\mf |
    s2. |
    s4. s\p\< |
    s4 s8-\tag midi \mf \! s4.\p |
    s4. s\mf |
    s2. |
    s4. s\p |
    
    \barNumberCheck 73
    s2. |
    s4. s4-\tweak Y-offset #1.5 \< s8\! |
    s4.-\tweak Y-offset #1.5 \> s4 s8\! |
    s4. s4-\tweak Y-offset #1 \< s8\! |
    s4.-\tweak Y-offset #1 \> s4 s8\! |
    s4. s\mf\> |
    s8 s4\p s4. |
    s2.\cresc |
    
    \barNumberCheck 81
    s2.*3 |
    s4. s-\tweak Y-offset #0 \mf |
    s2. |
    s4. s\p |
    s2. |
    s4. s\mf |
    
    \barNumberCheck 89
    s2.*3 |
    s4. s\p |
    s2.-\tweak Y-offset #1 \cresc |
    s4. s\mf |
    s2. |
    s4. s-\tweak Y-offset #2 \p |
    
    \barNumberCheck 97
    s4. s-\tweak Y-offset #-1 \mf |
    s4. s-\tweak Y-offset #1 \p |
    s2. |
    s4. s\mf |
    s2.*2 |
  }
}

pedal = {
  \repeat volta 2 {
    s2.*8 |
    
    \barNumberCheck 9
    s2.*4 |
    s4.\sd s\su |
    s2.*3 |
    
    \barNumberCheck 17
    s4.\sd s\su |
    s2.*7 |
    
    \barNumberCheck 25
    s4.-\tweak Y-offset #-1 \sd s\su |
    s2. |
    s4.\sd s\su |
    s2. |
    s4.\sd s\su |
    s2. |
    s4.\sd s\su |
    s2. |
    
    \barNumberCheck 33
    s4.-\tweak Y-offset #-1.5 \sd s\su |
    s2. |
    s4.\sd s\su |
    s2.*3 |
    s4.-\tweak Y-offset #-1.5 \sd s\su |
    s2. |
    
    \barNumberCheck 41
    s2.*2 |
    s4.-\tweak Y-offset #-0.5 \sd s\su |
    s2. |
    s4.\sd s\su |
    s2.*3 |
    
    \barNumberCheck 49
    s2. |
    s4. s\sd |
    s4.\su s\sd |
    s4.-\tweak Y-offset #-1 \su s\sd |
    s4.\su s\sd |
    s4.\su s\sd |
    s4.\su s\sd |
    s2.-\tweak Y-offset #-1 \su |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    s2.*5 |
    s4.\sd s\su |
    s2. |
    s4.\sd s\su |
    
    \barNumberCheck 65
    s2. |
    s4.-\tweak Y-offset #-1 \sd s\su |
    s2. |
    s4.\sd s\su |
    s2. |
    s4.-\tweak Y-offset #-0.5 \sd s\su |
    s2. |
    s4.\sd s-\tweak Y-offset #-0.5 \su |
    
    \barNumberCheck 73
    s2. |
    s4.\sd s\su |
    s2.*3 |
    s4.\sd s\su |
    s2.*2 |
    
    \barNumberCheck 81
    s2.*3 |
    s4.-\tweak Y-offset #-0.5 \sd s\su |
    s2. |
    s4.\sd s\su |
    s2. |
    s4.-\tweak Y-offset #-1.5 \sd s\su |
    
    \barNumberCheck 89
    s2.*3 |
    s4.\sd s\su |
    s2.*3 |
    s4. s\sd |
    
    \barNumberCheck 97
    s4.\su s-\tweak Y-offset #-1.5 \sd |
    s4.-\tweak Y-offset #-0.5 \su s\sd |
    s4.\su s\sd |
    s4.\su s-\tweak Y-offset #-1 \sd |
    s4.-\tag layout \sd -\tag midi \sud s-\tweak Y-offset #-1
      -\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s4\su |
  }  
}

tempi = {
  \repeat volta 2 {
    \tempo "Andante comodo" 4. = 84
    s2.*48 |
    
    \barNumberCheck 49
    s2.*6 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 76 s4. \tempo 4. = 69 s |
    \tempo 4. = 63 s2. |
  }
  \repeat volta 2 {
    \tempo 4. = 84
    \barNumberCheck 57
    s2.*40 |
    
    \barNumberCheck 97
    s2.*4 |
    \tag layout { s2.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 76 s4. \tempo 4. = 69 s |
          \tempo 4. = 63 s2. |
        }
        {
          \tempo 4. = 72 s4. \tempo 4. = 63 s |
          \tempo 4. = 50 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*5 \break
  s2.*5 \break
  s2.*6 \break
  s2.*6 \break
  s2.*5 \pageBreak
  
  % page 2
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*6 \break
  s2.*8 \pageBreak
  
  % page 3
  s2.*5 \break
  s2.*5 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \pageBreak
  
  % page 4
  s2.*4 \break
  s2.*4 \break
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
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
