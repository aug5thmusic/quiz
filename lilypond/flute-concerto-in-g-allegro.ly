\version "2.26.0"
\language "nederlands"

% Original music in the galant, virtuosic manner of J. J. Quantz.
% 128 measures, 4/4, quarter = 112: approximately 4 minutes 34 seconds.
% Exactly three staves: flute, continuo right hand, continuo bass.
% The two keyboard staves are a fully written-out continuo realization;
% a cello or bass viol may double the lower staff ad libitum.
%
% RITORNELLO PLAN
% 1-16   R1: G major; head, answer, sequence, cadential tail.
% 17-40  S1: G -> D; decorated solo, divisions, triplets, continuo exchange.
% 41-48  R2: D major; the head and cadential tail transposed.
% 49-72  S2: D -> B minor -> E minor; singing solo and imitative divisions.
% 73-80  R3: E minor; the continuo states the head, the flute its tail.
% 81-112 S3: C -> A minor -> G; dialogue, sequences and dominant pedal.
% 113-128 R4: G major; full return, decorated keyboard, brilliant close.
%
% PERFORMANCE
% Allegro, cheerful and lightly sprung; do not rush the semiquavers.
% A slur joins a small gesture, not an entire breath. Breathe at the
% commas and rests; retain buoyant articulation in the bass as well.
% Appoggiaturas take time from the following principal note. Trills
% begin with the diatonic upper auxiliary; written endings take priority.
% The mordent (m. 51) uses the lower neighbour; the prall (m. 118) the
% upper. The crushed notes at m. 117 are brief, distinct from appoggiaturas.
% Dynamics indicate rhetorical weight and changes of texture; on a
% harpsichord realize these through touch, articulation and registration.
% MIDI ornaments are explicitly realized in the playback-tagged measures.
% Trills use upper-note starts and 32nd-note alternation, retaining written
% endings. Appoggiaturas borrow half the main note; turns are delayed.
% The brief acciaccatura uses two 64ths on the beat. All bars retain 4/4.
% All pitches are absolute: c' is middle C. Flute range: F-sharp4-E6.

\header {
  title = "Concerto in G major"
  subtitle = "I. Allegro galante"
  subsubtitle = "For flute and basso continuo"
  poet = "In the manner of J. J. Quantz"
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
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #14
  system-system-spacing.padding = #2
  markup-system-spacing.basic-distance = #10
  print-page-number = ##t
}

global = {
  \numericTimeSignature
  \time 4/4
  \key g \major
  s1*32
  \key d \major
  s1*32
  \key e \minor
  s1*16
  \key c \major
  s1*16
  \key g \major
  s1*32
}

