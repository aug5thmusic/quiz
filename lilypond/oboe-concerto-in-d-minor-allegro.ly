\version "2.26.0"
\language "nederlands"

% ORIGINAL COMPOSITION, freely inspired by the oboe concertos of Albinoni.
% 168 measures, 2/4, quarter = 104; about 3 minutes 14 seconds.
% Exactly three staves: solo oboe and a fully realized two-staff continuo.
% Harpsichord with cello/bass viol doubling the lower staff ad libitum.
%
% RITORNELLO DESIGN
% 1-24    R1: D minor, dotted head / sequential expansion / cadential tail.
% 25-48   S1: D minor -> F major; oboe's first entrance is at measure 25.
% 49-64   R2: F major, transformed head and cadential tail.
% 65-96   S2: F -> D minor -> A minor -> G minor; contrasting registers.
% 97-112  R3: G minor, head and tail transposed a fourth above the opening.
% 113-144 S3: G minor -> B-flat -> F -> D minor; dialogue and dominant pedal.
% 145-168 R4: D minor, complete return; oboe joins the final eight measures.
%
% PERFORMANCE
% Allegro with gravity: firm dotted rhythms, clear but unforced sixteenths.
% Slurs group local gestures; the frequent written rests allow breathing.
% Trills start on the upper auxiliary and yield to their written endings.
% Dynamics guide rhetoric; on harpsichord use articulation/registration.
% The two continuo staves are a composed realization, not a piano reduction
% of missing orchestral parts. The bass is an equal contrapuntal participant.
% Printed/playback tags realize oboe trills explicitly in the supplied MIDI.
% All pitches are absolute; c' is middle C. Oboe range: F4-D6.

\header {
  title = "Concerto in D minor"
  subtitle = "I. Allegro"
  subsubtitle = "For oboe and basso continuo"
  poet = "In the manner of Tomaso Albinoni"
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
  indent = 23\mm
  short-indent = 10\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #17
  system-system-spacing.minimum-distance = #13
  system-system-spacing.padding = #2
  markup-system-spacing.basic-distance = #10
  print-page-number = ##t
}

global = {
  \numericTimeSignature
  \time 2/4
  \key d \minor
  \set Timing.beatBase = #1/8
  \set Timing.beatStructure = #'(2 2)
  s2*80
  \key g \minor
  s2*36
  \key d \minor
  s2*52
}

