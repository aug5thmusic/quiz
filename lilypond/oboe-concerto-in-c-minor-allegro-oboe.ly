\version "2.24.0"
\language "nederlands"

% Standalone oboe part extracted from oboe-concerto-in-c-minor-allegro.ly.
% The global, structure, and oboe definitions are preserved verbatim.
% 136 measures; notated trills retained through the layout tag.

\header {
  title = "Concerto in C minor"
  subtitle = "for oboe and basso continuo"
  subsubtitle = "I. Allegro"
  composer = "Original composition"
  poet = "In the manner of Antonio Vivaldi"
  instrument = "Oboe"
  tagline = ##f
}

#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 15\mm
  indent = 0\mm
  short-indent = 0\mm
  ragged-last = ##f
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #17
  print-page-number = ##t
}

global = {
  \key c \minor
  \numericTimeSignature
  \time 2/4
}

structure = {
  \tempo "Allegro, grave e maestoso" 4 = 100
  \mark \markup \box "Ritornello I"
  s2*20
  \mark \markup \box "Solo I"
  s2*26
  \mark \markup \box "Ritornello II"
  s2*10
  \mark \markup \box "Solo II"
  s2*24
  \mark \markup \box "Ritornello III"
  s2*10
  \mark \markup \box "Solo III"
  s2*26
  \mark \markup \box "Ritornello IV"
  s2*20
  \bar "|."
}