flute = \absolute {
  \clef treble
  \tempo "Allegro galante" 4 = 112

  % R1 - G major: measures 1-16.
  \barNumberCheck #1
  \mark \markup \box "R1 - G major"
  g''8.\f( b''16) d'''4-. b''8( g'') a''( b'') | % 1
  % Measure 2: notation and explicit ornament playback.
  \tag #'printed { a''8( d'') fis''( a'') c'''4\trill b''8( a'') | } % 2
  \tag #'playback { a''8( d'') fis''( a'') d'''32( c'''32 d'''32 c'''32 d'''32 c'''32 d'''32 c'''32 ) b''8( a'') | }
  b''8.( g''16) d'''8( b'') g''4 d''8( e'') | % 3
  % Measure 4: notation and explicit ornament playback.
  \tag #'printed { e''8( g'') c'''( b'') a''4\trill g''8( fis'') | } % 4
  \tag #'playback { e''8( g'') c'''( b'') b''32( a''32 b''32 a''32 b''32 a''32 b''32 a''32 ) g''8( fis'') | }
  \barNumberCheck #5
  \break
  g''8.\p( b''16) d'''4-. b''8( g'') a''( b'') | % 5
  g''8( b'') e'''( d''') c'''( b'') a''( g'') | % 6
  % Measure 7: notation and explicit ornament playback.
  \tag #'printed { a''4 c'''8( b'') a''4.\trill g''16( a'') | } % 7
  \tag #'playback { a''4 c'''8( b'') b''32( a''32 b''32 a''32 b''32 a''32 b''32 a''32 b''32 a''32 b''32 a''32 ) g''16( a'') | }
  g''2 d''4 r4 \breathe | % 8
  \barNumberCheck #9
  \break
  b''8\f( g'') e''( g'') cis'''( b'') a''( g'') | % 9
  a''8( fis'') d''( fis'') b''( a'') g''( f'') | % 10
  e''8( g'') c'''( b'') a''( g'') fis''( e'') | % 11
  d''16( e'' fis'' g'') a''8( c''') b''( a'') g''( fis'') | % 12
  \barNumberCheck #13
  \break
  g''4 b''8( g'') e'''( d''') c'''( b'') | % 13
  % Measure 14: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura b''8 a''2\trill g''8( fis'') e''( fis'') | } % 14
  \tag #'playback { b''4 a''16( b''32 a''32 b''32 a''32 b''32 a''32 ) g''8( fis'') e''( fis'') | }
  g''8( b'') d'''( b'') c'''( b'') a''( fis'') | % 15
  g''2 r2 \breathe | % 16
  \barNumberCheck #17
  \break

  % S1 - G to D: measures 17-40.
  \barNumberCheck #17
  \mark \markup \box "S1 - G to D"
  % Measure 17: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura a''8 g''4\p b''8( a'') g''( fis'') e''( d'') | } % 17
  \tag #'playback { a''8\p( g''8 ) b''8( a'') g''( fis'') e''( d'') | }
  e''8( fis'') g''( e'') c'''4 b''8( a'') | % 18
  % Measure 19: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura a''8 g''4 fis''8( e'') d''4 fis''8( a'') | } % 19
  \tag #'playback { a''8( g''8 ) fis''8( e'') d''4 fis''8( a'') | }
  % Measure 20: notation and explicit ornament playback.
  \tag #'printed { g''4.\turn a''8 b''4 r4 \breathe | } % 20
  \tag #'playback { g''4( a''32 g''32 fis''32 g''32 ) a''8 b''4 r4 \breathe | }
  \barNumberCheck #21
  \break
  g''16\mf( a'' b'' a'') g''( fis'' e'' d'') e''( fis'' g'' a'') b''8( g'') | % 21
  e''16( fis'' g'' fis'') e''( dis'' cis'' b') dis''( fis'' a'' fis'') b''8( a'') | % 22
  g''16( b'' e''' d''') c'''( b'' a'' g'') fis''( e'' dis'' e'') fis''( g'' a'' fis'') | % 23
  % Measure 24: notation and explicit ornament playback.
  \tag #'printed { g''2\trill fis''8( e'') r4 \breathe | } % 24
  \tag #'playback { a''32( g''32 a''32 g''32 a''32 g''32 a''32 g''32 a''32 g''32 a''32 g''32 a''32 g''32 a''32 g''32 ) fis''8( e'') r4 \breathe | }
  \barNumberCheck #25
  \break
  c'''16\p( b'' a'' g'') f''( e'' d'' c'') b'8( e'') gis''( b'') | % 25
  a''16( c''' b'' a'') g''( fis'' e'' d'') c''8( e'') a''( g'') | % 26
  fis''16( a'' g'' fis'') e''( d'' cis'' b') cis''8( e'') a''( g'') | % 27
  fis''4 d''8( e'') fis''4 r4 \breathe | % 28
  \barNumberCheck #29
  \break
  d''16\f( e'' fis'' g'') a''( b'' cis''' d''') e'''( d''' cis''' b'') a''( g'' fis'' e'') | % 29
  fis''16( a'' d''' cis''') b''( a'' g'' fis'') e''( g'' cis''' b'') a''( g'' fis'' e'') | % 30
  d''16( fis'' a'' fis'') g''( b'' e''' b'') a''( g'' fis'' e'') cis''( d'' e'' cis'') | % 31
  d''2 a'4 r4 \breathe | % 32
  \barNumberCheck #33
  \break
  \tuplet 3/2 { fis''8\p( a'' d''') } \tuplet 3/2 { cis'''( b'' a'') } \tuplet 3/2 { g''( fis'' e'') } \tuplet 3/2 { fis''( e'' d'') } | % 33
  \tuplet 3/2 { e''8( g'' b'') } \tuplet 3/2 { a''( g'' fis'') } \tuplet 3/2 { e''( d'' cis'') } \tuplet 3/2 { d''( cis'' b') } | % 34
  \tuplet 3/2 { cis''8( e'' a'') } \tuplet 3/2 { g''( fis'' e'') } fis''8( a'') d'''( cis''') | % 35
  d'''4 a'' fis'' r4 \breathe | % 36
  \barNumberCheck #37
  \break
  R1 | % 37
  R1 | % 38
  d'''8.\f( cis'''16) b''8( a'') g''4 e''8( fis'') | % 39
  % Measure 40: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura fis''8 e''2\trill d''4 r4 \breathe | } % 40
  \tag #'playback { fis''4 e''16( fis''32 e''32 fis''32 e''32 fis''32 e''32 ) d''4 r4 \breathe | }
  \barNumberCheck #41
  \break

  % R2 - D major: measures 41-48.
  \barNumberCheck #41
  \mark \markup \box "R2 - D major"
  d''8.\f( fis''16) a''4-. fis''8( d'') e''( fis'') | % 41
  % Measure 42: notation and explicit ornament playback.
  \tag #'printed { e''8( a') cis''( e'') g''4\trill fis''8( e'') | } % 42
  \tag #'playback { e''8( a') cis''( e'') a''32( g''32 a''32 g''32 a''32 g''32 a''32 g''32 ) fis''8( e'') | }
  fis''8.( d''16) a''8( fis'') d''4 a'8( b') | % 43
  % Measure 44: notation and explicit ornament playback.
  \tag #'printed { b'8( d'') g''( fis'') e''4\trill d''8( cis'') | } % 44
  \tag #'playback { b'8( d'') g''( fis'') fis''32( e''32 fis''32 e''32 fis''32 e''32 fis''32 e''32 ) d''8( cis'') | }
  \barNumberCheck #45
  \break
  d''4 fis''8( d'') b''( a'') g''( fis'') | % 45
  % Measure 46: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura fis''8 e''2\trill d''8( cis'') b'( cis'') | } % 46
  \tag #'playback { fis''4 e''16( fis''32 e''32 fis''32 e''32 fis''32 e''32 ) d''8( cis'') b'( cis'') | }
  d''8( fis'') a''( fis'') g''( fis'') e''( cis'') | % 47
  d''2 r2 \breathe | % 48
  \barNumberCheck #49
  \break

  % S2 - D, B minor, E minor: measures 49-72.
  \barNumberCheck #49
  \mark \markup \box "S2 - D, B minor, E minor"
  a''2\p^\markup \italic "dolce" fis''8( e'') d''( cis'') | % 49
  % Measure 50: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura d''8 cis''4 e''8( g'') fis''( e'') d''( cis'') | } % 50
  \tag #'playback { d''8( cis''8 ) e''8( g'') fis''( e'') d''( cis'') | }
  % Measure 51: notation and explicit ornament playback.
  \tag #'printed { d''4.\mordent e''8 fis''4 b''8( a'') | } % 51
  \tag #'playback { d''32( cis''32 d''4~ d''16 ) e''8 fis''4 b''8( a'') | }
  % Measure 52: notation and explicit ornament playback.
  \tag #'printed { ais''2\trill fis''4 r4 \breathe | } % 52
  \tag #'playback { b''32( ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 ) fis''4 r4 \breathe | }
  \barNumberCheck #53
  \break
  b''16\mf( ais'' b'' cis''') d'''( cis''' b'' a'') g''( fis'' e'' d'') cis''( d'' e'' cis'') | % 53
  d''16( e'' fis'' g'') a''( g'' fis'' e'') cis''( d'' e'' fis'') g''( fis'' e'' cis'') | % 54
  d''16( fis'' a'' fis'') b''( a'' g'' fis'') g''( b'' d''' b'') e'''8( d''') | % 55
  % Measure 56: notation and explicit ornament playback.
  \tag #'printed { cis'''8( b'') ais''( gis'') fis''4.\trill e''8 | } % 56
  \tag #'playback { cis'''8( b'') ais''( gis'') gis''32( fis''32 gis''32 fis''32 gis''32 fis''32 gis''32 fis''32 gis''32 fis''32 gis''32 fis''32 ) e''8 | }
  \barNumberCheck #57
  \break
  d''2 r2 \breathe | % 57
  R1 | % 58
  % Measure 59: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura e''8 d''4\p fis''8( b'') ais''( b'') cis'''( b'') | } % 59
  \tag #'playback { e''8\p( d''8 ) fis''8( b'') ais''( b'') cis'''( b'') | }
  % Measure 60: notation and explicit ornament playback.
  \tag #'printed { ais''4.\trill gis''16( ais'') b''4 r4 \breathe | } % 60
  \tag #'playback { b''32( ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 b''32 ais''32 ) gis''16( ais'') b''4 r4 \breathe | }
  \barNumberCheck #61
  \break
  b''8\mf( d''') g''( b'') a''( g'') fis''( e'') | % 61
  e''8( g'') cis''( e'') d''( cis'') b'( ais') | % 62
  ais'16( cis'' fis'' e'') d''( cis'' b' ais') b'8( d'') fis''( b'') | % 63
  a''8( fis'') dis''( fis'') b''4 r4 \breathe | % 64
  \barNumberCheck #65
  \break
  g''16\p( fis'' e'' dis'') e''( g'' b'' g'') fis''( e'' dis'' e'') fis''( g'' a'' fis'') | % 65
  e''16( d'' c'' b') c''( e'' a'' e'') g''( fis'' e'' d'') c''( b' a' g') | % 66
  fis'16( a' d'' c'') b'( a' g' fis') g'8( b') d''( g'') | % 67
  e''8( g'') c'''( b'') a''( g'') fis''( e'') | % 68
  \barNumberCheck #69
  \break
  dis''16\f( e'' fis'' g'') a''( b'' c''' a'') fis''( dis'' b' dis'') fis''( a'' g'' fis'') | % 69
  g''16( b'' e''' d''') c'''( b'' a'' g'') a''8( c''') b''( a'') | % 70
  % Measure 71: notation and explicit ornament playback.
  \tag #'printed { g''4 fis''4.\trill e''16( fis'') dis''4 | } % 71
  \tag #'playback { g''4 g''32( fis''32 g''32 fis''32 g''32 fis''32 g''32 fis''32 g''32 fis''32 g''32 fis''32 ) e''16( fis'') dis''4 | }
  e''2 r2 \breathe | % 72
  \barNumberCheck #73
  \break

  % R3 - E minor: measures 73-80.
  \barNumberCheck #73
  \mark \markup \box "R3 - E minor"
  R1*1 | % 73
  R1 | % 74
  R1 | % 75
  R1 | % 76
  \barNumberCheck #77
  \break
  e''4\mf g''8( e'') c'''( b'') a''( g'') | % 77
  % Measure 78: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura g''8 fis''2\trill e''8( dis'') cis''( dis'') | } % 78
  \tag #'playback { g''4 fis''16( g''32 fis''32 g''32 fis''32 g''32 fis''32 ) e''8( dis'') cis''( dis'') | }
  e''8( g'') b''( g'') a''( g'') fis''( dis'') | % 79
  e''2 r2 \breathe | % 80
  \barNumberCheck #81
  \break

  % S3 - C, A minor, return to G: measures 81-112.
  \barNumberCheck #81
  \mark \markup \box "S3 - C, A minor, return to G"
  g''8.\p( e'''16) c'''4-. b''8( a'') g''( f'') | % 81
  % Measure 82: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura f''8 e''4 g''8( f'') e''( d'') c''( b') | } % 82
  \tag #'playback { f''8( e''8 ) g''8( f'') e''( d'') c''( b') | }
  a'8( c'') f''( a'') b''( c''') d'''( b'') | % 83
  c'''2 g''4 r4 \breathe | % 84
  \barNumberCheck #85
  \break
  R1 | % 85
  R1 | % 86
  c'''16\mf( d''' e''' d''') c'''( b'' a'' g'') f''( e'' d'' c'') d''( e'' f'' d'') | % 87
  % Measure 88: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura c'''8 b''2\trill c'''4 r4 \breathe | } % 88
  \tag #'playback { c'''4 b''16( c'''32 b''32 c'''32 b''32 c'''32 b''32 ) c'''4 r4 \breathe | }
  \barNumberCheck #89
  \break
  c'''8\p( a'') e''( a'') c'''( b'') a''( g'') | % 89
  % Measure 90: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura a''8 gis''4 b''8( a'') gis''( fis'') e''( d'') | } % 90
  \tag #'playback { a''8( gis''8 ) b''8( a'') gis''( fis'') e''( d'') | }
  % Measure 91: notation and explicit ornament playback.
  \tag #'printed { c''8( e'') a''( b'') c'''4.\turn b''8 | } % 91
  \tag #'playback { c''8( e'') a''( b'') c'''4( d'''32 c'''32 b''32 c'''32 ) b''8 | }
  a''8( f'') d''( f'') e''4 r4 \breathe | % 92
  \barNumberCheck #93
  \break
  a'16\f( b' c'' d'') e''( f'' g'' a'') b''( c''' d''' c''') b''( a'' gis'' fis'') | % 93
  f''16( e'' d'' c'') d''( f'' a'' f'') b''( a'' gis'' fis'') gis''( b'' e''' d''') | % 94
  % Measure 95: notation and explicit ornament playback.
  \tag #'printed { c'''4 b''4.\trill a''16( b'') gis''4 | } % 95
  \tag #'playback { c'''4 c'''32( b''32 c'''32 b''32 c'''32 b''32 c'''32 b''32 c'''32 b''32 c'''32 b''32 ) a''16( b'') gis''4 | }
  a''2 e''4 r4 \breathe | % 96
  \barNumberCheck #97
  \break
  b''8.\p( g''16) d'''4-. b''8( g'') a''( b'') | % 97
  c'''8( g'') e''( g'') c'''4 b''8( a'') | % 98
  a''16( b'' c''' b'') a''( g'' fis'' e'') fis''8( a'') c'''( a'') | % 99
  b''4 g''8( fis'') g''4 r4 \breathe | % 100
  \barNumberCheck #101
  \break
  e'''16\mf( d''' c''' b'') a''( g'' fis'' e'') fis''( g'' a'' b'') c'''8( a'') | % 101
  d'''16( c''' b'' a'') g''( fis'' e'' d'') e''( fis'' g'' a'') b''8( g'') | % 102
  c'''16( b'' a'' g'') fis''( e'' d'' c'') d''( e'' fis'' g'') a''8( fis'') | % 103
  g''4 d''8( b') g'4 r4 \breathe | % 104
  \barNumberCheck #105
  \break
  g''16\f( b'' d''' b'') g''( b'' d''' b'') g''( b'' d''' b'') g''8( b'') | % 105
  fis''16( a'' c''' a'') fis''( a'' c''' a'') fis''( a'' c''' a'') fis''8( a'') | % 106
  e''16( g'' b'' g'') e''( g'' b'' g'') e''( g'' b'' g'') e''8( g'') | % 107
  fis''16( a'' c''' a'') fis''( a'' c''' a'') fis''8( e'') d''4 | % 108
  \barNumberCheck #109
  \break
  R1 | % 109
  R1 | % 110
  d'''8.\f( c'''16) b''8( a'') g''4 b''8( g'') | % 111
  % Measure 112: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura b''8 a''2\trill g''8( fis'') r4 \breathe | } % 112
  \tag #'playback { b''4 a''16( b''32 a''32 b''32 a''32 b''32 a''32 ) g''8( fis'') r4 \breathe | }
  \barNumberCheck #113
  \break

  % R4 - G major: measures 113-128.
  \barNumberCheck #113
  \mark \markup \box "R4 - G major"
  g''8.\f( b''16) d'''4-. b''8( g'') a''( b'') | % 113
  % Measure 114: notation and explicit ornament playback.
  \tag #'printed { a''8( d'') fis''( a'') c'''4\trill b''8( a'') | } % 114
  \tag #'playback { a''8( d'') fis''( a'') d'''32( c'''32 d'''32 c'''32 d'''32 c'''32 d'''32 c'''32 ) b''8( a'') | }
  b''8.( g''16) d'''8( b'') g''4 d''8( e'') | % 115
  % Measure 116: notation and explicit ornament playback.
  \tag #'printed { e''8( g'') c'''( b'') a''4\trill g''8( fis'') | } % 116
  \tag #'playback { e''8( g'') c'''( b'') b''32( a''32 b''32 a''32 b''32 a''32 b''32 a''32 ) g''8( fis'') | }
  \barNumberCheck #117
  \break
  % Measure 117: notation and explicit ornament playback.
  \tag #'printed { \acciaccatura { a''16[ b''] } g''8.\p( b''16) d'''4-. b''8( g'') a''( b'') | } % 117
  \tag #'playback { a''64\p b''64 g''8~ g''32( b''16) d'''4-. b''8( g'') a''( b'') | }
  % Measure 118: notation and explicit ornament playback.
  \tag #'printed { b''4\prall e'''8( d''') c'''( b'') a''( g'') | } % 118
  \tag #'playback { b''32( c'''32 b''8. ) e'''8( d''') c'''( b'') a''( g'') | }
  % Measure 119: notation and explicit ornament playback.
  \tag #'printed { a''4 c'''8( b'') a''4.\trill g''16( a'') | } % 119
  \tag #'playback { a''4 c'''8( b'') b''32( a''32 b''32 a''32 b''32 a''32 b''32 a''32 b''32 a''32 b''32 a''32 ) g''16( a'') | }
  g''2 d''4 r4 \breathe | % 120
  \barNumberCheck #121
  \break
  b''16\f( a'' g'' fis'') e''( g'' b'' g'') cis'''( b'' a'' g'') fis''( e'' d'' cis'') | % 121
  a''16( g'' fis'' e'') d''( fis'' a'' fis'') b''( a'' g'' f'') e''( d'' c'' b') | % 122
  e''16( g'' c''' b'') a''( g'' f'' e'') a''( c''' e''' d''') c'''( b'' a'' g'') | % 123
  fis''16( e'' d'' e'') fis''( g'' a'' b'') c'''8( a'') fis''4 \breathe | % 124
  \barNumberCheck #125
  \break
  b''4 d'''8( b'') g''( e''') d'''( c''') | % 125
  % Measure 126: notation and explicit ornament playback.
  \tag #'printed { \appoggiatura b''8 a''2\trill g''16( fis'' e'' fis'') g''( a'' b'' a'') | } % 126
  \tag #'playback { b''4 a''16( b''32 a''32 b''32 a''32 b''32 a''32 ) g''16( fis'' e'' fis'') g''( a'' b'' a'') | }
  g''16( a'' b'' c''') d'''8( b'') c'''( b'') a''( fis'') | % 127
  g''1\fermata \bar "|." | % 128
  \barNumberCheck #129
}

continuoRight = \absolute {
  \clef treble

  % R1 - G major: measures 1-16.
  \barNumberCheck #1
  <b d'>4\f <b d'>8( <c' e'>) <d' g'>4 <d' g'> | % 1
  <c' fis'>4 <c' fis'>8( <d' a'>) <fis' a'>4 <e' g'>8( <c' fis'>) | % 2
  <d' g'>8( b) g( b) d'( g') fis'( g') | % 3
  <e' g'>4 <e' g'>8( <d' g'>) <c' fis'>4 <c' a'> | % 4
  \barNumberCheck #5
  <b d'>4\p <b d'>8( <c' e'>) <d' g'>4 <d' g'> | % 5
  <b e'>8( g') <b e'>( g') <e' g'>4 <e' g'> | % 6
  <c' e'>4 <e' a'> <c' fis'> <c' e'> | % 7
  <b d'>4 g'8( fis') e'( d') c'( b) | % 8
  \barNumberCheck #9
  <b e'>4\f <b e'> <cis' e'> <cis' g'> | % 9
  <a d'>4 <a d'> <b d'> <b f'> | % 10
  <c' e'>4 g'8( e') <c' e'>4 a'8( g') | % 11
  <c' fis'>4 <c' fis'> <c' e'> <a c'> | % 12
  \barNumberCheck #13
  <b d' g'>4 <d' g' b'> <d' g' b'> <d' g'> | % 13
  <c' fis'>4 <c' fis'>8( <b e'>) <a d'>4 <c' fis'> | % 14
  <b d'>4 <d' g'> <e' g'> <c' fis'> | % 15
  <b d' g'>2 r2 | % 16
  \barNumberCheck #17

  % S1 - G to D: measures 17-40.
  \barNumberCheck #17
  <b d'>8\p( g') <b d'>( g') <b d'>( g') <b d'>( g') | % 17
  <c' e'>8( g') <c' e'>( g') <c' e'>( a') <c' e'>( g') | % 18
  <b d'>4 <c' e'> <c' fis'>8( a') <c' fis'>( a') | % 19
  <b d'>8( g') fis'( e') d'4 r4 | % 20
  \barNumberCheck #21
  <b e'>4\mf <b e'>8( g') <b e'>4 <b e'> | % 21
  <b dis'>4 <b dis'>8( fis') <dis' fis'>4 <dis' a'> | % 22
  <b e'>4 <b e'> <b dis'> <b dis'> | % 23
  e'16( fis' g' a') b'( a' g' fis') e'4 <g b> | % 24
  \barNumberCheck #25
  <a c'>4\p <a d'> <gis b>8( e') <gis b>( e') | % 25
  <a c'>4 <a c'>8( e') <a c'>4 <a cis'> | % 26
  <a d'>4 <a d'> <g cis'>8( e') <g cis'>( e') | % 27
  d'8( fis') a'( g') fis'( e') d'( cis') | % 28
  \barNumberCheck #29
  <a d'>4\f <a d'>8( fis') <a cis'>4 <a cis'> | % 29
  <a d'>4 <b d'> <a cis'> <g cis'> | % 30
  <a d'>4 <b e'> <g cis'> <g a> | % 31
  <fis a>8( d') cis'( b) a'( g') fis'( e') | % 32
  \barNumberCheck #33
  <a d'>4\p <a d'> <b d'> <a d'> | % 33
  <g b>4 <g b> <g b> <e g> | % 34
  <g cis'>4 <g a> <fis a> <g a> | % 35
  <fis a>4 <a d'> <a d'> r4 | % 36
  \barNumberCheck #37
  d''8.^\markup \italic "continuo solo"( fis''16) a''4-. fis''8( d'') e''( fis'') | % 37
  % Measure 38: notation and explicit ornament playback.
  \tag #'printed { e''8( a') cis''( e'') g''4\trill fis''8( e'') | } % 38
  \tag #'playback { e''8( a') cis''( e'') a''32( g''32 a''32 g''32 a''32 g''32 a''32 g''32 ) fis''8( e'') | }
  <a' d''>4\f <a' d''> <b' d''> <gis' b'> | % 39
  <a' cis''>4 <g' cis''> <fis' a' d''> r4 | % 40
  \barNumberCheck #41

  % R2 - D major: measures 41-48.
  \barNumberCheck #41
  <fis a>4\f <fis a>8( <g b>) <a d'>4 <a d'> | % 41
  <g cis'>4 <g cis'>8( <a e'>) <cis' e'>4 <b d'>8( <g cis'>) | % 42
  <a d'>8( fis) d( fis) a( d') cis'( d') | % 43
  <b d'>4 <b d'>8( <a d'>) <g cis'>4 <g e'> | % 44
  \barNumberCheck #45
  <fis a d'>4 <a d' fis'> <a d' fis'> <a d'> | % 45
  <g cis'>4 <g cis'>8( <fis b>) <e a>4 <g cis'> | % 46
  <fis a>4 <a d'> <b d'> <g cis'> | % 47
  <fis a d'>2 r2 | % 48
  \barNumberCheck #49

  % S2 - D, B minor, E minor: measures 49-72.
  \barNumberCheck #49
  <a d'>4\p <a d'>8( <g cis'>) <a d'>4 <a d'> | % 49
  <a e'>4 <a e'> <g a> <g a> | % 50
  <b d'>4 <b d'> <d' fis'> <d' fis'> | % 51
  <ais cis'>4 <ais cis'> <ais e'> r4 | % 52
  \barNumberCheck #53
  <b d'>4\mf <d' fis'> <b e'> <ais cis'> | % 53
  <b e'>4 <b e'> <a cis'> <a cis'> | % 54
  <a d'>4 <a d'> <b d'> <b d'> | % 55
  <g cis'>4 <g cis'> <ais cis'> <ais e'> | % 56
  \barNumberCheck #57
  b'8.^\markup \italic "continuo solo"( d''16) fis''4-. d''8( b') cis''( d'') | % 57
  % Measure 58: notation and explicit ornament playback.
  \tag #'printed { e''8( b') g'( b') ais'4\trill gis'8( fis') | } % 58
  \tag #'playback { e''8( b') g'( b') b'32( ais'32 b'32 ais'32 b'32 ais'32 b'32 ais'32 ) gis'8( fis') | }
  <b d'>4\p <d' fis'> <e' fis'> <e' fis'> | % 59
  <cis' e'>4 <ais cis'> <b d' fis'> r4 | % 60
  \barNumberCheck #61
  <b d'>8\mf( g') <b d'>( g') <b d'>( g') <b d'>( g') | % 61
  <g b>8( e') <g b>( e') <g b>4 <g b> | % 62
  <ais cis'>8( fis') <ais cis'>( fis') <b d'>4 <b d'> | % 63
  <a dis'>4 <a dis'> <a dis'> r4 | % 64
  \barNumberCheck #65
  <b e'>4\p <b e'> <b dis'> <b dis'> | % 65
  <a c'>4 <a c'> <a c'> <a c'> | % 66
  <a c'>4 <fis a> <g b> <g b> | % 67
  <g c'>4 <g c'> <a c'> <a c'> | % 68
  \barNumberCheck #69
  <a dis'>4\f <a dis'> <a dis'> <a dis'> | % 69
  <b e'>4 <b e'> <c' e'> <c' e'> | % 70
  <b e'>4 <b dis'> <a dis'> <fis a> | % 71
  <g b e'>2 r2 | % 72
  \barNumberCheck #73

  % R3 - E minor: measures 73-80.
  \barNumberCheck #73
  e''8.\f^\markup \italic "continuo solo"( g''16) b''4-. g''8( e'') fis''( g'') | % 73
  % Measure 74: notation and explicit ornament playback.
  \tag #'printed { fis''8( b') dis''( fis'') a''4\trill g''8( fis'') | } % 74
  \tag #'playback { fis''8( b') dis''( fis'') b''32( a''32 b''32 a''32 b''32 a''32 b''32 a''32 ) g''8( fis'') | }
  g''8.( e''16) b''8( g'') e''4 b'8( c'') | % 75
  % Measure 76: notation and explicit ornament playback.
  \tag #'printed { c''8( e'') a''( g'') fis''4\trill e''8( dis'') | } % 76
  \tag #'playback { c''8( e'') a''( g'') g''32( fis''32 g''32 fis''32 g''32 fis''32 g''32 fis''32 ) e''8( dis'') | }
  \barNumberCheck #77
  <b e' g'>4\mf <e' g' b'> <e' g' b'> <b e' g'> | % 77
  <a dis'>4 <a dis'>8( <g cis'>) <fis b>4 <a dis'> | % 78
  <g b>4 <b e'> <c' e'> <a dis'> | % 79
  <g b e'>2 r2 | % 80
  \barNumberCheck #81

  % S3 - C, A minor, return to G: measures 81-112.
  \barNumberCheck #81
  <c' e'>4\p <c' e'>8( <d' f'>) <e' g'>4 <b d'> | % 81
  <c' e'>8( g') <c' e'>( g') <c' e'>4 <g c'> | % 82
  <a c'>4 <c' f'> <b d'> <b f'> | % 83
  <c' e'>8( g') e'( c') g4 r4 | % 84
  \barNumberCheck #85
  c''8.^\markup \italic "continuo solo"( e''16) g''4-. e''8( c'') d''( e'') | % 85
  % Measure 86: notation and explicit ornament playback.
  \tag #'printed { f''8( c'') a'( c'') b'4\trill a'8( g') | } % 86
  \tag #'playback { f''8( c'') a'( c'') c''32( b'32 c''32 b'32 c''32 b'32 c''32 b'32 ) a'8( g') | }
  <c' e'>4\mf <c' e'> <a c'> <b f'> | % 87
  <b d'>4 <b f'> <c' e' g'> r4 | % 88
  \barNumberCheck #89
  <c' e'>4\p <c' e'> <c' e'> <c' e'> | % 89
  <b e'>4 <b e'> <b d'> <gis b> | % 90
  <a c'>8( e') <a c'>( e') <a c'>4 <a c'> | % 91
  <a d'>4 <a d'> <gis b>4 r4 | % 92
  \barNumberCheck #93
  <a c'>4\f <c' e'> <d' f'> <b e'> | % 93
  <a d'>4 <a d'> <b d'> <gis b> | % 94
  <a e'>4 <gis e'> <gis d'> <b d'> | % 95
  <a c' e'>4 e'16( d' c' b) a4 r4 | % 96
  \barNumberCheck #97
  <b d'>4\p <d' g'> <d' g'> <d' g'> | % 97
  <c' e'>8( g') <c' e'>( g') <c' e'>4 <c' e'> | % 98
  <c' e'>4 <c' e'> <c' fis'> <c' fis'> | % 99
  <b d'>8( g') fis'( e') d'4 r4 | % 100
  \barNumberCheck #101
  <c' e'>4\mf <c' e'> <c' fis'> <c' fis'> | % 101
  <b d'>4 <b d'> <b e'> <b e'> | % 102
  <a c'>4 <a c'> <a d'> <a c'> | % 103
  <b d'>4 d'8( b) g4 r4 | % 104
  \barNumberCheck #105
  <b d'>4\f <b d'> <b d'> <b d'> | % 105
  <a c'>4 <a c'> <a c'> <a c'> | % 106
  <g b>4 <g b> <g b> <g b> | % 107
  <a c'>4 <a c'> <a c'> <a c'> | % 108
  \barNumberCheck #109
  g'8.^\markup \italic "continuo solo"( b'16) d''4-. b'8( g') a'( b') | % 109
  % Measure 110: notation and explicit ornament playback.
  \tag #'printed { a'8( d') fis'( a') c''4\trill b'8( a') | } % 110
  \tag #'playback { a'8( d') fis'( a') d''32( c''32 d''32 c''32 d''32 c''32 d''32 c''32 ) b'8( a') | }
  <b d' g'>4 <d' g' b'> <d' g' b'> <d' g'> | % 111
  <c' fis'>4 <c' fis'> <a d'> r4 | % 112
  \barNumberCheck #113

  % R4 - G major: measures 113-128.
  \barNumberCheck #113
  b8\f( d') g'( fis') g'( d') b( d') | % 113
  c'8( d') fis'( e') fis'( a') g'( fis') | % 114
  d'16( e' fis' g') a'( g' fis' e') d'8( b) a( g) | % 115
  % Measure 116: notation and explicit ornament playback.
  \tag #'printed { e'8( g') c''( b') a'4\trill g'8( fis') | } % 116
  \tag #'playback { e'8( g') c''( b') b'32( a'32 b'32 a'32 b'32 a'32 b'32 a'32 ) g'8( fis') | }
  \barNumberCheck #117
  <b d'>8\p( g') <b d'>( g') d'16( e' fis' g') a'( g' fis' e') | % 117
  <b e'>8( g') b'( a') g'( fis') e'( d') | % 118
  <c' e'>8( a') g'( e') <c' fis'>4 <c' e'> | % 119
  <b d'>8( g') fis'( e') d'( c') b( a) | % 120
  \barNumberCheck #121
  g'8\f( e') b( e') g'( e') cis'( a) | % 121
  fis'8( d') a( d') f'( d') b( g) | % 122
  g'8( e') c'( e') a'( e') c'( a) | % 123
  a'8( fis') d'( fis') <c' e'>4 <a c'> | % 124
  \barNumberCheck #125
  <b d' g'>4 <d' g' b'> <b d' g'> <d' g'> | % 125
  <c' fis'>4 <c' fis'>8( <b e'>) <a d'>4 <c' fis'> | % 126
  <b d'>8( g') <b d'>( g') <c' e'>4 <c' fis'> | % 127
  <b d' g'>1\fermata | % 128
  \barNumberCheck #129
}

