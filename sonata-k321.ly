%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in A major"
  opus   = "K.321"
  source = "https://ks15.imslp.org/files/imglnks/usimg/c/c4/IMSLP914928-PMLP522943-E4487_50-52-Scarlatti_-_Keyboard_Sonatas,_L.246-258.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.2) (0 . 0.3) (0 . 0.5) (0 . -0.5)) \etc
slurShapeB = \shape #'(
                        ((0 . -0.1) (2 . -0.5) (0 . 1.5) (-0.2 . 1))
                        ((0.3 . -0.2) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . -0.2) (-1 . 0.3) (0 . 0) (0 . -0.7)) \etc
slurShapeD = \shape #'(
                        ((-0.3 . -0.9) (0 . 0.6) (0 . 1) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.3) (0.3 . 1) (0 . 1) (0 . -1.5))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . -1) (1 . 1) (0 . 1) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 1) (0.3 . 0.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'(
                        ((0 . 0.5) (0 . -0.1) (0 . -0.1) (0 . 0.5))
                        ((0 . 0.3) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'((0 . 0.3) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeM = \shape #'(
                        ((0 . -0.2) (0 . -0.2) (0 . -0.2) (0 . 0.2))
                        ((0 . 0.1) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.5) (0.3 . 0.3) (0.3 . 0) (0 . 0))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.5) (0.3 . 0.3) (0.3 . 0) (0 . 0))
                      ) \etc

tieShapeA = \shape #'(
                       ((0 . 0.3) (0 . 0.3) (0 . 0.3) (0 . 0.3))
                       ((0 . 0.2) (0 . 0.2) (0.2 . 0.2) (0.2 . 0.2))
                     ) \etc

beamPositionsA = \once \override Beam.positions = #'(1 . 1)

%
% Music
%