oboe = {
  % R1 (1-20): the soloist is silent
  R2*20 |

  % S1 (21-46)
  \barNumberCheck #21
  g''4~\mf^\markup \italic "Solo" g''16 es'' c'' g' |            % 21
  as'8. c''16 f''8. as''16 |                                    % 22
  g''16( f'' es'' d'') c''( b' c'' d'') |                       % 23
  b'8 g' r4 |                                                   % 24
  g''16 es'' c'' es'' as'' f'' c'' f'' |                        % 25
  f''16 d'' bes' d'' g'' es'' bes' es'' |                       % 26
  c''16 es'' as'' c''' bes'' f'' d'' f'' |                     % 27
  es''8. f''16 g''8. as''16 |                                   % 28
  bes''16( as'' g'' f'') es''( d'' c'' bes') |                  % 29
  as'16( bes' c'' as') g'8 r |                                  % 30
  r16 bes'( c'' d'' es'' f'' g'' as'') |                        % 31
  bes''8. g''16 es''8. bes'16 |                                 % 32
  es''32( f'' g'' as'') bes''8 as''8. g''32 f'' |               % 33
  d''32( es'' f'' g'') as''8 g''8. f''32 es'' |                 % 34
  c''32( d'' es'' f'') g''8 f''8. es''32 d'' |                  % 35
  bes'32( c'' d'' es'') f''8 es''8. d''32 c'' |                 % 36
  d''16\< bes' f' bes' d'' f'' bes'' f'' |                      % 37
  es''16 bes' g' bes' es'' g'' bes'' g'' |                      % 38
  d''16 as' f' as' d'' f'' as'' f'' |                           % 39
  d''16( es'' f'' g'' as'' bes'' c''' as'') |                   % 40
  g''8.\f es''16 c'''8. as''16 |                                % 41
  f''8. d''16 bes''8. f''16 |                                   % 42
  g''16( f'' es'' d'') c''( bes' as' g') |                      % 43
  c''16( es'' as'' c''') bes''8 g'' |                           % 44
  \tag #'layout { f''4.\trill } \tag #'midi { g''32 f''32 g''32 f''32 g''32 f''32 g''32 f''32 g''32 f''32 g''32 f''32 } es''16 f'' |                                      % 45
  es''4 r |                                                     % 46

  % R2 (47-56): E-flat major
  \barNumberCheck #47
  R2*4 |
  g''16\f^\markup \italic "Tutti" es'' bes' es'' as'' es'' c'' es'' | % 51
  d''16 f'' bes'' f'' es'' g'' bes'' g'' |                      % 52
  as''8. as''16 as''8. as''16 |                                 % 53
  g''8. g''16 f''8. f''16 |                                     % 54
  bes''8. g''16 \tag #'layout { f''8.\trill } \tag #'midi { g''32 f''32 g''32 f''32 g''32 f''32 } es''32 f'' |                        % 55
  es''4 r |                                                     % 56

  % S2 (57-80): E-flat major -> F minor -> G minor
  \barNumberCheck #57
  bes'16\mf^\markup \italic "Solo" es'' g'' bes'' g'' es'' bes' g' | % 57
  c''16 e'' g'' bes'' c''' bes'' g'' e'' |                      % 58
  as''16 f'' c'' f'' as'' c''' as'' f'' |                       % 59
  bes'16 des'' f'' bes'' g'' e'' c'' e'' |                      % 60
  f''8 r r4 |                                                   % 61
  R2 |                                                          % 62
  as''2\p\< |                                                   % 63
  g''2 |                                                        % 64
  fis''8.\mf e''32 fis'' g''4 |                                 % 65
  g'16 g'' d'' g'' bes' g'' d'' g'' |                           % 66
  c''16 g'' es'' g'' c'' g'' es'' g'' |                         % 67
  a'16 fis'' d'' fis'' c''' a'' fis'' a'' |                     % 68
  bes''16( a'' g'' fis'') g''( d'' bes' g') |                   % 69
  es''8.\f c''16 as''8. es''16 |                                % 70
  bes''16 g'' e'' cis'' d'' fis'' a'' c''' |                    % 71
  bes''16( a'' g'' fis'') g''( es'' c'' a') |                   % 72
  bes'8 g' r4 |                                                 % 73
  r16 d''( e'' fis'' g'' a'' bes'' c''') |                      % 74
  d'''8 bes''16 g'' es''8. c''16 |                              % 75
  a''16( fis'' d'' c'') bes'( a' g' fis') |                     % 76
  g'32( a' bes' c'') d''8 c''32( d'' es'' f'') g''8 |           % 77
  es''8. c''16 a'8. fis'16 |                                    % 78
  bes''8. g''16 \tag #'layout { a''8.\trill } \tag #'midi { bes''32 a''32 bes''32 a''32 bes''32 a''32 } g''32 a'' |                         % 79
  g''4 r |                                                      % 80

  % R3 (81-90): G minor
  \barNumberCheck #81
  g''8.\f^\markup \italic "Tutti" d''16 g''8. bes''16 |         % 81
  d'''8. c'''16 bes''16( a'' g'' fis'') |                       % 82
  d''16 g'' bes'' g'' es'' g'' c''' g'' |                       % 83
  c''16 f'' a'' f'' d'' f'' bes'' f'' |                         % 84
  bes'16 es'' g'' es'' c'' es'' g'' es'' |                      % 85
  a'16 c'' fis'' c'' bes' d'' g'' d'' |                         % 86
  es''8. es''16 es''8. es''16 |                                 % 87
  d''8. d''16 c''8. c''16 |                                     % 88
  bes''8. g''16 \tag #'layout { a''8.\trill } \tag #'midi { bes''32 a''32 bes''32 a''32 bes''32 a''32 } g''32 a'' |                         % 89
  g''4 r |                                                      % 90

  % S3 (91-116): G minor -> C minor
  \barNumberCheck #91
  g'32(\mf^\markup \italic "Solo" a' bes' c'' d'' es'' f'' g'') f''8. d''16 | % 91
  es''32( d'' c'' b' c'' d'' es'' f'') g''8. es''16 |           % 92
  as''32( g'' f'' es'' d'' c'' bes' as') g'8. b'16 |            % 93
  c''8 r r4 |                                                   % 94
  g''16 es'' c'' es'' g'' c''' g'' es'' |                       % 95
  c'''8. as''16 f''8. as''16 |                                  % 96
  f''16 d'' bes' d'' f'' bes'' f'' d'' |                        % 97
  bes''8. g''16 es''8. g''16 |                                  % 98
  es''16 c'' as' c'' es'' as'' es'' c'' |                       % 99
  as''8. f''16 d''8. f''16 |                                    % 100
  d''16 b' g' b' d'' g'' f'' d'' |                              % 101
  g''8. es''16 c''8. es''16 |                                   % 102
  b'16\< d'' g'' d'' f'' as'' f'' d'' |                          % 103
  c''16 es'' g'' c''' g'' es'' c'' g' |                         % 104
  as''16 f'' d'' b' d'' f'' as'' f'' |                          % 105
  g''16 c''' g'' es'' c'' es'' g'' c''' |                       % 106
  d'''32(\f c''' b'' c''') g''( f'' es'' d'') c''8 b' |           % 107
  c''8 r r4 |                                                   % 108
  es''16( f'' g'' es'') c''( d'' es'' c'') |                    % 109
  f''16( g'' as'' f'') d''( es'' f'' d'') |                     % 110
  es''16 g'' c''' g'' as'' f'' c'' f'' |                        % 111
  as'16( des'' f'' as'') g''( f'' es'' d'') |                   % 112
  c'''8. g''16 f''8. d''16 |                                    % 113
  es''16 c'' g' c'' es'' g'' c''' g'' |                         % 114
  as''8. f''16 \tag #'layout { d''8.\trill } \tag #'midi { es''32 d''32 es''32 d''32 es''32 d''32 } c''32 d'' |                          % 115
  c''4 r |                                                      % 116

  % R4 (117-136): C minor, oboe joins the tutti
  \barNumberCheck #117
  c''8.\f^\markup \italic "Tutti" g'16 c''8. es''16 |           % 117
  g''8. c'''16 g''16( f'' es'' d'') |                           % 118
  b'8. g'16 d''8. f''16 |                                       % 119
  as''8. f''16 d''16( es'' f'' d'') |                           % 120
  c''16 es'' g'' es'' c'' f'' as'' f'' |                        % 121
  bes'16 d'' f'' d'' bes' es'' g'' es'' |                       % 122
  as'16 c'' es'' c'' as' d'' f'' d'' |                          % 123
  g'16 b' d'' b' g' c'' es'' c'' |                              % 124
  as'16( bes' c'' d'' es'' f'' g'' as'') |                      % 125
  b'8. d''16 f''8. as''16 |                                     % 126
  c'''4 c'''8 as'' |                                                  % 127
  as''4 g'' |                                                   % 128
  g''2\p |                                                      % 129
  g''4 f'' |                                                    % 130
  f''4 es''8 d'' |                                              % 131
  es''4\< d'' |                                                 % 132
  as''8.\f as''16 as''8. as''16 |                               % 133
  g''8. g''16 f''8. f''16 |                                     % 134
  es''8. c''16 \tag #'layout { d''8.\trill } \tag #'midi { es''32 d''32 es''32 d''32 es''32 d''32 } c''32 d'' |                          % 135
  c''2\fermata |                                                % 136
}

\score {
  \keepWithTag #'layout {
    \new Staff = "oboePart" {
      \clef treble
      \compressMMRests
      \simultaneous { \global \structure \oboe }
      \barNumberCheck #137
    }
  }
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
      \override RehearsalMark.font-size = #0
    }
  }
}