oboe = \absolute {
  \clef treble
  \tempo "Allegro, con gravita" 4 = 104

  % R1 - Ritornello: measures 1-24.
  \barNumberCheck #1
  \mark \markup \box "R1 - Ritornello"
  R2 | % 1
  R2 | % 2
  R2 | % 3
  R2 | % 4
  \barNumberCheck #5
  \break
  R2 | % 5
  R2 | % 6
  R2 | % 7
  R2 | % 8
  \barNumberCheck #9
  \break
  R2 | % 9
  R2 | % 10
  R2 | % 11
  R2 | % 12
  \barNumberCheck #13
  \break
  R2 | % 13
  R2 | % 14
  R2 | % 15
  R2 | % 16
  \barNumberCheck #17
  \break
  R2 | % 17
  R2 | % 18
  R2 | % 19
  R2 | % 20
  \barNumberCheck #21
  \break
  R2 | % 21
  R2 | % 22
  R2 | % 23
  R2 | % 24
  \barNumberCheck #25
  \break
  \bar "||"

  % S1 - Solo: measures 25-48.
  \barNumberCheck #25
  \mark \markup \box "S1 - Solo"
  a'8.\f( d''16) f''16( e'' d'' c'') | % 25
  cis''16( d'' e'' f'') g''( f'' e'' cis'') | % 26
  d''16( e'' f'' g'') a''8( f'') | % 27
  \tag #'printed { e''8.\trill( d''16) d''8 r8 } \tag #'playback { f''32 e'' f'' e'' f'' e''( d''16) d''8 r8 } | % 28
  \barNumberCheck #29
  \break
  f''16( a'' g'' f'') e''( d'' c'' d'') | % 29
  bes'16( d'' c'' bes') a'( g' a' bes') | % 30
  g'16( c'' bes' c'') e''( g'' f'' e'') | % 31
  f''4 r4 | % 32
  \barNumberCheck #33
  \break
  f''8.\p( bes''16) a''16( g'' f'' e'') | % 33
  e''16( g'' f'' e'') d''( c'' bes' g') | % 34
  c''16( e'' d'' c'') b'( c'' d'' e'') | % 35
  f''8( d'') a'8 r8 | % 36
  \barNumberCheck #37
  \break
  bes'16\mf( d'' c'' bes') a'( bes' c'' d'') | % 37
  e''16( g'' f'' e'') d''( e'' f'' g'') | % 38
  \tag #'printed { a''8( g''16 f'') e''8.\trill( f''16) } \tag #'playback { a''8( g''16 f'') f''32 e'' f'' e'' f'' e''( f''16) } | % 39
  f''4 r4 | % 40
  \barNumberCheck #41
  \break
  a''16\f( f'' d'' f'') a''( g'' f'' e'') | % 41
  g''16( d'' bes' d'') g''( f'' e'' d'') | % 42
  e''16( g'' c''' bes'') a''( g'' f'' e'') | % 43
  f''8( c'') a'8 r8 | % 44
  \barNumberCheck #45
  \break
  d''8.\p( f''16) bes''16( a'' g'' f'') | % 45
  g''16( f'' e'' d'') c''( bes' a' g') | % 46
  \tag #'printed { a'16\f( c'' f'' a'') g''8.\trill( f''16) } \tag #'playback { a'16\f( c'' f'' a'') a''32 g'' a'' g'' a'' g''( f''16) } | % 47
  f''4 r4 | % 48
  \barNumberCheck #49
  \break
  \bar "||"

  % R2 - Ritornello in F: measures 49-64.
  \barNumberCheck #49
  \mark \markup \box "R2 - Ritornello in F"
  R2 | % 49
  R2 | % 50
  R2 | % 51
  R2 | % 52
  \barNumberCheck #53
  \break
  R2 | % 53
  R2 | % 54
  R2 | % 55
  R2 | % 56
  \barNumberCheck #57
  \break
  R2 | % 57
  R2 | % 58
  R2 | % 59
  R2 | % 60
  \barNumberCheck #61
  \break
  R2 | % 61
  R2 | % 62
  R2 | % 63
  R2 | % 64
  \barNumberCheck #65
  \break
  \bar "||"

  % S2 - Solo: measures 65-96.
  \barNumberCheck #65
  \mark \markup \box "S2 - Solo"
  c''8.\p( f''16) a''8( g'') | % 65
  f''8( e''16 d'') e''8( c'') | % 66
  d''16( f'' e'' d'') c''( bes' a' g') | % 67
  a'4 r4 | % 68
  \barNumberCheck #69
  \break
  a'16\mf( d'' cis'' d'') f''( e'' d'' c'') | % 69
  bes'16( d'' cis'' d'') g''( f'' e'' d'') | % 70
  \tag #'printed { cis''8.\trill( b'16) cis''16( d'' e'' cis'') } \tag #'playback { d''32 cis'' d'' cis'' d'' cis''( b'16) cis''16( d'' e'' cis'') } | % 71
  d''4 r4 | % 72
  \barNumberCheck #73
  \break
  e''16\f( a'' gis'' a'') c'''( b'' a'' g'') | % 73
  f''16( a'' gis'' a'') d'''( c''' b'' a'') | % 74
  \tag #'printed { gis''8.\trill( fis''16) gis''16( a'' b'' gis'') } \tag #'playback { a''32 gis'' a'' gis'' a'' gis''( fis''16) gis''16( a'' b'' gis'') } | % 75
  a''4 r4 | % 76
  \barNumberCheck #77
  \break
  g''16\p( e'' c'' e'') g''( f'' e'' d'') | % 77
  f''16( d'' b' d'') f''( e'' d'' c'') | % 78
  \tag #'printed { e''8( d''16 c'') b'8.\trill( c''16) } \tag #'playback { e''8( d''16 c'') c''32 b' c'' b' c'' b'( c''16) } | % 79
  c''4 r4 | % 80
  \barNumberCheck #81
  \break
  bes'8.\mf( d''16) g''16( f'' ees'' d'') | % 81
  c''16( ees'' d'' c'') bes'( a' g' a') | % 82
  fis''16\f( a'' g'' fis'') ees''( d'' c'' a') | % 83
  bes'8( g') d''8 r8 | % 84
  \barNumberCheck #85
  \break
  bes''16( a'' g'' f'') ees''( d'' c'' bes') | % 85
  a''16( g'' fis'' ees'') d''( c'' bes' a') | % 86
  \tag #'printed { g''8( fis''16 g'') a''8.\trill( g''16) } \tag #'playback { g''8( fis''16 g'') bes''32 a'' bes'' a'' bes'' a''( g''16) } | % 87
  g''4 r4 | % 88
  \barNumberCheck #89
  \break
  d''16\p( g'' fis'' g'') bes''( a'' g'' f'') | % 89
  ees''8( c'') r16 g'( a' bes') | % 90
  c''16\mf( ees'' d'' c'') bes'( a' g' fis') | % 91
  g'8( bes') d''8 r8 | % 92
  \barNumberCheck #93
  \break
  g''16\f( d'' bes' d'') g''( a'' bes'' c''') | % 93
  bes''16( a'' g'' f'') ees''( d'' c'' bes') | % 94
  \tag #'printed { bes'16( d'' g'' bes'') a''8.\trill( g''16) } \tag #'playback { bes'16( d'' g'' bes'') bes''32 a'' bes'' a'' bes'' a''( g''16) } | % 95
  g''4 r4 | % 96
  \barNumberCheck #97
  \break
  \bar "||"

  % R3 - Ritornello in G minor: measures 97-112.
  \barNumberCheck #97
  \mark \markup \box "R3 - Ritornello in G minor"
  R2 | % 97
  R2 | % 98
  R2 | % 99
  R2 | % 100
  \barNumberCheck #101
  \break
  R2 | % 101
  R2 | % 102
  R2 | % 103
  R2 | % 104
  \barNumberCheck #105
  \break
  R2 | % 105
  R2 | % 106
  R2 | % 107
  R2 | % 108
  \barNumberCheck #109
  \break
  R2 | % 109
  R2 | % 110
  R2 | % 111
  R2 | % 112
  \barNumberCheck #113
  \break
  \bar "||"

  % S3 - Solo: measures 113-144.
  \barNumberCheck #113
  \mark \markup \box "S3 - Solo"
  g''8.\p( bes''16) a''16( g'' f'' ees'') | % 113
  d''16( f'' ees'' d'') c''( bes' a' f') | % 114
  g'16( bes' a' bes') d''( c'' bes' a') | % 115
  g'4 r4 | % 116
  \barNumberCheck #117
  \break
  f''16\mf( a'' g'' f'') e''( d'' c'' bes') | % 117
  g''16( bes'' a'' g'') f''( e'' d'' c'') | % 118
  \tag #'printed { a''8( g''16 f'') e''8.\trill( f''16) } \tag #'playback { a''8( g''16 f'') f''32 e'' f'' e'' f'' e''( f''16) } | % 119
  f''4 r4 | % 120
  \barNumberCheck #121
  \break
  r8 d''16\p( e'') f''( e'' d'' c'') | % 121
  bes'8( g') r4 | % 122
  r8 a'16( b') cis''( d'' e'' cis'') | % 123
  d''4 r4 | % 124
  \barNumberCheck #125
  \break
  r8 g''16\mf( a'') bes''( a'' g'' f'') | % 125
  e''8( c'') r4 | % 126
  r8 e''16( f'') g''( f'' e'' cis'') | % 127
  d''4 r4 | % 128
  \barNumberCheck #129
  \break
  f''32\f( g'' a'' bes'' a'' g'' f'' e'') d''16( f'' a'' f'') | % 129
  g''32( a'' bes'' c''' bes'' a'' g'' f'') e''16( d'' cis'' bes') | % 130
  a'16( cis'' e'' a'') g''( e'' cis'' a') | % 131
  d''8( f'') a''8 r8 | % 132
  \barNumberCheck #133
  \break
  bes''16( g'' e'' g'') bes''( a'' g'' f'') | % 133
  a''16( f'' d'' f'') a''( g'' f'' e'') | % 134
  \tag #'printed { e''16( g'' bes'' g'') a''8.\trill( g''16) } \tag #'playback { e''16( g'' bes'' g'') bes''32 a'' bes'' a'' bes'' a''( g''16) } | % 135
  f''8( d'') r4 | % 136
  \barNumberCheck #137
  \break
  a''16\f( e'' cis'' e'') a''( bes'' a'' g'') | % 137
  f''16( a'' d''' cis''') d'''8( a'') | % 138
  bes''16( g'' e'' g'') a''( g'' f'' e'') | % 139
  \tag #'printed { cis''8.\trill( b'16) a'8 r8 } \tag #'playback { d''32 cis'' d'' cis'' d'' cis''( b'16) a'8 r8 } | % 140
  \barNumberCheck #141
  \break
  d''32( e'' f'' g'' a'' bes'' c''' d''') c'''16( bes'' a'' g'') | % 141
  f''16( e'' d'' c'') bes'( a' g' f') | % 142
  \tag #'printed { f''16( a'' f'' d'') cis''8.\trill( d''16) } \tag #'playback { f''16( a'' f'' d'') d''32 cis'' d'' cis'' d'' cis''( d''16) } | % 143
  d''4 r4 | % 144
  \barNumberCheck #145
  \break
  \bar "||"

  % R4 - Ritornello da capo: measures 145-168.
  \barNumberCheck #145
  \mark \markup \box "R4 - Ritornello da capo"
  R2 | % 145
  R2 | % 146
  R2 | % 147
  R2 | % 148
  \barNumberCheck #149
  \break
  R2 | % 149
  R2 | % 150
  R2 | % 151
  R2 | % 152
  \barNumberCheck #153
  \break
  R2 | % 153
  R2 | % 154
  R2 | % 155
  R2 | % 156
  \barNumberCheck #157
  \break
  R2 | % 157
  R2 | % 158
  R2 | % 159
  R2 | % 160
  \barNumberCheck #161
  \break
  d''8.\f( g''16) bes''16( a'' g'' f'') | % 161
  \tag #'printed { f''8.\trill( e''16) d''8 r8 } \tag #'playback { g''32 f'' g'' f'' g'' f''( e''16) d''8 r8 } | % 162
  e''16( g'' bes'' a'') g''( f'' e'' d'') | % 163
  \tag #'printed { cis''8.\trill( b'16) a'8 r8 } \tag #'playback { d''32 cis'' d'' cis'' d'' cis''( b'16) a'8 r8 } | % 164
  \barNumberCheck #165
  \break
  d''16( f'' a'' d''') c'''( bes'' a'' g'') | % 165
  e''16( g'' a'' bes'') a''( g'' e'' cis'') | % 166
  \tag #'printed { d''16( e'' f'' g'') e''8.\trill( d''16) } \tag #'playback { d''16( e'' f'' g'') f''32 e'' f'' e'' f'' e''( d''16) } | % 167
  d''2\fermata | % 168
  \barNumberCheck #169
  \break
  \bar "|."
}

continuoRight = \absolute {
  \clef treble

  % R1 - Ritornello: measures 1-24.
  \barNumberCheck #1
  <d' f' a'>8.\f d''16 f''16( e'' d'' c'') | % 1
  <e' g' cis''>8. e''16 g''16( f'' e'' cis'') | % 2
  <f' a' d''>8 a'16( bes') c''( bes' a' g') | % 3
  <g' bes' d''>8 <e' g' cis''>8 <f' a' d''>8 r8 | % 4
  \barNumberCheck #5
  a'16\mf( d'' cis'' d'') f''( e'' d'' c'') | % 5
  g'16( c'' b' c'') e''( d'' c'' bes') | % 6
  <a' c''>8. f''16 e''( d'' c'' bes') | % 7
  <g' cis''>8. e''16 <g' cis''>8 r8 | % 8
  \barNumberCheck #9
  f''16\f( e'' d'' a') f'( a' d'' f'') | % 9
  g''16( f'' e'' d'') bes'( a' g' bes') | % 10
  e''16( d'' c'' g') e'( g' c'' e'') | % 11
  f''16( e'' d'' c'') a'( g' f' a') | % 12
  \barNumberCheck #13
  d''16( c'' bes' f') d'( f' bes' d'') | % 13
  <g' bes' e''>8 <g' bes' d''>8 <g' bes' cis''>8 <g' bes' d''>8 | % 14
  <g' a' d''>4 <g' a' cis''>8 <e' a' cis''>8 | % 15
  <f' a' d''>4 r8 a'16( d'') | % 16
  \barNumberCheck #17
  <g' bes' d''>8.\p e''16 d''( c'' bes' a') | % 17
  <f' a' d''>8. e''16 f''( e'' d'' c'') | % 18
  <g' bes' e''>8. d''16 cis''( d'' e'' g'') | % 19
  <g' a' cis''>4\f e''8( cis'') | % 20
  \barNumberCheck #21
  <f' a' d''>8. f''16 e''16( d'' cis'' d'') | % 21
  <g' a' cis''>8 e''16( f'') g''( e'' cis'' a') | % 22
  <g' bes' d''>8 <g' a' cis''>8 <e' a' cis''>8 <g' a' cis''>8 | % 23
  <f' a' d''>4 r4 | % 24
  \barNumberCheck #25

  % S1 - Solo: measures 25-48.
  \barNumberCheck #25
  <f' a'>8\mp r8 <f' a'>8 r8 | % 25
  <e' g'>8 r8 <e' g'>8 r8 | % 26
  <f' a'>4 <a' d''>8 <f' a'>8 | % 27
  <g' cis''>8 <g' cis''>8 <f' a'>8 r8 | % 28
  \barNumberCheck #29
  d'8( f') a'16( g' f' e') | % 29
  <d' g'>8 <d' g'>8 <d' g'>4 | % 30
  <e' bes'>8 <e' bes'>8 <e' a'>8 <e' bes'>8 | % 31
  <a' c''>8. c''16 a'16( g' f' e') | % 32
  \barNumberCheck #33
  <d' f'>8 r8 <d' f'>8 r8 | % 33
  <e' bes'>8 <g' bes'>8 <e' bes'>4 | % 34
  <e' a'>8 r8 <e' a'>8 r8 | % 35
  <f' a'>8 a'16( bes') c''( bes' a' f') | % 36
  \barNumberCheck #37
  <d' g'>8 <d' g'>8 <g' bes'>8 <d' g'>8 | % 37
  <e' bes'>8 <e' bes'>8 <g' c''>8 <g' bes'>8 | % 38
  <a' c''>4 <g' bes'>8 <e' bes'>8 | % 39
  <a' c''>8 c''16( d'') c''( bes' a' g') | % 40
  \barNumberCheck #41
  <f' a'>8 r8 <f' a'>8 r8 | % 41
  <g' bes'>8 r8 <g' bes'>8 r8 | % 42
  <g' bes'>8 <e' bes'>8 <g' bes'>4 | % 43
  <f' c''>8. c''16 a'16( g' f' e') | % 44
  \barNumberCheck #45
  <f' bes'>8 r8 <f' bes'>8 r8 | % 45
  <g' bes'>8 <g' bes'>8 <g' bes'>4 | % 46
  <f' a' c''>4 <e' g' bes'>4 | % 47
  <f' a' c''>4 r4 | % 48
  \barNumberCheck #49

  % R2 - Ritornello in F: measures 49-64.
  \barNumberCheck #49
  <f' a' c''>8.\f f''16 a''16( g'' f'' e'') | % 49
  <g' bes' e''>8. g''16 bes''16( a'' g'' e'') | % 50
  <a' c'' f''>8 c''16( d'') e''( d'' c'' bes') | % 51
  <bes' d'' f''>8 <g' bes' e''>8 <a' c'' f''>8 r8 | % 52
  \barNumberCheck #53
  c''16\mf( f'' e'' f'') a''( g'' f'' e'') | % 53
  bes'16( e'' d'' e'') g''( f'' e'' d'') | % 54
  <c'' e''>8. a''16 g''( f'' e'' d'') | % 55
  <bes' e''>8. g''16 <bes' e''>8 r8 | % 56
  \barNumberCheck #57
  <bes' d'' f''>8.\p g''16 f''( e'' d'' c'') | % 57
  <a' c'' f''>8. g''16 a''( g'' f'' e'') | % 58
  <bes' d'' g''>8. f''16 e''( f'' g'' bes'') | % 59
  <bes' c'' e''>4\f g''8( e'') | % 60
  \barNumberCheck #61
  <a' c'' f''>8. a''16 g''16( f'' e'' f'') | % 61
  <bes' c'' e''>8 g''16( a'') bes''( g'' e'' c'') | % 62
  <bes' d'' f''>8 <bes' c'' e''>8 <g' c'' e''>8 <bes' c'' e''>8 | % 63
  <a' c'' f''>4 r4 | % 64
  \barNumberCheck #65

  % S2 - Solo: measures 65-96.
  \barNumberCheck #65
  <f' a'>4\p <f' c''>8 <f' a'>8 | % 65
  <g' bes'>8 <e' bes'>8 <g' c''>8 <e' bes'>8 | % 66
  <f' bes'>8 <f' bes'>8 <g' bes'>8 <e' bes'>8 | % 67
  <a' c''>8. f''16 e''16( d'' c'' bes') | % 68
  \barNumberCheck #69
  <f' a'>8\mp r8 <f' a'>8 r8 | % 69
  <g' bes'>8 r8 <g' bes'>8 r8 | % 70
  <g' a'>4 <e' a'>8 <g' a'>8 | % 71
  <f' a'>8 d''16( e'') f''( e'' d'' c'') | % 72
  \barNumberCheck #73
  <e' a'>8 r8 <e' a'>8 r8 | % 73
  <f' a'>8 r8 <f' a'>8 r8 | % 74
  <d' e'>4 <b e'>8 <d' e'>8 | % 75
  <c' e' a'>8 a'16( b') c''( b' a' g') | % 76
  \barNumberCheck #77
  c'8( e') g'8( c'') | % 77
  <d' g'>8 <d' g'>8 <f' g'>8 <d' g'>8 | % 78
  <e' g'>4 <d' f'>8 <d' g'>8 | % 79
  <e' g'>8 c''16( bes') a'( g' f' e') | % 80
  \barNumberCheck #81
  <d' g'>8\mp r8 <d' g'>8 r8 | % 81
  <ees' g'>8 <ees' g'>8 <ees' g'>4 | % 82
  <c' d'>8 <c' d'>8 <c' d'>8 <c' d'>8 | % 83
  <d' g'>8 g'16( a') bes'( a' g' f') | % 84
  \barNumberCheck #85
  <ees' g'>8 r8 <ees' g'>8 r8 | % 85
  <c' fis'>8 r8 <c' fis'>8 r8 | % 86
  <bes d' g'>4 <c' d' fis'>4 | % 87
  <bes d' g'>8 d''16( ees'') d''( c'' bes' a') | % 88
  \barNumberCheck #89
  <g' bes'>8 r8 <g' bes'>8 r8 | % 89
  g'16( c'' b' c'') ees''( d'' c'' bes') | % 90
  <ees' g'>8 <ees' g'>8 <c' fis'>8 <c' fis'>8 | % 91
  <bes d' g'>8 bes'16( c'') d''( c'' bes' a') | % 92
  \barNumberCheck #93
  <g' bes'>8\f r8 <g' bes'>8 r8 | % 93
  <g' c''>8 <g' c''>8 <g' c''>4 | % 94
  <g' bes'>4 <fis' a' c''>4 | % 95
  <g' bes' d''>4 r4 | % 96
  \barNumberCheck #97

  % R3 - Ritornello in G minor: measures 97-112.
  \barNumberCheck #97
  <g' bes' d''>8.\f g''16 bes''16( a'' g'' f'') | % 97
  <a' c'' fis''>8. a''16 c'''16( bes'' a'' fis'') | % 98
  <bes' d'' g''>8 d''16( ees'') f''( ees'' d'' c'') | % 99
  <c'' ees'' g''>8 <a' c'' fis''>8 <bes' d'' g''>8 r8 | % 100
  \barNumberCheck #101
  d''16\mf( g'' fis'' g'') bes''( a'' g'' f'') | % 101
  c''16( f'' e'' f'') a''( g'' f'' ees'') | % 102
  <d'' f''>8. bes''16 a''( g'' f'' ees'') | % 103
  <c'' fis''>8. a''16 <c'' fis''>8 r8 | % 104
  \barNumberCheck #105
  <c'' ees'' g''>8.\p a''16 g''( f'' ees'' d'') | % 105
  <bes' d'' g''>8. a''16 bes''( a'' g'' f'') | % 106
  <c'' ees'' a''>8. g''16 fis''( g'' a'' c''') | % 107
  <c'' d'' fis''>4\f a''8( fis'') | % 108
  \barNumberCheck #109
  <bes' d'' g''>8. bes''16 a''16( g'' fis'' g'') | % 109
  <c'' d'' fis''>8 a''16( bes'') c'''( a'' fis'' d'') | % 110
  <c'' ees'' g''>8 <c'' d'' fis''>8 <a' d'' fis''>8 <c'' d'' fis''>8 | % 111
  <bes' d'' g''>4 r4 | % 112
  \barNumberCheck #113

  % S3 - Solo: measures 113-144.
  \barNumberCheck #113
  <g' bes'>8\p r8 <g' bes'>8 r8 | % 113
  <d' f'>8 <d' f'>8 <d' f'>4 | % 114
  <d' f'>8 <d' f'>8 <f' bes'>8 <d' f'>8 | % 115
  <ees' g'>8 g'16( a') bes'( a' g' f') | % 116
  \barNumberCheck #117
  <a' c''>8 r8 <a' c''>8 r8 | % 117
  <g' bes'>8 <g' bes'>8 <g' bes'>4 | % 118
  <a' c''>4 <g' bes'>8 <e' bes'>8 | % 119
  <a' c''>8 c''16( d'') c''( bes' a' g') | % 120
  \barNumberCheck #121
  a'16\mf( d'' cis'' d'') <f' a'>8 r8 | % 121
  <g' bes'>8 r8 d''16( c'' bes' a') | % 122
  e'16( a' gis' a') <g' cis''>8 r8 | % 123
  <f' a'>8. d''16 f''16( e'' d'' c'') | % 124
  \barNumberCheck #125
  d''16( g'' fis'' g'') <g' bes'>8 r8 | % 125
  <g' c''>8 r8 e''16( d'' c'' bes') | % 126
  cis''16( e'' d'' cis'') <g' a'>8 <g' a'>8 | % 127
  <f' a'>8 a'16( bes') a'( g' f' e') | % 128
  \barNumberCheck #129
  <f' a'>8\mp r8 <f' a'>8 r8 | % 129
  <g' bes'>8 r8 <g' bes'>8 r8 | % 130
  <g' cis''>8 r8 <e' g'>8 r8 | % 131
  <f' a'>8 d''16( e'') f''( e'' d'' c'') | % 132
  \barNumberCheck #133
  <g' bes'>8 <g' bes'>8 <g' bes'>4 | % 133
  <f' a'>8 <f' a'>8 <f' a'>4 | % 134
  <g' bes'>4 <e' g' cis''>4 | % 135
  <f' a' d''>8 a'16( g') f'( e' d' cis') | % 136
  \barNumberCheck #137
  <e' g' cis''>8\f <e' g' cis''>8 <g' a' cis''>8 <e' g' cis''>8 | % 137
  <f' a' d''>8 <f' a' d''>8 <f' a' d''>4 | % 138
  <g' bes' e''>8 <g' bes' e''>8 <f' a' d''>8 <g' a' cis''>8 | % 139
  <e' g' cis''>8. e''16 g''16( f'' e'' cis'') | % 140
  \barNumberCheck #141
  <f' a'>8 r8 <a' d''>8 r8 | % 141
  <g' bes'>8 <g' bes'>8 <g' bes'>4 | % 142
  <f' a' d''>4 <e' g' cis''>4 | % 143
  <f' a' d''>4 r4 | % 144
  \barNumberCheck #145

  % R4 - Ritornello da capo: measures 145-168.
  \barNumberCheck #145
  <d' f' a'>8.\f d''16 f''16( e'' d'' c'') | % 145
  <e' g' cis''>8. e''16 g''16( f'' e'' cis'') | % 146
  <f' a' d''>8 a'16( bes') c''( bes' a' g') | % 147
  <g' bes' d''>8 <e' g' cis''>8 <f' a' d''>8 r8 | % 148
  \barNumberCheck #149
  a'16\mf( d'' cis'' d'') f''( e'' d'' c'') | % 149
  g'16( c'' b' c'') e''( d'' c'' bes') | % 150
  <a' c''>8. f''16 e''( d'' c'' bes') | % 151
  <g' cis''>8. e''16 <g' cis''>8 r8 | % 152
  \barNumberCheck #153
  f''16\f( e'' d'' a') f'( a' d'' f'') | % 153
  g''16( f'' e'' d'') bes'( a' g' bes') | % 154
  e''16( d'' c'' g') e'( g' c'' e'') | % 155
  f''16( e'' d'' c'') a'( g' f' a') | % 156
  \barNumberCheck #157
  d''16( c'' bes' f') d'( f' bes' d'') | % 157
  <g' bes' e''>8 <g' bes' d''>8 <g' bes' cis''>8 <g' bes' d''>8 | % 158
  <g' a' d''>4 <g' a' cis''>8 <e' a' cis''>8 | % 159
  <f' a' d''>4 r8 a'16( d'') | % 160
  \barNumberCheck #161
  <g' bes' d''>8.\f e''16 d''( c'' bes' a') | % 161
  <f' a' d''>8. e''16 f''( e'' d'' c'') | % 162
  <g' bes' e''>8. d''16 cis''( d'' e'' g'') | % 163
  <g' a' cis''>4\f e''8( cis'') | % 164
  \barNumberCheck #165
  <f' a' d''>8. f''16 e''16( d'' cis'' d'') | % 165
  <g' a' cis''>8 e''16( f'') g''( e'' cis'' a') | % 166
  <g' bes' d''>8 <g' a' cis''>8 <e' a' cis''>8 <g' a' cis''>8 | % 167
  <f' a' d''>2\fermata | % 168
  \barNumberCheck #169
  \bar "|."
}

continuoBass = \absolute {
  \clef bass

  % R1 - Ritornello: measures 1-24.
  \barNumberCheck #1
  d,8 a, d f | % 1
  cis8 a, cis e | % 2
  f8 d f16( e d c) | % 3
  g,8 a, d r | % 4
  \barNumberCheck #5
  d16( e f g) a8 a, | % 5
  c16( d e f) g8 c | % 6
  f8 c a, f, | % 7
  a,16( b, cis d) e8 a, | % 8
  \barNumberCheck #9
  d8 a, f, d, | % 9
  g,16( a, bes, c) d8 g, | % 10
  c8 g, e, c, | % 11
  f,16( g, a, bes,) c8 f, | % 12
  \barNumberCheck #13
  bes,8 f d bes, | % 13
  e8 d cis e | % 14
  a,8 a e cis | % 15
  d16( c bes, a,) g,8 f, | % 16
  \barNumberCheck #17
  g,16( a, bes, c) d8 g, | % 17
  f,16( g, a, bes,) c8 f, | % 18
  e,16( f, g, a,) bes,8 g, | % 19
  a,16( b, cis d) e8 a, | % 20
  \barNumberCheck #21
  a,8 d f d | % 21
  a,16( b, cis d) e8 g | % 22
  g,8 a, a a, | % 23
  d,4 r4 | % 24
  \barNumberCheck #25

  % S1 - Solo: measures 25-48.
  \barNumberCheck #25
  d8\mp( a,) f,( a,) | % 25
  cis8( e) a,( cis) | % 26
  f8( e) d( c) | % 27
  g,8 a, d r | % 28
  \barNumberCheck #29
  d16( e f g) a8 f | % 29
  g,8( bes,) d( g,) | % 30
  c8( bes,) a,( g,) | % 31
  f,8 c a, f, | % 32
  \barNumberCheck #33
  bes,8( d) f( bes,) | % 33
  c8( e) g( c) | % 34
  a,8( c) e( a,) | % 35
  d16( e f g) a8 d | % 36
  \barNumberCheck #37
  g,8 bes, d g, | % 37
  c8 e g c | % 38
  c8 a, c c, | % 39
  f,16( g, a, bes,) c8 f, | % 40
  \barNumberCheck #41
  d16( e f g) a8 d | % 41
  g,16( a, bes, c) d8 g, | % 42
  c16( d e f) g8 c | % 43
  a,8 c f r | % 44
  \barNumberCheck #45
  bes,8 d f d | % 45
  bes,16( c d e) f8 d | % 46
  c8 a, c c, | % 47
  f,4 r4 | % 48
  \barNumberCheck #49

  % R2 - Ritornello in F: measures 49-64.
  \barNumberCheck #49
  f,8 c f a | % 49
  e8 c e g | % 50
  a8 f a16( g f e) | % 51
  bes,8 c f r | % 52
  \barNumberCheck #53
  f16( g a bes) c'8 c | % 53
  e16( f g a) bes8 e | % 54
  a8 e c a, | % 55
  c16( d e f) g8 c | % 56
  \barNumberCheck #57
  bes,16( c d e) f8 bes, | % 57
  a,16( bes, c d) e8 a, | % 58
  g,16( a, bes, c) d8 bes, | % 59
  c16( d e f) g8 c | % 60
  \barNumberCheck #61
  c8 f a f | % 61
  c16( d e f) g8 bes | % 62
  bes,8 c c' c | % 63
  f,4 r4 | % 64
  \barNumberCheck #65

  % S2 - Solo: measures 65-96.
  \barNumberCheck #65
  f,16\p( g, a, bes,) c8 a, | % 65
  c8 g, e, c, | % 66
  bes,8 d c c, | % 67
  f,8 c a, f, | % 68
  \barNumberCheck #69
  d16\mp( e f g) a8 d | % 69
  g,16( a, bes, c) d8 g, | % 70
  a,8 e cis a, | % 71
  d16( c bes, a,) g,8 f, | % 72
  \barNumberCheck #73
  a,16( b, c d) e8 a, | % 73
  d16( e f g) a8 d | % 74
  e8 b, gis, e, | % 75
  a,8 e c a, | % 76
  \barNumberCheck #77
  c8 g, e, c, | % 77
  g,16( a, b, c) d8 g, | % 78
  c8 e g g, | % 79
  c16( d e f) g8 c | % 80
  \barNumberCheck #81
  g,8 d bes, g, | % 81
  c8 g ees c | % 82
  d16( ees fis g) a8 d | % 83
  g,16( a, bes, c) d8 g, | % 84
  \barNumberCheck #85
  c8 ees g c | % 85
  d8 c a, a, | % 86
  d8 bes, d d, | % 87
  g,16( a, bes, c) d8 g, | % 88
  \barNumberCheck #89
  g,16( a, bes, c) d8 bes, | % 89
  c8 ees g c | % 90
  a,8 c d d, | % 91
  g,8 d bes, g, | % 92
  \barNumberCheck #93
  bes,8 d g d | % 93
  c16( d ees f) g8 ees | % 94
  d8 bes, d d, | % 95
  g,4 r4 | % 96
  \barNumberCheck #97

  % R3 - Ritornello in G minor: measures 97-112.
  \barNumberCheck #97
  g,8 d g bes | % 97
  fis8 d fis a | % 98
  bes8 g bes16( a g f) | % 99
  c8 d g r | % 100
  \barNumberCheck #101
  g16( a bes c') d'8 d | % 101
  f16( g a bes) c'8 f | % 102
  bes8 f d bes, | % 103
  d16( e fis g) a8 d | % 104
  \barNumberCheck #105
  c16( d ees f) g8 c | % 105
  bes,16( c d ees) f8 bes, | % 106
  a,16( bes, c d) ees8 c | % 107
  d16( e fis g) a8 d | % 108
  \barNumberCheck #109
  d8 g bes g | % 109
  d16( e fis g) a8 c' | % 110
  c8 d d' d | % 111
  g,4 r4 | % 112
  \barNumberCheck #113

  % S3 - Solo: measures 113-144.
  \barNumberCheck #113
  g,8\p bes, d g, | % 113
  bes,8 d f bes, | % 114
  bes,16( c d ees) f8 bes, | % 115
  c16( d ees f) g8 c | % 116
  \barNumberCheck #117
  f,8 a, c f, | % 117
  c8 e g c | % 118
  c8 a, c c, | % 119
  f,16( g, a, bes,) c8 a, | % 120
  \barNumberCheck #121
  d8\mf a, f, a, | % 121
  g,16( a, bes, c) d8 g, | % 122
  a,8 e cis a, | % 123
  d8 a, f, d, | % 124
  \barNumberCheck #125
  g,8 d bes, g, | % 125
  c16( d e f) g8 c | % 126
  a,8 e cis a, | % 127
  d16( e f g) a8 d | % 128
  \barNumberCheck #129
  d8 a, f, d, | % 129
  g,8 bes, d g, | % 130
  cis8 e g e | % 131
  d8 a, f, d, | % 132
  \barNumberCheck #133
  e,16( f, g, a,) bes,8 g, | % 133
  f,16( g, a, bes,) c8 f, | % 134
  e,8 g, a, a, | % 135
  d8 a, f, d, | % 136
  \barNumberCheck #137
  a,8 e a e | % 137
  a,8 d f d | % 138
  a,8 e d cis | % 139
  a,16( b, cis d) e8 a, | % 140
  \barNumberCheck #141
  f,8 a, d a, | % 141
  g,16( a, bes, c) d8 bes, | % 142
  a,8 d a, a, | % 143
  d,4 r4 | % 144
  \barNumberCheck #145

  % R4 - Ritornello da capo: measures 145-168.
  \barNumberCheck #145
  d,8 a, d f | % 145
  cis8 a, cis e | % 146
  f8 d f16( e d c) | % 147
  g,8 a, d r | % 148
  \barNumberCheck #149
  d16( e f g) a8 a, | % 149
  c16( d e f) g8 c | % 150
  f8 c a, f, | % 151
  a,16( b, cis d) e8 a, | % 152
  \barNumberCheck #153
  d8 a, f, d, | % 153
  g,16( a, bes, c) d8 g, | % 154
  c8 g, e, c, | % 155
  f,16( g, a, bes,) c8 f, | % 156
  \barNumberCheck #157
  bes,8 f d bes, | % 157
  e8 d cis e | % 158
  a,8 a e cis | % 159
  d16( c bes, a,) g,8 f, | % 160
  \barNumberCheck #161
  g,16( a, bes, c) d8 g, | % 161
  f,16( g, a, bes,) c8 f, | % 162
  e,16( f, g, a,) bes,8 g, | % 163
  a,16( b, cis d) e8 a, | % 164
  \barNumberCheck #165
  a,8 d f d | % 165
  a,16( b, cis d) e8 g | % 166
  g,8 a, a a, | % 167
  d,2\fermata | % 168
  \barNumberCheck #169
  \bar "|."
}


ensemble = <<
  \new Staff = "oboe" \with {
    instrumentName = "Oboe"
    shortInstrumentName = "Ob."
    midiInstrument = "oboe"
    midiMinimumVolume = #0.65
    midiMaximumVolume = #0.95
  } << \global \oboe >>
  \new PianoStaff \with {
    instrumentName = \markup \center-column { "Basso" "continuo" }
    shortInstrumentName = "B.c."
  } <<
    \new Staff = "continuoRH" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.45
      midiMaximumVolume = #0.70
    } << \global \continuoRight >>
    \new Staff = "continuoBass" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.50
      midiMaximumVolume = #0.77
    } << \global \continuoBass >>
  >>
>>

\score {
  \keepWithTag #'printed \ensemble
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
      \override RehearsalMark.self-alignment-X = #LEFT
      \override RehearsalMark.padding = #2
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
  \midi { \tempo 4 = 104 }
}
