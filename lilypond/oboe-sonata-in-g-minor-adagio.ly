\version "2.26.0"
\language "nederlands"

% Original composition, freely inspired by Vivaldi's high-Baroque idiom.
% 36 measures; G minor; 4/4; quarter = 52 (about 2 minutes 47 seconds).
% Exactly three staves: oboe, continuo right hand, continuo bass.
% Absolute pitches throughout: c' = middle C.
%
% DESIGN
% 1-9:   continuo introduction; chromatic lament; half cadence in G minor.
% 10-16: expansion through B-flat major, with a cadence there.
% 17-26: continuo rejoinder; sequential episode through D minor and C minor.
% 27-36: varied return of the lament; quiet close in G minor.
%
% Applied dominants include A7/C# -> D minor (6-7, 17-18, 30),
% G7/B -> C minor (7-8, 19-20, 24-25), F7 -> B-flat (10-11,
% 15-16, 21-22), and C7/E -> F major (12-13).
%
% PERFORMANCE
% Let dissonant appoggiaturas lean, and let their resolutions fall away.
% Slurs articulate local gestures; commas and rests allow the oboe to breathe.
% Trills start above the principal note. The small appoggiatura in m. 28
% takes time from its principal. The mordent in m. 5 uses the lower neighbor.
% Dynamics in the continuo indicate rhetoric, touch, and registration.
% Harpsichord; cello or bass viol may double the lower staff ad libitum.
% The realization is composed as an equal partner to the oboe.
% Printed/playback tags realize the indicated ornaments in the MIDI.
%
% Compile: lilypond -o output/pdf/oboe-sonata-in-g-minor-adagio \
%          oboe-sonata-in-g-minor-adagio.ly

\header {
  title = "Sonata in G minor"
  subtitle = "I. Adagio lagrimoso"
  subsubtitle = "For oboe and basso continuo"
  poet = "In the manner of Antonio Vivaldi"
  composer = "Original composition"
  tagline = ##f
}

#(set-global-staff-size 17.5)
\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 24\mm
  short-indent = 10\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #22
  system-system-spacing.minimum-distance = #17
  system-system-spacing.padding = #3
  markup-system-spacing.basic-distance = #12
  print-page-number = ##t
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 4/4
}

oboe = \absolute {
  \global
  \clef treble
  \tempo "Adagio lagrimoso" 4 = 52

  % 1-3: the solo enters over the continuing chromatic descent.
  \barNumberCheck #1
  R1 | % 1
  d''4.\p^\markup \italic "doloroso"( c''8) bes'8( a') g'4 | % 2
  g'8( bes') es''4~ es''8( d'' c'' bes') | % 3
  \break
  \barNumberCheck #4
  a'4~ a'16( g' a' g') fis'8( e') d' r | % 4
  r8 d'' g''8.( fis''16)
  \tag #'printed { g''8\mordent }
  \tag #'playback { g''32 fis'' g''16 }
  d''8( bes' g') | % 5
  e''8.( f''16) e''8( d'') cis''4 e''8( a') \breathe | % 6
  \break
  \barNumberCheck #7
  f''4\mp~ f''16( e'' d'' c'') b'8( d'') g'4 | % 7
  es''8( d'') c''4~ c''8( bes' a' g') | % 8
  g'4( fis') e'8( fis'16 g') a'8 r | % 9
  \break

  % 10-16: a relative-major episode retains the falling, sighing gestures.
  \barNumberCheck #10
  r8 c''16\p( d'') es''8( d'') c''( bes') a'( g') | % 10
  f'8( bes') d''4~ d''8( c'' bes' g') | % 11
  g'8( c'') e''4~ e''8( d'' c'' bes') \breathe | % 12
  \pageBreak
  \barNumberCheck #13
  a'4 c''8( f'') es''4( d''8 c'') | % 13
  bes'16( a' g' a') bes'8( d'') c''( bes') a'( g') | % 14
  a'4 c''8( es'') d''4
  \tag #'printed { c''4\trill }
  \tag #'playback { d''32 c'' d'' c'' d'' c'' bes' c'' } | % 15
  \break
  \barNumberCheck #16
  bes'2 r2 | % 16
  R1 | % 17
  r4 a'8\mp( d'') f''4( e''8 d'') | % 18
  \break

  % 19-26: falling-fifth sequence and the return toward the dominant.
  \barNumberCheck #19
  d''4~ d''16( c'' b' a') g'8( a' b' d'') | % 19
  es''2~ es''8( d'' c'' bes') \breathe | % 20
  a'8( c'') es''4~ es''8( d'' c'' bes') | % 21
  \break
  \barNumberCheck #22
  d''8\mf( f'') bes''4 a''8( g'') f''( es'') \breathe | % 22
  d''4 c''8( bes')
  \tag #'printed { a'4.\trill }
  \tag #'playback { \repeat unfold 6 { bes'32 a' } }
  g'16( a') | % 23
  g'2\p r8 d'' b'8.( a'16) | % 24
  \pageBreak
  \barNumberCheck #25
  g'8( c'') es''4 d''8( c'') bes'( a') | % 25
  g'4( fis') r2 | % 26
  d''4.\p^\markup \italic "doloroso"~ d''16( c'')
  bes'8( a') g'( fis') | % 27
  \break

  % 28-36: ornamented reprise, low-register lament, and closing dialogue.
  \barNumberCheck #28
  \tag #'printed { \appoggiatura a'8 g'4 }
  \tag #'playback { a'8( g') }
  bes'8( d'') c''( bes') a'( g') | % 28
  g'8( bes') \tuplet 3/2 { es''8( d'' c'') }
  es''8( d'') c''( bes') \breathe | % 29
  a'8( cis'') e''8.( g''16) f''4~ f''16( e'' d'' c'') | % 30
  \break
  \barNumberCheck #31
  bes'4~ bes'16( a' g' f') es'8( g') c''4 | % 31
  bes'8( a') g'( es') d'( fis')
  \tag #'printed { a'4\trill }
  \tag #'playback { bes'32 a' bes' a' bes' a' bes' a' } | % 32
  g'2 r2 | % 33
  \break
  \barNumberCheck #34
  r8 g'\p c''8.( es''16) d''8( c'') bes'( a') | % 34
  g'4( fis'8 e') d'8( fis')
  \tag #'printed { a'8.\trill }
  \tag #'playback { bes'32 a' bes' a' bes' a' }
  g'32( a') | % 35
  g'1\pp\fermata | % 36
  \barNumberCheck #37
  \bar "|."
}

