\version "2.24.3"
\language "nederlands"

% Original movement in the high-Baroque manner of Handel.
% 64 written measures: ||: 24 :||: 40 :||, about 3'12" with repeats.
% The keyboard realization is deliberately light. A cello or viol may
% double its lower staff. Trills begin on the upper auxiliary; add tasteful
% ornamentation on the repeats. The hemiola in mm. 61-62 stays in 3/4.
% All pitches are absolute (c' = middle C).

\header {
  title = "Sonata in D major"
  subtitle = "I. Allegro giocoso"
  subsubtitle = "For violin and basso continuo"
  composer = "Original composition"
  poet = "In the manner of G. F. Handel"
  tagline = ##f
}

#(set-global-staff-size 17)
\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 23\mm
  short-indent = 10\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #19
  system-system-spacing.minimum-distance = #15
  system-system-spacing.padding = #2
  markup-system-spacing.basic-distance = #12
  print-page-number = ##t
}

global = {
  \key d \major
  \time 3/4
}

violin = \absolute {
  \global
  \clef treble
  \tempo "Allegro giocoso" 4 = 120
  \repeat volta 2 {
    % 1-8: the opening period, D major.
    d''8.\f( fis''16) a''4-. fis''8( d'') |
    e''8( fis'') g''( e'') cis''( a') |
    fis'8.( a'16) d''4-. e''8( fis'') |
    g''8( fis'') e''4 cis'' | \break
    d''8.( fis''16) a''4-. fis''8( d'') |
    b'8( d'') g''4 fis''8( e'') |
    d''4 cis''4.\trill b'16( cis'') |
    d''4 a' r | \break
    % 9-16: falling-fifth sequence, then a cadence in A.
    fis''8\p( d'') b'( cis'') d''( b') |
    g''8( e'') b'( cis'') d''( e'') |
    e''8( cis'') a'( b') cis''( a') |
    fis''8( d'') a'( b') cis''( d'') | \break
    fis''4 d''8( cis'') b'( a') |
    gis'8( b') e''4 d''8( cis'') |
    cis''4 b'4.\trill a'16( b') |
    a'4 e'' r8 e'' | \pageBreak
    % 17-24: a brighter closing phrase in the dominant.
    a''8\f( gis'') fis''( e'') d''( cis'') |
    b'8( e'') gis''4 fis''8( e'') |
    a''8( fis'') cis''( d'') e''( fis'') |
    d''8( cis'') b'( a') gis'( fis') | \break
    e''4 cis''8( b') a'( cis'') |
    fis''4 e''8( d'') cis''( b') |
    a'4 gis'4.\trill fis'16( gis') |
    a'2. | \break
  }
  \repeat volta 2 {
    % 25-32: the head-motif in A and F-sharp minor; a chain of sequences.
    e''8.\f( a''16) cis'''4 b''8( a'') |
    gis''8( fis'') e''4 d''8( cis'') |
    cis''8.\p( fis''16) a''4 gis''8( fis'') |
    eis''8( gis'') cis'''4 b''8( gis'') | \break
    a''8( fis'') cis''( a') dis''( fis'') |
    g''8( e'') b'( g') cis''( e'') |
    fis''8( d'') a'( fis') b'( d'') |
    eis''8( gis'') cis'''4 ais''8( fis'') | \pageBreak
    % 33-40: a B-minor cadence and a turn toward G major.
    b''8\f( a'') fis''( e'') d''( cis'') |
    b'8( cis'') d''4 cis''8( b') |
    b'4 ais'4.\trill gis'16( ais') |
    b'4 fis' r8 fis'' | \break
    g''8\p( e'') b'( cis'') d''( e'') |
    e''8( cis'') a'( b') cis''( a') |
    fis''8( d'') a'( b') c''( d'') |
    g''4 d''8( b') g'4 | \break
    % 41-48: a circle of fifths and the dominant preparation for the return.
    e''8( c'') g'( a') b'( c'') |
    e''8( c'') a'( b') c''( a') |
    fis''8( d'') a'( b') c''( a') |
    b'8( d'') g''4 fis''8( e'') | \break
    d''8( b') e''4 d''8( cis'') |
    b'8( a') g'( fis') e'( g') |
    fis'8( a') d''4 cis''8( b') |
    a'4 e''4.\trill d''16( e'') | \pageBreak
    % 49-56: the opening period returns with light diminutions.
    d''8.\f( fis''16) a''4-. fis''8( d'') |
    e''16( fis'' g''8) g''( fis''16 e'') cis''8( a') |
    fis'16( g' a'8) d''4-. e''8( fis'') |
    g''8( fis'') e''4 cis'' | \break
    d''16( e'' fis''8) a''4 b''8( a'') |
    g''8( fis'') e''( d'') b'( g') |
    a'8( d'') cis''4.\trill b'16( cis'') |
    d''4 a' r8 a' | \break
    % 57-64: the bass takes the jaunty figure; a cadential hemiola.
    b'4 d''8( b') g'( b') |
    a'4 d''8( a') fis'( a') |
    g'8( b') e''4 d''8( cis'') |
    b'8( a') g'( e') cis''( a') | \break
    g''2 fis''4~ |
    fis''4 e''2\trill |
    d''8( fis'') a''4 cis'' |
    d''2. |
  }
}

continuoRight = \absolute {
  \global
  \clef treble
  \repeat volta 2 {
    % 1-8
    <fis' a'>4 <d' a'> <d' fis'> |
    <e' g'>2 <cis' g'>4 |
    <d' fis'>2 <a' d''>4 |
    <b' d''>4 <g' a'> <e' g'> |
    <fis' a'>4 <d' a'> <d' fis'> |
    <d' g'>2 <b' d''>4 |
    <fis' a'>4 <e' g'>2 |
    <fis' a'>2 r4 |
    % 9-16
    <fis' b'>4 <fis' b'> <d' a'> |
    <g' b'>4 <e' b'> <e' g'> |
    <e' g'>4 <e' g'> <a' cis''> |
    <fis' a'>4 <d' a'> <fis' a'> |
    <fis' b'>4 <d' fis'>2 |
    <b' d''>4 <gis' d''> <gis' b'> |
    <a' cis''>4 <gis' d''>2 |
    <a' cis''>4 r8 cis'' b' a' |
    % 17-24
    <cis' e'>4 <e' a'> <e' a'> |
    <b' e''>4 <gis' d''> <gis' b'> |
    <a' cis''>4 <a' cis''> <fis' a'> |
    <fis' a'>4 <d' a'> <d' fis'> |
    <e' a'>4 <cis' e'> <a' cis''> |
    <a' d''>4 <gis' d''> <gis' d''> |
    <a' b'>4 <gis' b'>2 |
    <cis' e'>2. |
  }
  \repeat volta 2 {
    % 25-32
    <cis' e'>4 <e' a'> <a' cis''> |
    <gis' d''>4 <b' e''> <gis' d''> |
    <a' cis''>4 <fis' cis''> <fis' a'> |
    <gis' b'>4 <eis' b'> <eis' gis'> |
    <a' cis''>4 <fis' a'> <a' dis''> |
    <g' b'>4 <e' b'> <g' cis''> |
    <fis' a'>4 <d' a'> <g' b'> |
    <gis' b'>4 <gis' b'> <ais' cis''> |
    % 33-40
    <d' fis'>4 <fis' b'> <fis' a'> |
    <e' g'>4 <b' e''> <e' g'> |
    <fis' b'>4 <e' ais'>2 |
    <d' fis'>2 r4 |
    <g' b'>4 <e' b'> <e' g'> |
    <g' a'>4 <e' g'> <g' a'> |
    <fis' a'>4 <d' a'> <fis' c''> |
    <g' b'>4 <g' b'> <b' d''> |
    % 41-48
    <e' g'>4 <c' g'> <c' e'> |
    <g' c''>4 <e' g'> <g' c''> |
    <fis' c''>4 <a' c''> <d' fis'> |
    <g' b'>4 <d' g'> <e' g'> |
    <g' b'>4 <e' b'> <g' b'> |
    <e' g'>4 <cis' g'> <cis' e'> |
    <d' fis'>4 <fis' a'> <e' g'> |
    <cis' g'>4 <a' cis''> <g' cis''> |
    % 49-56
    <fis' a'>4 <d' a'> <d' fis'> |
    <e' g'>2 <cis' g'>4 |
    <d' fis'>2 <a' d''>4 |
    <b' d''>4 <g' a'> <e' g'> |
    <fis' a'>4 <d' a'> <fis' a'> |
    <b' d''>4 <g' b'> <b' d''> |
    <fis' a'>4 <e' g'>2 |
    <fis' a'>2 r4 |
    % 57-64
    <d' g'>4 <g' b'> <d' g'> |
    <d' fis'>4 <fis' a'> <d' fis'> |
    <e' g'>4 <g' b'> <e' b'> |
    <e' g'>4 <cis' g'> <e' g'> |
    <b' d''>2 <a' d''>4~ |
    <a' d''>4 <g' cis''>2 |
    <fis' a'>4 <d' a'> <e' g'> |
    <fis' a' d''>2. |
  }
}

continuoBass = \absolute {
  \global
  \clef bass
  \repeat volta 2 {
    % 1-8
    d4 fis a |
    cis4 e a, |
    fis4 a d' |
    g8 b, cis4 a, |
    d4 fis a |
    b,4 d g |
    a,2 a,4 |
    d4 fis a, |
    % 9-16
    b,4 d fis |
    e4 g b |
    a,4 cis e |
    d4 fis d |
    d4 b, d |
    e4 b, e |
    e2 e4 |
    a,4 cis e |
    % 17-24
    a,8 b, cis d e cis |
    gis,4 b, e |
    fis,4 cis fis |
    b,4 fis b |
    e4 a e |
    d4 b, e |
    e2 e,4 |
    a,2. |
  }
  \repeat volta 2 {
    % 25-32
    a,4 cis e |
    b,4 gis, b, |
    fis,4 a, cis |
    eis,4 gis, cis |
    fis,4 a, b, |
    e4 g a, |
    d4 fis g |
    cis4 eis fis |
    % 33-40
    b,4 d fis |
    e4 g cis |
    fis,2 fis,4 |
    b,4 d fis, |
    e4 g b |
    a,4 cis e |
    d4 fis a |
    g,4 b, d |
    % 41-48
    c4 e g |
    a,4 c e |
    d4 fis a |
    g4 b, c |
    e4 g e |
    a,4 e a, |
    a,2 a,4 |
    a,4 e a, |
    % 49-56
    d4 fis a |
    cis4 e a, |
    fis4 a d' |
    g8 b, cis4 a, |
    d4 fis d |
    g,4 b, g, |
    a,2 a,4 |
    d4 fis a, |
    % 57-64
    g,8. b,16 d4 b,8 g, |
    fis,8. a,16 d4 a,8 fis, |
    e,8. g,16 b,4 g,8 e, |
    a,8. cis16 e4 cis8 a, |
    b,2 a,4~ |
    a,4 a,2 |
    d4 fis a, |
    d2. |
  }
}

ensemble = <<
  \new Staff = "violin" \with {
    instrumentName = "Violin"
    shortInstrumentName = "Vln."
    midiInstrument = "violin"
    midiMinimumVolume = #0.65
    midiMaximumVolume = #0.95
  } { \violin }
  \new PianoStaff \with {
    instrumentName = \markup \center-column { "Basso" "continuo" }
    shortInstrumentName = "B.c."
  } <<
    \new Staff = "continuoRH" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.40
      midiMaximumVolume = #0.55
    } { \continuoRight }
    \new Staff = "continuoLH" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.50
      midiMaximumVolume = #0.65
    } { \continuoBass }
  >>
>>

\score {
  \ensemble
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
      \override SpacingSpanner.uniform-stretching = ##t
    }
  }
}

% A second, MIDI-only score unfolds both repeats for complete playback.
\score {
  \unfoldRepeats \ensemble
  \midi { \tempo 4 = 120 }
}