continuoBass = \absolute {
  \clef bass

  % R1 - G major: measures 1-16.
  \barNumberCheck #1
  g,8\f( b,) d( g) b,( d) g( d) | % 1
  fis,8( a,) d( fis) a,( d) fis( d) | % 2
  b,8( d) g( b) d( b,) g,( b,) | % 3
  c8( e) g( e) d( c) b,( a,) | % 4
  \barNumberCheck #5
  g,8\p( b,) d( g) b,( d) g( d) | % 5
  e,8( g,) b,( e) g,( b,) e( b,) | % 6
  a,8( c) e( a) d( fis) a( d') | % 7
  g8( fis) e( d) c( b,) a,( g,) | % 8
  \barNumberCheck #9
  e8\f( d) c( b,) a,( cis) e( a) | % 9
  d8( c) b,( a,) g,( b,) d( g) | % 10
  c8( b,) a,( g,) a,( b,) c( cis) | % 11
  d8( a,) fis,( a,) d( e) fis( d) | % 12
  \barNumberCheck #13
  d4 d8( e) d4 d, | % 13
  d8( fis) a( d') c'( a) fis( d) | % 14
  g8( d) b,( g,) c( a,) d( d,) | % 15
  g,4 d g, r | % 16
  \barNumberCheck #17

  % S1 - G to D: measures 17-40.
  \barNumberCheck #17
  g,4\p d8( b,) g,( a,) b,( g,) | % 17
  c4 g8( e) a,( b,) c( a,) | % 18
  b,4 c d8( fis) a( d') | % 19
  g8( d) b,( d) g4 r | % 20
  \barNumberCheck #21
  e8\mf( b,) g,( b,) e4 e, | % 21
  b,8( fis) dis( fis) b4 b, | % 22
  e8( b,) g,( b,) b,( fis) dis( b,) | % 23
  e8( fis) g( fis) e( d) c( b,) | % 24
  \barNumberCheck #25
  a,8\p( c) d( f) e( b,) gis,( b,) | % 25
  a,8( b,) c( d) e( fis) g( a) | % 26
  d8( a,) fis,( a,) a,( b,) cis( a,) | % 27
  d8( e) fis( g) a( b) a( g) | % 28
  \barNumberCheck #29
  fis8\f( a) d'( a) e( a) cis'( a) | % 29
  d8( fis) g( b) a( g) fis( e) | % 30
  fis8( d) g( e) a( e) cis( a,) | % 31
  d8( a,) fis,( a,) d4 r4 | % 32
  \barNumberCheck #33
  d8\p( fis) a( fis) g( b) a( fis) | % 33
  e8( g) b( g) e( g) b( e') | % 34
  a8( e) cis( a,) d( fis) a( a,) | % 35
  d4 a, d r | % 36
  \barNumberCheck #37
  d16\mf( e fis e) d( cis b, a,) b,( cis d e) fis8( d) | % 37
  a,16( b, cis d) e( fis g e) a8( g) fis( e) | % 38
  fis8\f( d) g( fis) e( b,) e( d) | % 39
  a,8( cis) e( a,) d4 r4 | % 40
  \barNumberCheck #41

  % R2 - D major: measures 41-48.
  \barNumberCheck #41
  d,8\f( fis,) a,( d) fis,( a,) d( a,) | % 41
  cis,8( e,) a,( cis) e,( a,) cis( a,) | % 42
  fis,8( a,) d( fis) a,( fis,) d,( fis,) | % 43
  g,8( b,) d( b,) a,( g,) fis,( e,) | % 44
  \barNumberCheck #45
  a,4 a,8( b,) a,4 a,, | % 45
  a,8( cis) e( a) g( e) cis( a,) | % 46
  d8( a,) fis,( d,) g,( e,) a,( a,,) | % 47
  d,4 a, d r | % 48
  \barNumberCheck #49

  % S2 - D, B minor, E minor: measures 49-72.
  \barNumberCheck #49
  d8\p( e) fis( g) a( fis) b( a) | % 49
  cis8( e) a( g) fis( e) d( cis) | % 50
  b,16( cis d e) fis( e d cis) b,8( d) fis( b) | % 51
  fis8( cis) ais,( cis) fis4 r4 | % 52
  \barNumberCheck #53
  b,8\mf( fis) b( fis) e( g) fis( fis,) | % 53
  e8( g) b( g) a( e) cis( a,) | % 54
  d8( fis) a( fis) g( d) b,( g,) | % 55
  cis8( e) g( e) fis( cis) ais,( fis,) | % 56
  \barNumberCheck #57
  b,16( cis d cis) b,( ais, gis, fis,) gis,( ais, b, cis) d8( b,) | % 57
  e16( fis g fis) e( d cis b,) fis8( e) cis( fis,) | % 58
  b,8\p( cis) d( e) fis( g) fis( e) | % 59
  fis8( cis) ais,( fis,) b,4 r4 | % 60
  \barNumberCheck #61
  g,8\mf( b,) d( g) b( a) g( fis) | % 61
  e8( g) b( g) cis( d) e( cis) | % 62
  fis8( cis) ais,( fis,) b,( d) fis( b,) | % 63
  b,8( dis) fis( a) b4 b, | % 64
  \barNumberCheck #65
  e8\p( b,) g,( b,) b,( dis) fis( b,) | % 65
  a,8( c) e( a) c'( b) a( g) | % 66
  d8( fis) a( d') g( d) b,( g,) | % 67
  c8( e) g( c') fis( e) dis( c) | % 68
  \barNumberCheck #69
  b,8\f( dis) fis( a) b( a) fis( dis) | % 69
  e8( g) b( g) a( e) c( a,) | % 70
  b,4 b8( a) fis( dis) b,( a,) | % 71
  e,4 b, e r4 | % 72
  \barNumberCheck #73

  % R3 - E minor: measures 73-80.
  \barNumberCheck #73
  e,8\f( g,) b,( e) g,( b,) e( b,) | % 73
  dis,8( fis,) b,( dis) fis,( b,) dis( b,) | % 74
  g,8( b,) e( g) b,( g,) e,( g,) | % 75
  a,8( c) e( c) b,( a,) g,( fis,) | % 76
  \barNumberCheck #77
  b,4\mf b,8( cis) b,4 b,, | % 77
  b,8( dis) fis( b) a( fis) dis( b,) | % 78
  e8( b,) g,( e,) a,( fis,) b,( b,,) | % 79
  e,4 b, e r4 | % 80
  \barNumberCheck #81

  % S3 - C, A minor, return to G: measures 81-112.
  \barNumberCheck #81
  c8\p( e) g( c') e( c) g,( b,) | % 81
  c8( g,) e,( g,) c( d) e( c) | % 82
  f8( e) d( c) g,( a,) b,( g,) | % 83
  c8( g,) e,( g,) c4 r4 | % 84
  \barNumberCheck #85
  c16\mf( d e d) c( b, a, g,) a,( b, c d) e8( c) | % 85
  f16( g a g) f( e d c) g8( f) d( g,) | % 86
  e8( c) a,( c) d( f) g( g,) | % 87
  g,8( b,) d( g,) c4 r4 | % 88
  \barNumberCheck #89
  a,16\p( b, c d) e( d c b,) a,8( c) e( a) | % 89
  e8( b,) gis,( b,) e( d) c( b,) | % 90
  a,8( b,) c( d) e( f) e( c) | % 91
  d8( f) a( f) e( b,) gis,( e,) | % 92
  \barNumberCheck #93
  a,8\f( c) e( a) f( d) e( b,) | % 93
  d8( f) a( f) e( b,) gis,( e,) | % 94
  e4 e8( d) b,( gis,) e,( e) | % 95
  a,8( e) a( gis) a4 r4 | % 96
  \barNumberCheck #97
  g,8\p( b,) d( g) b,( d) g( b) | % 97
  c'8( b) a( g) e( d) c( b,) | % 98
  a,8( c) e( a) d( fis) a( d') | % 99
  g8( d) b,( d) g4 r4 | % 100
  \barNumberCheck #101
  a8\mf( g) fis( e) d( c) b,( a,) | % 101
  g8( fis) e( d) c( b,) a,( g,) | % 102
  fis8( e) d( c) b,( a,) g,( fis,) | % 103
  g,16( a, b, c) d( e fis g) b8( a) g4 | % 104
  \barNumberCheck #105
  d8\f( a,) d( a,) d( a,) d( a,) | % 105
  d8( a,) d( a,) d( a,) d( a,) | % 106
  d8( a,) d( a,) d( a,) d( a,) | % 107
  d8( a,) d( a,) d( a,) d( a,) | % 108
  \barNumberCheck #109
  d16( e fis g) a( b c' a) b( a g fis) e( d c b,) | % 109
  a,16( b, c d) e( fis g e) fis( e d c) b,( a, g, fis,) | % 110
  d8( e) d( c) b,( a,) g,( b,) | % 111
  d8( fis) a( c') d'4 r4 | % 112
  \barNumberCheck #113

  % R4 - G major: measures 113-128.
  \barNumberCheck #113
  g,8\f( b,) d( g) b,( d) g( d) | % 113
  fis,8( a,) d( fis) a,( d) fis( d) | % 114
  b,8( d) g( b) d( b,) g,( b,) | % 115
  c8( e) g( e) d( c) b,( a,) | % 116
  \barNumberCheck #117
  g,16\p( a, b, c) d( c b, a,) g,8( b,) d( g) | % 117
  e16( fis g a) b( a g fis) e8( d) c( b,) | % 118
  a,8( c) e( a) d( fis) a( d') | % 119
  g8( fis) e( d) c( b,) a,( g,) | % 120
  \barNumberCheck #121
  e8\f( b,) g,( b,) a,( cis) e( a) | % 121
  d8( a,) fis,( a,) g,( b,) d( g) | % 122
  c8( g,) e,( g,) a,( c) e( a) | % 123
  d16( e fis g) a( g fis e) d8( c) b,( a,) | % 124
  \barNumberCheck #125
  d4 d8( e) d4 d, | % 125
  d8( fis) a( d') c'( a) fis( d) | % 126
  g8( d) b,( g,) c( a,) d( d,) | % 127
  g,1\fermata | % 128
  \barNumberCheck #129
}


ensemble = <<
  \new Staff = "flute" \with {
    instrumentName = "Flute"
    shortInstrumentName = "Fl."
    midiInstrument = "flute"
    midiMinimumVolume = #0.65
    midiMaximumVolume = #0.95
  } << \global \flute >>
  \new PianoStaff \with {
    instrumentName = \markup \center-column { "Basso" "continuo" }
    shortInstrumentName = "B.c."
  } <<
    \new Staff = "continuoRH" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.45
      midiMaximumVolume = #0.68
    } << \global \continuoRight >>
    \new Staff = "continuoLH" \with {
      midiInstrument = "harpsichord"
      midiMinimumVolume = #0.50
      midiMaximumVolume = #0.75
    } << \global \continuoBass >>
  >>
>>

\score {
  \keepWithTag #'printed \ensemble
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
      \override SpacingSpanner.uniform-stretching = ##t
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
  \midi { \tempo 4 = 112 }
}