continuoRight = \absolute {
  \global
  \clef treble

  \barNumberCheck #1
  <g bes d'>4\p <bes d'>8( g') <a d'>4 <a c'>8( d') | % 1
  <g bes>4 <bes d'> <g c'> <bes c'> | % 2
  <g bes>4 <g bes>8( es') <g c'>4 <es' g'> | % 3
  \barNumberCheck #4
  <g a c'>4( <fis a c'>) <fis c'>8( <a c'>) <fis a>4 | % 4
  <g bes>4 d'8( bes) <g bes>4 <g bes>8( es') | % 5
  <g a>4 <e' g'> <g a cis'> <g cis'>8( e') | % 6
  \barNumberCheck #7
  <a d'>4\mp <a d'>8( f') <f g>4 <d' f'> | % 7
  <g c'>4 <es' g'> <g c'> <es' g'>8( c') | % 8
  <g a c'>4( <fis a c'>) <fis c'>8( a) <fis a>4 | % 9

  \barNumberCheck #10
  <a c' es'>4\p <a c'>8( f') <a es'>4 <c' es'>8( f') | % 10
  <bes d'>4 <d' f'>8( bes) <bes es'>4 <bes es'>8( g') | % 11
  <g bes>4 <e' g'> <g bes c'> <bes e'> | % 12
  \barNumberCheck #13
  <a c'>4 <a c'>8( f') <a c'>4 <a d'>8( fis') | % 13
  <g bes d'>2 <g c' es'>4 <c' es'> | % 14
  <a c' es'>4 <a c'>8( f') <a es'>4 <a es'> | % 15
  \barNumberCheck #16
  <bes d' f'>2 f'16( es' d' c') bes8( a) | % 16
  <<
    { d''8.\mp( c''16) bes'8( a') g'( e') cis'( e') }
    \\
    { d'2 g }
  >> | % 17
  <a d'>4 <a d'>8( f') <a d'>4 <a d'> | % 18

  \barNumberCheck #19
  <g b f'>2~ <g b f'>4 <b f'>8( d') | % 19
  <g c' es'>4 d'8( es') <g c'>4 <es' g'> | % 20
  <f a c'>4 <a c'> <a c' es'> <c' es'>8( f') | % 21
  \barNumberCheck #22
  <bes d'>2\mf <bes es'>4 <g bes>8( es') | % 22
  <g c' es'>4 <g c'> <fis a c'> <a c'> | % 23
  <g bes d'>2\p <g b f'>4 <b f'>8( d') | % 24
  \barNumberCheck #25
  <g c' es'>4 <c' es'>8( g') <g c' es'>4 <g c'>8( es') | % 25
  <g a c'>4( <fis a c'>)
  <<
    { d''8.( c''16) bes'8( a') }
    \\
    { fis'2 }
  >> | % 26
  <g bes>4 <bes d'> <a d'> <a c'>8( d') | % 27

  \barNumberCheck #28
  <g bes d'>4 <bes d'> <g bes c'> <bes c' e'> | % 28
  <g bes>4 <bes es'> <g c'> <es' g'>8( c') | % 29
  <g a>4 <cis' e'> <a d'> <d' f'> | % 30
  \barNumberCheck #31
  <g bes>4 <g bes>8( es') <g c'>4 <c' es'> | % 31
  <g c'>4 <c' es'> <fis a c'> <a c'> | % 32
  <g bes d'>2
  <<
    { es''8( d'') c''( bes') }
    \\
    { g'2 }
  >> | % 33
  \barNumberCheck #34
  <g c' es'>4\p <c' es'> <g c' es'> <g c'>8( es') | % 34
  <g a c'>4( <fis a c'>) <fis a c'> <fis a c'> | % 35
  <g bes d'>2\pp <bes d' g'>2\fermata | % 36
  \barNumberCheck #37
  \bar "|."
}

continuoBass = \absolute {
  \global
  \clef bass

  \barNumberCheck #1
  g,8.\p( a,16) bes,8( d) fis,4 d8( fis) | % 1
  f4 d8( f) e4 c8( e) | % 2
  es4~ es16( d c bes,) c8( g,) c4 | % 3
  \barNumberCheck #4
  d4 c8( bes,) a,4 d, | % 4
  g,8( d) g16( f es d) es4 bes,8( es) | % 5
  cis8( e a g) e4 a, | % 6
  \barNumberCheck #7
  d8\mp( a,) d16( e f d) b,4 d8( f) | % 7
  c8( g,) es4 a,8.( bes,16) c8( es) | % 8
  d4 a,8( d) c( bes,) a,4 | % 9

  \barNumberCheck #10
  a,4\p f8( es) c4 f,8( a,) | % 10
  bes,8( f) d16( es f d) es8( f g es) | % 11
  e8( g) c'4 bes8( g e c) | % 12
  \barNumberCheck #13
  f8( c a, f) fis,4 d8( fis) | % 13
  g,8.( a,16) d8( bes,) c4~ c16( d es c) | % 14
  f,8( c f es) d( c a, f,) | % 15
  \barNumberCheck #16
  bes,4 f8( d) bes,16( a, g, f,) g,8( a,) | % 16
  g,8\mp( bes, d g) cis4 a,8( cis) | % 17
  d8( a,) f4~ f16( e d c) a,8( d) | % 18

  \barNumberCheck #19
  b,8( d g f) d4 g, | % 19
  c8( d16 es) g8( es) c'( bes g es) | % 20
  a,4 c8( f) es( c a, f,) | % 21
  \barNumberCheck #22
  bes,4\mf f16( g a bes) g8( f es d) | % 22
  a,8( bes,16 c) es8( c) d( c a, fis,) | % 23
  g,4\p d8( g) b,8( d) g16( a b g) | % 24
  \barNumberCheck #25
  c8( es g c') a4 es8( c) | % 25
  d4 a,8( d) fis8( e16 d) c8( a,) | % 26
  g,8( d g bes) fis4 d8( fis) | % 27

  \barNumberCheck #28
  f4~ f16( es d c) e8( g c' bes) | % 28
  es8( d16 c) bes,8( g,) c8( d es c) | % 29
  cis8( e) a8.( g16) f8( e16 d) a,8( d) | % 30
  \barNumberCheck #31
  es4 bes,16( c d es) c8( bes, g, c) | % 31
  a,8( c) es16( d c bes,) a,8( d fis, d,) | % 32
  g,8( a,16 bes,) d8( g) es8( d c bes,) | % 33
  \barNumberCheck #34
  c8\p( es16 f) g8( es) a,8( c es c) | % 34
  d4~ d16( c bes, a,) d8( c a, d,) | % 35
  g,2\pp d4 g,4\fermata | % 36
  \barNumberCheck #37
  \bar "|."
}

ensemble = <<
  \new Staff = "oboe" \with {
    instrumentName = "Oboe"
    shortInstrumentName = "Ob."
    midiInstrument = "oboe"
    midiMinimumVolume = #0.60
    midiMaximumVolume = #0.90
  } { \oboe }
  \new PianoStaff \with {
    instrumentName = \markup \center-column { "Basso" "continuo" }
    shortInstrumentName = "B.c."
  } <<
    \new Staff = "continuoRH" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.48
      midiMaximumVolume = #0.76
    } { \continuoRight }
    \new Staff = "continuoBass" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.52
      midiMaximumVolume = #0.80
    } { \continuoBass }
  >>
>>

\score {
  \keepWithTag #'printed \ensemble
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
    }
    \context {
      \PianoStaff
      \override StaffGrouper.staff-staff-spacing.basic-distance = #12
      \override StaffGrouper.staff-staff-spacing.minimum-distance = #10
    }
  }
}

\score {
  \keepWithTag #'playback \ensemble
  \midi { \tempo 4 = 52 }
}
