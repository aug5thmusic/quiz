\version "2.24.3"
\language "nederlands"

% Original sonata da chiesa: the first two movements.
% I. Adagio: 20 complete measures in 4/4.
% II. Allegro: 24 complete measures in 4/4, without repeats.
% Exactly two staves: violin and basso continuo, played by cello.
% The figures permit an optional keyboard realization without a third staff.
% Unfigured bass notes normally imply root-position triads; figures follow
% the key signature unless explicitly altered. Passing notes need no chord.
% Trills may begin on the upper auxiliary. Slurs suggest light bow groupings.
% MIDI contains the two written parts; ornaments are not realized in MIDI.
% All pitches are absolute: c' is middle C.

\header {
  title = "Sonata da chiesa in D major"
  subtitle = "For violin and basso continuo (cello)"
  composer = "Original composition"
  tagline = ##f
}

#(set-global-staff-size 17)
\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 26\mm
  short-indent = 11\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #14
  system-system-spacing.padding = #3
  markup-system-spacing.basic-distance = #12
  print-page-number = ##t
}

global = {
  \key d \major
  \time 4/4
  \numericTimeSignature
}

adagioViolin = \absolute {
  \global
  \clef treble
  \tempo "Adagio" 4 = 52
  % 1-4: D major; the sustained line answers its opening dotted gesture.
  fis'4.( g'8) a'4 d''~ |
  d''4( cis''8 b') cis''4.\trill( b'16 cis'') |
  d''2~ d''8( cis'' b' a') |
  gis'4( b'8 d'') cis''4( b'8 a') | \break
  \barNumberCheck #5
  % 5-8: a prepared 4-3 suspension and an authentic cadence in A.
  fis''4.( e''8) d''4 a'~ |
  a'4( gis') b' e''~ |
  e''4( cis''8 b') a'4( fis'8 a') |
  b'4.\trill( a'16 b') a'2 | \break
  \barNumberCheck #9
  % 9-12: B minor; the cadential sixth resolves over F sharp.
  fis''4.( e''8) d''4( cis''8 b') |
  g''4( fis''8 e'') ais'4 cis'' |
  g''2 e''4( cis'') |
  d''4( cis''\trill) b'2 | \break
  \barNumberCheck #13
  % 13-16: G and E minor lead through A7 back to D.
  d''4.( cis''8) b'4 g' |
  e''2 g''4( fis''8 e'') |
  cis''4( e''8 g'') fis''8( e'' d'' cis'') |
  d''2 fis''4 a''~ | \break
  \barNumberCheck #17
  % 17-20: 9-8 and 4-3 suspensions frame the final cadence.
  a''4( g'') fis''8( e'' d'' cis'') |
  b'4( g'8 b') a'4 d''~ |
  d''4( cis'') e''4.\trill( d''16 e'') |
  d''1\fermata |
  \barNumberCheck #21
  \bar "|."
}

adagioBass = \absolute {
  \global
  \clef bass
  d2 fis |
  g2 a |
  fis2 d |
  e2 a, |
  \barNumberCheck #5
  d2 fis |
  e1 |
  cis2 d |
  e2 a, |
  \barNumberCheck #9
  b,2 d |
  e2 fis |
  e2 cis |
  fis2 b, |
  \barNumberCheck #13
  g2 b, |
  e2 g |
  a2 a, |
  d2 fis |
  \barNumberCheck #17
  g1 |
  e2 fis4 g |
  a,1 |
  d1\fermata |
  \barNumberCheck #21
}

adagioFigures = \figuremode {
  s2 <6>2 |
  s1 |
  <6>2 s2 |
  <_+>4 <7 _+>4 s2 |
  s2 <6>2 |
  <4>4 <_+>2. |
  <6>2 s2 |
  <7 _+>2 s2 |
  s2 <6>2 |
  s2 <7 _+>2 |
  s2 <7>2 |
  <6 4>4 <5 _+>4 s2 |
  s2 <6>2 |
  s2 <6>2 |
  <7>1 |
  s2 <6>2 |
  <9>4 <8>2. |
  s2 <6>4 s4 |
  <4>4 <3>4 <7>2 |
  s1 |
}

allegroViolin = \absolute {
  \global
  \clef treble
  \tempo "Allegro" 4 = 108
  % 1-4: two-bar subject in the violin; answer in the bass in A.
  d''8( fis'') a''( g'') fis''( e'') d''( cis'') |
  d''4 a'8( b') cis''( d'') e''( cis'') |
  e''4 e''8( fis'') e''4 fis''8( e'') |
  cis''4 b'8( a') b'4 d''8( b') | \break
  \barNumberCheck #5
  % 5-8: the subject returns in A, followed by a dominant-key cadence.
  a'8( cis'') e''( d'') cis''( b') a'( gis') |
  a'4 e''8( fis'') gis''( a'') b''( gis'') |
  fis''8( e'') d''( cis'') b'4.\trill( a'16 b') |
  a'2 r4 e'' | \break
  \barNumberCheck #9
  % 9-12: bass entry in B minor, answered by the violin.
  fis''4 fis''8( g'') fis''4 g''8( fis'') |
  d''4 cis''8( b') cis''4 e''8( cis'') |
  b'8( d'') fis''( e'') d''( cis'') b'( ais') |
  cis''4.\trill( b'16 cis'') b'2 | \break
  \barNumberCheck #13
  % 13-16: descending sequence and a cadence in E minor.
  g''8( fis'') e''( d'') cis''( b') a'( g') |
  fis''8( e'') d''( cis'') b'( a') g'( fis') |
  e''8( d'') c''( b') a'( g') fis'( e') |
  dis'4 fis'8( a') g'4 fis'8( e') | \break
  \barNumberCheck #17
  % 17-20: the bass restores the D-major subject; the violin takes it up.
  a''4 a''8( b'') a''4 b''8( a'') |
  fis''4 e''8( d'') e''4 g''8( e'') |
  d''8( fis'') a''( g'') fis''( e'') d''( cis'') |
  d''4 a'8( b') cis''( d'') e''( cis'') | \break
  \barNumberCheck #21
  % 21-24: broken-chord episode, predominant, and final trill cadence.
  d''8( a') fis'( a') b'( fis') d'( fis') |
  g'8( b') e''( d'') cis''( e'') a''( g'') |
  e''8( fis'') g''( e'') cis''4.\trill( b'16 cis'') |
  d''1\fermata |
  \barNumberCheck #25
  \bar "|."
}

allegroBass = \absolute {
  \global
  \clef bass
  R1*2 |
  a,8( cis) e( d) cis( b,) a,( gis,) |
  a,4 e,8( fis,) gis,( a,) b,( gis,) |
  \barNumberCheck #5
  a,4 gis, fis, e, |
  a,2 e |
  d2 e |
  a,4 e a gis |
  \barNumberCheck #9
  b,8( d) fis( e) d( cis) b,( ais,) |
  b,4 fis,8( gis,) ais,( b,) cis( ais,) |
  b,4 a, g, fis, |
  fis2 b, |
  \barNumberCheck #13
  e4 g a, cis |
  d4 fis g, b, |
  c4 e fis, a, |
  b,2 e |
  \barNumberCheck #17
  d8( fis) a( g) fis( e) d( cis) |
  d4 a,8( b,) cis( d) e( cis) |
  d4 cis b, a, |
  d2 a, |
  \barNumberCheck #21
  fis4 d g b, |
  e4 gis a fis |
  g2 a, |
  d1\fermata |
  \barNumberCheck #25
}

allegroFigures = \figuremode {
  s1*2 |
  % Figures are intentionally sparse during running subject entries.
  s1 |
  s1 |
  s4 <6>4 s4 <4>8 <_+>8 |
  s2 <_+>2 |
  s2 <7 _+>2 |
  s2. <6>4 |
  s1 |
  s1 |
  s4 <6>4 s4 <4>8 <_+>8 |
  <7 _+>2 s2 |
  s4 <6>4 s4 <6 5>4 |
  s4 <6>4 s4 <6>4 |
  s4 <6!>4 <7 5!>4 <6 3!>4 |
  <7 _+>2 s2 |
  s1 |
  s1 |
  s4 <6>4 s4 <4>8 <3>8 |
  s1 |
  <6>4 s2 <6>4 |
  s4 <6 5>4 s4 <6>4 |
  <6>2 <7>2 |
  s1 |
}

\layout {
  \context {
    \Score
    autoBeaming = ##t
    \override BarNumber.break-visibility = ##(#f #f #t)
  }
  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #11
  }
  \context {
    \FiguredBass
    \override BassFigure.font-size = #-1
  }
}

\book {
  \bookOutputName "sonata-da-chiesa-in-d"
  \bookpart {
    \header { piece = "I. Adagio" }
    \score {
      \new StaffGroup <<
        \new Staff \with {
          instrumentName = "Violin"
          shortInstrumentName = "Vln."
          midiInstrument = "violin"
        } { \adagioViolin }
        \new Staff = "adagioContinuo" \with {
          instrumentName = \markup \center-column { "Basso continuo" "(cello)" }
          shortInstrumentName = "Bc."
          midiInstrument = "cello"
        } { \adagioBass }
        \new FiguredBass \with {
          alignBelowContext = "adagioContinuo"
          useBassFigureExtenders = ##t
        } { \adagioFigures }
      >>
      \layout { }
      \midi { }
    }
  }
  \bookpart {
    \header { piece = "II. Allegro" }
    \score {
      \new StaffGroup <<
        \new Staff \with {
          instrumentName = "Violin"
          shortInstrumentName = "Vln."
          midiInstrument = "violin"
        } { \allegroViolin }
        \new Staff = "allegroContinuo" \with {
          instrumentName = \markup \center-column { "Basso continuo" "(cello)" }
          shortInstrumentName = "Bc."
          midiInstrument = "cello"
        } { \allegroBass }
        \new FiguredBass \with {
          alignBelowContext = "allegroContinuo"
          useBassFigureExtenders = ##t
        } { \allegroFigures }
      >>
      \layout { }
      \midi { }
    }
  }
}