global = {
  \time 3/8
  \key a \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''4.->-\slurShapeA (~ |
    a16 fs d b gs e |
    \beamPositionsA d16 b gs e d' b |
    cs8-.) d-. e-. |
    a'4.->-\slurShapeB (~ |
    a16 fs d b gs e |
    \beamPositionsA d16 b gs e d' b |
    a4.) |
    
    \barNumberCheck 9
    \grace { cs'16( d } e4.)~ |
    e8 d-. b-. |
    \acciaccatura { b8 } a-. gs-. a-. |
    \appoggiatura { a8 } b4. |
    \grace { cs16( d } e4.)-\tieShapeA ~ |
    e8 d-. b-. |
    \acciaccatura { b8 } a-. gs-. a-. |
    \appoggiatura { a8 } b4 b'8->-\slurShapeC (~ |
    
    \barNumberCheck 17
    b16 gs e b gs e |
    cs8-.) a-. cs''->-\slurShapeD (~\noBeam |
    cs16 a fs ds a fs |
    ds16 b ds fs a ds) |
    \grace { fs16( gs } a4.) |
    \osp #'(-0.5 . 0) gs16( b ds, fs e b) |
    \grace { fs'16( gs } a4.) |
    \osp #'(-0.5 . 0) gs16( b ds, fs e b) |
    
    \barNumberCheck 25
    \grace { fs'16( gs } a4.) |
    gs16( b ds, fs e b |
    cs16 e gs, e fs ds |
    e8-.) gs-. b-. |
    r16 as( cs b) b( as) |
    r16 as( cs b) b( as) |
    r16 cs( e ds) ds( cs) |
    r16 cs( e ds) ds( cs) |
    
    \barNumberCheck 33
    r16 fs( a g) g( fs) |
    r16 fs( a g) g( fs) |
    r16 a( c b) b( a) |
    a16( g) g( fs) fs-\slurShapeF ( e |
    ds16 b ds fs as b |
    b,8-.) a'!4-> |
    \osp #'(-0.5 . 0) gs16( b ds, fs  e b) |
    \grace { fs'16( gs } a4.) |
    
    \barNumberCheck 41
    gs16-\slurShapeG ( b ds, fs  e b |
    cs16) ds32( e ds16 cs b a |
    gs16) a32( b a16 gs fs e |
    e'16[ cs] e,8-.) ds-.\prall |
    \osp #'(-0.5 . 0) gs'16( a32 b a16 gs fs e |
    cs16 fs) \appoggiatura { e8 } ds4\prall |
    e4. |
  }
  \repeat volta 2 {
    <e g>4.->(~ |
    
    \barNumberCheck 49
    q4.~ |
    q8 <d! fs>-.) <cs e>-. |
    << { fs16[ a] } \\ { d,8 } >> cs16-\slurShapeH ( e d fs |
    <cs e>4.->)-\slurShapeI (~ |
    q4.~ |
    q8 <b d>-.) <as cs>-. |
    <b d>4 b'8->-\slurShapeJ (~ |
    b16 fs d b a fs |
    
    \barNumberCheck 57
    g8-.) e g'->(~ |
    g16 e cs a g e |
    fs16 d fs a d fs) |
    \grace { fs16( g } a4.)-\slurShapeK (~ |
    a8 g-.) e-. |
    \acciaccatura { e8 } d-. cs-. d-. |
    \appoggiatura { d8 } e4. |
    a4.->-\slurShapeL (~ |
    
    \barNumberCheck 65
    a8 g-.) e-. |
    \acciaccatura { e8 } d-. cs-. d-. |
    \appoggiatura { d8 } e4 a8->-\slurShapeM (~ |
    a8 fs-.) d-. |
    a'8->( e) cs-. |
    a'8->( d,) b-. |
    cs16( e gs, b a e) |
    r16 ds( fs e) e( ds) |
    
    \barNumberCheck 73
    r16 ds( fs e) e( ds) |
    r16 fs( a g) g( fs) |
    r16 fs( a g) g( fs) |
    r16 b( d c) c( b) |
    r16 d( f e) e( d) |
    r16 d( b' a) a( gs!) |
    gs16( b gs e gs b) |
    \grace { b16( cs } d4.) |
    
    \barNumberCheck 81
    cs16( a gs b a e) |
    \grace { b'16( cs } d4.) |
    cs16( a gs b a e) |
    \grace { b'16( cs } d4.) |
    cs16-\slurShapeN ( a gs b a e |
    fs16-.) gs32( a gs16 fs e d |
    cs16-.) d32( e d16 cs b a |
    b16-.) cs32( d cs16 b a gs) |
    
    \barNumberCheck 89
    \stemDown \osp #'(0 . 4) a'16( e cs a e cs |
    \stemNeutral d16-.) e32( fs e16 d cs b |
    a4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    a8-. b-. cs-. |
    d4. |
    e,,4.( |
    a4.) |
    a'8-. b-. cs-. |
    d4. |
    e,,4.( |
    a4.) |
    
    \barNumberCheck 9
    a16( cs e a cs e) |
    e,,4. |
    a16( cs e a cs e) |
    e,,4. |
    a16( cs e a cs e) |
    e,,4. |
    a16( cs e a cs e) |
    e,,4. |
    
    \barNumberCheck 17
    gs4.( |
    a4.) |
    a'4.-\slurShapeE ( |
    b,4.) |
    b16( ds fs b ds fs) |
    e,,4. |
    b'16( ds fs b ds fs) |
    e,,4. |
    
    \barNumberCheck 25
    b'16( ds fs b ds fs) |
    e,,4 gs'8( |
    a8-.) b-. b,-. |
    e,4.-> |
    <cs' e as>4. |
    q4. |
    q4. |
    q4. |
    
    \barNumberCheck 33
    <c e a!>4. |
    <c e a>4. |
    q4. |
    q4. |
    <b fs' b>4. |
    b16( ds fs b ds fs) |
    e,,4. |
    b'16( ds fs b ds fs) |
    
    \barNumberCheck 41
    e,,4 gs'8( |
    a8-.) b-. b,-. |
    e8( fs gs |
    a8 b-.) b,-. |
    gs'4 \osp #'(-0.5 . -1) gs8( |
    a8 b b,) |
    e,4. |
  }
  \repeat volta 2 {
    r16 \osp #'(0 . 1) g''( e g cs, e |
    
    \barNumberCheck 49
    g,16 b e, g cs, e |
    a,4. |
    d,4.) |
    r16 e''( cs e g, b |
    e,16 g cs, e as, cs |
    fs,4.) |
    b16( d fs b d fs) |
    b,,4.( |
    
    \barNumberCheck 57
    e4.) |
    a,4.( |
    d,4.) |
    d'16( fs a d fs a) |
    a,,4. |
    d16( fs a d fs a) |
    a,,8-.\noBeam a'16( g fs e |
    d16 fs a d fs a) |
    
    \barNumberCheck 65
    a,,4. |
    d16( fs a d fs a) |
    a,,4. |
    d16( fs a d fs a) |
    cs,,16( e a cs e a) |
    b,,16( d gs! b d gs) |
    a,,4. |
    <fs' a b>4. |
    
    \barNumberCheck 73
    q4. |
    q4. |
    q4. |
    <f a b d>4. |
    q4. |
    q4. |
    <e b' e>4. |
    e16( gs b e gs b) |
    
    \barNumberCheck 81
    a,,4. |
    e'16( gs b e gs b) |
    a,,4. |
    e'16( gs b e gs b) |
    a,,4 cs8-\slurShapeO ( |
    \addStaccato {
      d8-) e gs |
      a8 a, cs |
      d8 e b |
    }
    
    \barNumberCheck 89
    cs8( a cs |
    d8-.) e-. e,-. |
    a4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \override DynamicLineSpanner.Y-offset = #0.5
    s4.\f |
    s4.*3 |
    s4.\p |
    s4.*3 |
    
    \barNumberCheck 9
    s4.\f |
    s4.*3 |
    s4.\p |
    s4.*2 |
    s4 s8\f |
    
    \barNumberCheck 17
    s4.*8 |
    
    \barNumberCheck 25
    s4.*4 |
    s4.\p |
    s4. |
    s4.-\tweak Y-offset #-0.5 \cresc |
    s4. |
    
    \barNumberCheck 33
    s4.*2 |
    s4.\f |
    s4.*5 |
    
    \barNumberCheck 41
    s4.*7 |
  }
  \repeat volta 2 {
    s4.-\tweak X-offset #-1 \f |
    
    \barNumberCheck 49
    s4.*8 |
    
    \barNumberCheck 57
    s4.*6 |
    s8 s8.-\tweak Y-offset #-0.5 \> s16\! |
    s4.\p |
    
    \barNumberCheck 65
    s4.*2 |
    s4 s8-\tweak Y-offset #-2.5 \f |
    s4.*4 |
    s4.-\tweak Y-offset #-5 \p |
    
    \barNumberCheck 73
    s4. |
    s4.\cresc |
    s4.*3 |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 81
    s4.*8 |
    
    \barNumberCheck 89
    s4.*3 |
  }
}

