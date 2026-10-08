%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.330"
  source = "https://s9.imslp.org/files/imglnks/usimg/1/17/IMSLP915048-PMLP524268-E4444_29-30-Scarlatti_-_Keyboard_Sonatas,_L.046-063.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.3 . 0) (0.3 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeB = \shape #'((0.3 . -0.5) (0.3 . -0.5) (0 . -0.5) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key c \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \addStaccato {
      \stemDown c''8-> c g |
      c8-> c f |
      e8-> e a |
      g8-> g f |
    }
    e16( d c b a g |
    \addStaccato {
      \stemNeutral f8) d g |
      r8 g g |
      g8 c c |
      
      \barNumberCheck 9
      c8 c c |
      d8 e f |
      e8 <e g> q |
      q8-> <d f> q |
      q8-> <c e> q |
      q8-> <g d'> q |
      c8-> <e g> q |
      q8-> <d f> q |
      
      \barNumberCheck 17
      q8-> <c e> q |
      q8-> <g d'> q |
      \stemDown <e c'>8-> e' e |
      e8 <c a'> q |
      q8 <d a'> q |
    }
    a'16( g fs e d c |
    \addStaccato {
      b8) <g' b> q |
      q8-> <d a'> q |
      
      \barNumberCheck 25
      <b g'>8-> <g' b> q |
      q8-> <d a'> q |
      <b g'>8-> q q |
      <cs g'>-> q q |
    }
    fs16( e d c b a |
    b'16 a g fs e d |
    e8-.) d16( c b a |
    b8-.) g'-. d-. |
    
    \barNumberCheck 33
    a'8-. \afterGrace 15/16 c,4-\slurShapeA (\trill { b32 c } |
    b8-.) g'-. d-. |
    a'8-. \afterGrace 15/16 c,4-\slurShapeA (\trill { b32 c } |
    b8-.) d'16( b g d |
    e8-.) d16( c b a |
    b8-.) g'16( d b g |
    e'8-.) d16( c b a |
    \stemNeutral g4.->) |
    
    \barNumberCheck 41
    b8-. g'-. d-. |
    a'8-. \afterGrace 15/16 c,4-\slurShapeA (\trill { b32 c } |
    b8-.) g'-. d-. |
    a'8-. \afterGrace 15/16 c,4-\slurShapeA (\trill { b32 c } |
    b8-.) d'16( b g d |
    e8-.) d16( c b a |
    b8-.) g'16( d b g |
    e'8-.) d16( c b a |
    
    \barNumberCheck 49
    g4.->) |
  }
  \repeat volta 2 {
    g4.-> |
    \addStaccato {
      g8-> g f |
      e8 e g |
      c8-> c b |
      a8 a c |
      f8-> f e |
      d8 b d |
      
      \barNumberCheck 57
      g8-> g f |
      e8 e g |
      c8-> c b |
    }
    a16( g f e d c |
    b8-.) c8.(\trill b32 c |
    d8-.) c8.(\trill b32 c |
    d8-.) c8.(\trill b32 c |
    d8-.) g16( d b' g |
    
    \barNumberCheck 65
    d'8-) \afterGrace 15/16 f,4-\slurShapeB (\trill { e32 f } |
    e8-.) c'-. g-. |
    d'8-. \afterGrace 15/16 f,4-\slurShapeB (\trill { e32 f } |
    e8-.) c'-. g-. |
    d'8-. \afterGrace 15/16 f,4-\slurShapeB (\trill { e32 f } |
    e8-.) c'16( g e c |
    a'8-.) g16( f e d |
    c8-.) g-. g-. |
    
    \barNumberCheck 73
    % Source has an end-slur on the first beat, but no starting slur
    d'8-. \afterGrace 15/16 f,4(\trill { e32 f } |
    e8-.) c'-. g-. |
    d'8-. \afterGrace 15/16 f,4(\trill { e32 f } |
    e8-.) c'-. g-. |
    g'8-. \afterGrace 15/16 f,4(\trill { e32 f } |
    e8-.) g'16( e c g |
    a8-.) f'16( d a f |
    g8-.) e'16( c g e |
    
    \barNumberCheck 81
    f8-.) d'16_( b f d |
    e8-.) c''16( g e c |
    a'8-.) g16( f e d |
    e8-.) g16( e c g |
    f'8-.) e16( d c b |
    c4.->) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R4.*6 |
    \addStaccato {
      c'8-> c g |
      c8-> c f |
      
      \barNumberCheck 9
      e8-> e a |
    }
    g16( f e d c b |
    \addStaccato {
      c8) c c |
      g8-> g g |
      c,8-> c c |
      g'8-> g g |
      c8-> c c |
      g8-> g g |
      
      \barNumberCheck 17
      c,8-> c c |
      g'8-> g g |
      c8-> c c |
      a8-> a a |
      fs8-> fs fs |
    }
    d8( e fs |
    \addStaccato {
      g8) g g |
      d'8-> d d |
      
      \barNumberCheck 25
      g8-> g, g |
      d'8-> d d |
      g8-> g, g |
      a8-> a a |
    }
    d,8( e fs |
    g8 a b |
    c8-.) d( d, |
    g8-.) b-. g-. |
    
    \barNumberCheck 33
    fs8 d( fs |
    g8-.) b-. g-. |
    fs8-. d( fs |
    g8-.) a-. b-. |
    c8-. d( d, |
    g8-.) a-. b-. |
    c8-. d-. d,-. |
    g,4.-> |
    
    \barNumberCheck 41
    g'8-. b-. g-. |
    fs8 d( fs |
    g8-.) b-. g-. |
    fs8-. d( fs |
    g8-.) a-. b-. |
    c8-. d( d, |
    g8-.) a-. b-. |
    c8-. d-. d,-. |
    
    \barNumberCheck 49
    g,4.-> |
  }
  \repeat volta 2 {
    \addStaccato {
      g'8 g f! |
      e8 e d |
      c'8-> c b |
      a8 a g |
      \clef treble f'8-> f e |
      d8 d c |
      g'8-> g f |
      
      \barNumberCheck 57
      e8 e d |
      c'8-> c b |
      a8 a g |
      f8-> f f |
    }
    f8-. \osp #'(0.5 . 0) e( c |
    g'8-.) \osp #'(0.5 . 0) e( c |
    g'8-.) \osp #'(0.5 . 0) e_( c |
    \clef bass g8-.) g-. g-. |
    
    \barNumberCheck 65
    b8-. g( b |
    c8-.) e-. c-. |
    b8-. g( b |
    c8-.) e-. c-. |
    b8-. g( b |
    c,8-.) d-. e-. |
    \stemDown f8-. g( g,) |
    \stemNeutral c8-. e-. c-. |
    
    \barNumberCheck 73
    g8-. b( g |
    c8-.) e-. c-. |
    g8-. b( g |
    c8-.) e-. c-. |
    g8-. b_( g |
    \addStaccato {
      c8) d e |
      f8 d' f, |
      e8 c' e, |
      
      \barNumberCheck 81
      d8 b' d, |
      c8 d e |
      \stemDown f8 g g, |
      c8 d e |
      f8 g g,
    }
    \stemNeutral c4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.*7 |
    
    \barNumberCheck 9
    s4.*32 |
    
    \barNumberCheck 41
    s4.\p |
    s4.*3 |
    s4.\cresc |
    s4.*3 |
    
    \barNumberCheck 49
    s4.\f |
  }
  \repeat volta 2 {
    s4\f\> s8\! |
    s8\p s4\cresc |
    s4.*5 |
    
    \barNumberCheck 57
    s4. |
    s4.\f |
    s4.*6 |
    
    \barNumberCheck 65
    s4.*7 |
    s8 s4\p |
    
    \barNumberCheck 73
    s4.*5 |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 81
    s4. |
    s4.\f |
    s4.*4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 104
    s4.*40 |
    
    \barNumberCheck 41
    s4.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 96 s8 \tempo 4. = 88 s \tempo 4. = 80 s |
    
    \barNumberCheck 49
    \tempo 4. = 72 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 104
    s4.*7 |
    
    \barNumberCheck 57
    s4.*24 |
    
    \barNumberCheck 81
    s4.*4 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 96 s8 \tempo 4. = 88 s \tempo 4. = 80 s |
          \tempo 4. = 72 s4. |
        }
        {
          \tempo 4. = 92 s8 \tempo 4. = 80 s \tempo 4. = 69 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*8 \break
  s4.*8 \break
  s4.*8 \break
  s4.*8 \break
  s4.*8 \pageBreak
  
  % page 2
  s4.*9 \break
  s4.*10 \break
  s4.*9 \break
  s4.*9 \break
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