pedal = {
  \repeat volta 2 {
    s4.*16 |
    
    \barNumberCheck 17
    s4.*4 |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    
    \barNumberCheck 25
    s4.\sd |
    s4.\su |
    s4.*6 |
    
    \barNumberCheck 33
    s4.*7 |
    s4.\sd |
    
    \barNumberCheck 41
    s4.\su |
    s4.*6 |
  }
  \repeat volta 2 {
    s16 s\sd s4 |
    
    \barNumberCheck 49
    s4. |
    s8 s4\su |
    s4. |
    % sustain down is missing in the source
    s16 s\sd s4 |
    s4. |
    s8 s4\su |
    s4.\sd |
    s4.\su |
    
    \barNumberCheck 57
    s4.*8 |
    
    \barNumberCheck 65
    s4.*3 |
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #1 \su |
    s4. |
    
    \barNumberCheck 73
    s4.*7 |
    s4.\sd |
    
    \barNumberCheck 81
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.\sd |
    s4.\su |
    s4.*3 |
    
    \barNumberCheck 89
    s4.*3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 72
    s4.*40 |
    
    \barNumberCheck 41
    s4.*5 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 56 s |
    \tempo 4. = 52 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4. |
    
    \barNumberCheck 49
    s4.*40 |
    
    \barNumberCheck 89
    s4. |
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
  s4.*6 \break
  s4.*7 \break
  s4.*6 \break
  s4.*5 \break
  \grace { s8 } s4.*6 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*5 \break
  s4.*6 \break
  s4.*6 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*7 \break
  s4.*6 \break
  s4.*6 \break
  \grace { s8 } s4.*6 \break
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
