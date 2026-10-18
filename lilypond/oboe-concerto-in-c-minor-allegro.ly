\version "2.24.0"
\language "nederlands"

% Concerto in C minor for oboe, strings omitted: oboe and basso continuo
% I. Allegro -- original composition in the manner of Antonio Vivaldi
%
% 136 measures, 2/4, quarter = 100 (about 2 minutes 45 seconds).
% Three staves: solo oboe, continuo right hand (realization), continuo bass.
% Trills are notated with \trill in the score and written out
% (from the upper note) in the MIDI via tags.
% Written without double angle brackets: \simultaneous { } is used instead.
% All pitches are absolute (c' = middle C). Oboe range used: g' to d'''.
%
% RITORNELLO FORM
%   1-20   R1  C minor. Continuo alone: unison motto, answer on V,
%              falling-fifths sequence, dotted/running dialogue,
%              piano lament over a chromatic bass, Neapolitan cadence.
%   21-46  S1  Oboe enters. C minor -> E-flat major. Dotted solo theme,
%              falling-fifths figuration, 32nd-note tiratas answered by
%              the continuo right hand, dominant pedal, cadential trill.
%   47-56  R2  E-flat major. Motto and answer, oboe joins the sequence.
%   57-80  S2  E-flat -> F minor -> G minor. Bass takes the motto under
%              oboe arpeggios; continuo interlude; long oboe suspensions
%              over a running bass; bariolage; Neapolitan; dialogue.
%   81-90  R3  G minor. Motto, sequence in thirds, cadential tail.
%   91-116 S3  G minor -> C minor. Scale tiratas, 32nd runs in the bass,
%              oboe/bass exchange of one motive over falling fifths,
%              tremolo dominant pedal, parallel tenths, final solo cadence.
%   117-136 R4 C minor. Complete return; the oboe joins as a descant.
%
% PERFORMANCE
%   Allegro, grave e maestoso: dotted rhythms sharp (over-dotting welcome),
%   sixteenths even and articulate. Trills from the upper note.
%   The continuo bass is intended for cello (with harpsichord left hand);
%   the right-hand staff is a composed realization, not a reduction.

\header {
  title = "Concerto in C minor"
  subtitle = "for oboe and basso continuo"
  subsubtitle = "I. Allegro"
  composer = "Original composition"
  poet = "In the manner of Antonio Vivaldi"
  tagline = ##f
}

#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 20\mm
  short-indent = 8\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #16
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

% ---------------------------------------------------------------------
% Ritornello, continuo bars 1-19 (used for R1 and, complete, for R4)
% ---------------------------------------------------------------------

ritRH = {
  c''8.\f g'16 c''8. es''16 |                                   % 1
  g''8. c'''16 g''16( f'' es'' d'') |                           % 2
  <d' g' b'>8. g'16 <g' b' d''>8. f''16 |                       % 3
  <d'' f'' as''>8. f''16 d''16( es'' f'' d'') |                 % 4
  es''16 g'' c''' g'' es'' as'' c''' as'' |                     % 5
  d''16 f'' bes'' f'' d'' g'' bes'' g'' |                       % 6
  c''16 es'' as'' es'' c'' f'' as'' f'' |                       % 7
  b'16 d'' f'' d'' c'' es'' g'' es'' |                          % 8
  <as' c'' f''>8. <as' c'' f''>16 <as' c'' f''>8. <as' c'' f''>16 | % 9
  <g' b' d''>8. <g' b' d''>16 <g' b' d''>8. <g' b' d''>16 |     % 10
  g''16( f'' es'' d'') c''( d'' es'' c'') |                     % 11
  f''16( es'' d'' c'') b'( c'' d'' b') |                        % 12
  g''16\p es'' c'' es'' g'' d'' b' d'' |                        % 13
  g''16 d'' bes' d'' f'' c'' a' c'' |                           % 14
  f''16 c'' as' c'' es'' d'' b' d'' |                           % 15
  c''16\< es'' d'' c'' b' c'' d'' es'' |                        % 16
  <c'' f'' as''>8.\f <c'' f'' as''>16 <des'' f'' as''>8. <des'' f'' as''>16 | % 17
  <c'' es'' g''>8. <c'' es'' g''>16 <b' d'' f''>8. <b' d'' f''>16 | % 18
  es''8. c''16 \tag #'layout { d''8.\trill } \tag #'midi { es''32 d''32 es''32 d''32 es''32 d''32 } c''32 d'' |                          % 19
}

ritBass = {
  c8.\f g,16 c8. es16 |                                         % 1
  g8. c'16 g16( f es d) |                                       % 2
  g,8 d b, g, |                                                 % 3
  b,8 g, g g, |                                                 % 4
  c8 c' f f, |                                                  % 5
  bes,8 bes es es, |                                            % 6
  as,8 as d d, |                                                % 7
  g,8 g c c, |                                                  % 8
  f,16( g, as, bes,) c( d es f) |                               % 9
  g16( f es d) es( d c b,) |                                    % 10
  c8. c'16 as,8. as16 |                                         % 11
  f,8. f16 g,8. g16 |                                           % 12
  c8.\p c16 b,8. b,16 |                                         % 13
  bes,8. bes,16 a,8. a,16 |                                     % 14
  as,8. as,16 g,8. g,16 |                                       % 15
  c8\< es g g, |                                                % 16
  as,8.\f as16 f8. f,16 |                                       % 17
  g,16 a, b, g, g, f, es, d, |                                  % 18
  c8 as, f, g, |                                                % 19
}

% ---------------------------------------------------------------------
% Oboe
% ---------------------------------------------------------------------

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

% ---------------------------------------------------------------------
% Basso continuo, right hand (composed realization)
% ---------------------------------------------------------------------

continuoRH = {
  % R1 (1-20)
  \ritRH
  <es' g' c''>4 r |                                             % 20

  % S1 (21-46)
  \barNumberCheck #21
  r8 <es' g'>\p r <es' g'> |                                    % 21
  r8 <c' f'> r <c' f'> |                                        % 22
  r8 <c' es'> r <b d'> |                                        % 23
  r8 <b d'> r4 |                                                % 24
  r16 <es' g'>8 q16 r16 <f' as'>8 q16 |                         % 25
  r16 <d' f'>8 q16 r16 <es' g'>8 q16 |                          % 26
  r16 <c' es'>8 q16 r16 <d' f'>8 q16 |                          % 27
  r8 <g' bes'> r <g' bes'> |                                    % 28
  r8 <f' as'> r <es' g'> |                                      % 29
  r8 <c' es'> r <es' g'> |                                      % 30
  <d' f' as'>8 r r <d' f' as'> |                                % 31
  r8 <es' g'> r <es' g'> |                                      % 32
  <es' g'>8 r f'32( g' as' bes') c''8 |                         % 33
  <d' as'>8 r es'32( f' g' as') bes'8 |                         % 34
  <es' g'>8 r d'32( es' f' g') as'8 |                           % 35
  <d' f'>8 r c'32( d' es' f') g'8 |                             % 36
  r8 <d' f'>\< r <d' f'> |                                      % 37
  r8 <es' g'> r <es' g'> |                                      % 38
  r8 <d' as'> r <d' as'> |                                      % 39
  r8 <d' f'> r <d' as'> |                                       % 40
  r8 <es' bes'>\f r <es' as'> |                                 % 41
  r8 <d' f'> r <d' f'> |                                        % 42
  r8 <es' bes'> r <es' g'> |                                    % 43
  r8 <c' es'> r <es' g'> |                                      % 44
  r8 <d' as'> r <d' as'> |                                      % 45
  <es' g' bes'>4 r |                                            % 46

  % R2 (47-56): E-flat major
  \barNumberCheck #47
  es''8.\f bes'16 es''8. g''16 |                                % 47
  bes''8. es'''16 bes''16( as'' g'' f'') |                      % 48
  <f' bes' d''>8. bes'16 <bes' d'' f''>8. as''16 |              % 49
  <f'' as'' c'''>8. as''16 f''16( g'' as'' f'') |               % 50
  es''16 bes' g' bes' es'' c'' as' c'' |                        % 51
  d''16 bes' f' bes' es'' bes' g' bes' |                        % 52
  <c'' es'' as''>8. q16 <c'' f'' as''>8. q16 |                  % 53
  <es'' g'' bes''>8. q16 <d'' f'' as''>8. q16 |                 % 54
  <es'' g''>8. <bes' es''>16 <as' c''>8 <as' d''> |             % 55
  <es' g' bes'>4 r |                                            % 56

  % S2 (57-80)
  \barNumberCheck #57
  r8 <g' bes'>\p r <g' bes'> |                                  % 57
  r8 <e' g'> r <e' g'> |                                        % 58
  r8 <c' f'> r <c' f'> |                                        % 59
  r8 <des' f'> r <e' g'> |                                      % 60
  f'8.\f c'16 f'8. as'16 |                                      % 61
  c''8. f''16 c''16( bes' as' g') |                             % 62
  c''8.\p f'16 d''8. f''16 |                                   % 63
  bes'8. es'16 c''8. es''16 |                                  % 64
  a'8. d'16 bes'8. d''16 |                                     % 65
  r8 <bes d'>\mf r <bes d'> |                                   % 66
  r8 <c' es'> r <c' es'> |                                      % 67
  r8 <c' fis'> r <c' fis'> |                                    % 68
  r8 <d' g'> r <d' g'> |                                        % 69
  <c' es' g'>8\f r <c' es' as'> r |                             % 70
  r8 <e' g'> r <fis' a'> |                                      % 71
  r8 <bes d' g'> r <a c' fis'> |                                % 72
  r8 <g' bes'> r4 |                                             % 73
  r8 <fis' a'> r <fis' c''> |                                   % 74
  r8 <g' bes'> r <g' c''> |                                     % 75
  r8 <fis' a'> r <g' bes'> |                                    % 76
  r8 <bes d'> r <c' es'> |                                      % 77
  r8 <c' es'> r <c' fis'> |                                     % 78
  r8 <bes d' g'> r <a c' fis'> |                                % 79
  <bes d' g'>4 r |                                              % 80

  % R3 (81-90): G minor
  \barNumberCheck #81
  g'8.\f d'16 g'8. bes'16 |                                     % 81
  d''8. g''16 d''16( c'' bes' a') |                             % 82
  bes'16 d'' g'' d'' bes' es'' g'' es'' |                       % 83
  a'16 c'' f'' c'' a' d'' f'' d'' |                             % 84
  g'16 bes' es'' bes' g' c'' es'' c'' |                         % 85
  fis'16 a' c'' a' g' bes' d'' bes' |                           % 86
  <g' c'' es''>8. q16 <as' c'' es''>8. q16 |                    % 87
  <g' bes' d''>8. q16 <fis' a' c''>8. q16 |                     % 88
  bes'8. g'16 \tag #'layout { a'8.\trill } \tag #'midi { bes'32 a'32 bes'32 a'32 bes'32 a'32 } g'32 a' |                              % 89
  <bes d' g'>4 r |                                              % 90

  % S3 (91-116)
  \barNumberCheck #91
  r8 <bes d'>\p r <b d' f'> |                                   % 91
  r8 <es' g'> r <es' g'> |                                      % 92
  r8 <c' f'> r <b d'> |                                         % 93
  <g' c''>8 r <d' f'> r |                                       % 94
  r8 <es' g'> r <es' g'> |                                      % 95
  r8 <c' f'> r <c' f'> |                                        % 96
  r8 <d' f'> r <d' f'> |                                        % 97
  r8 <es' g'> r <es' g'> |                                      % 98
  r8 <c' es'> r <c' es'> |                                      % 99
  r8 <d' f'> r <d' f'> |                                        % 100
  r8 <b d' f'> r <b d' f'> |                                    % 101
  r8 <es' g'> r <es' g'> |                                      % 102
  r8 <b d' f'>\< r <b d' f'> |                                  % 103
  r8 <c' es' g'> r <c' es' g'> |                                % 104
  r8 <d' f' as'> r <d' f' as'> |                                % 105
  r8 <c' es' g'> r <c' es' g'> |                                % 106
  r8 <b d' f'>\f r <b d' f'> |                                  % 107
  <g' c''>8 r <d' f'> r |                                       % 108
  r8 <es' g'> r <es' as'> |                                     % 109
  r8 <f' as'> r <d' f'> |                                       % 110
  r8 <es' g'> r <f' as'> |                                      % 111
  r8 <f' des''> r <d' f'> |                                     % 112
  r8 <c' es' g'> r <b d' f'> |                                  % 113
  r8 <es' g'> r <es' g'> |                                      % 114
  r8 <c' f'> r <b f'> |                                         % 115
  <es' g' c''>4 r |                                             % 116

  % R4 (117-136)
  \barNumberCheck #117
  \ritRH
  <es' g' c''>2\fermata |                                       % 136
}

% ---------------------------------------------------------------------
% Basso continuo, bass (cello and harpsichord left hand)
% ---------------------------------------------------------------------

continuoBass = {
  \clef bass
  % R1 (1-20)
  \ritBass
  c8 g, c,4 |                                                   % 20

  % S1 (21-46)
  \barNumberCheck #21
  c8\p es g c' |                                                % 21
  as8 f c f, |                                                  % 22
  g,8. g16 g,8. g16 |                                           % 23
  g,16( a, b, c) d( es f d) |                                   % 24
  c8 es f f, |                                                  % 25
  bes,8 bes es es, |                                            % 26
  as,8 as bes bes, |                                            % 27
  es8 g bes es' |                                               % 28
  d'8 bes es es, |                                              % 29
  as,8 c es16( f g as) |                                        % 30
  bes8 bes, d bes, |                                            % 31
  es16( d es f) g8 es |                                         % 32
  es8 es' as as, |                                              % 33
  d8 d' g g, |                                                  % 34
  c8 c' f f, |                                                  % 35
  bes,8 bes es es, |                                            % 36
  bes,16\< bes bes, bes bes, bes bes, bes |                     % 37
  bes,16 bes bes, bes bes, bes bes, bes |                       % 38
  bes,16 bes bes, bes bes, bes bes, bes |                       % 39
  bes,16 bes bes, bes bes, bes bes, bes |                       % 40
  g,8\f es as, c |                                              % 41
  bes,8 f d as, |                                              % 42
  g8 es c as, |                                                 % 43
  as,8 as bes, bes |                                            % 44
  bes,16( c d bes,) f8 bes, |                                   % 45
  es8 bes, es, r |                                              % 46

  % R2 (47-56): E-flat major
  \barNumberCheck #47
  es8.\f bes,16 es8. g16 |                                      % 47
  bes8. es'16 bes16( as g f) |                                  % 48
  bes,8 f d bes, |                                              % 49
  d8 bes, bes bes, |                                            % 50
  es8 es' as as, |                                              % 51
  bes,8 bes es es, |                                            % 52
  as,8. as16 f8. f,16 |                                         % 53
  bes,16 c d bes, bes, as, g, f, |                              % 54
  es8 c f bes, |                                                % 55
  es8 bes, es,4 |                                               % 56

  % S2 (57-80)
  \barNumberCheck #57
  es8.\p bes,16 es8. g16 |                                      % 57
  bes8. g16 e8. c16 |                                           % 58
  as8. f16 c8. as,16 |                                          % 59
  bes,8 bes c c, |                                              % 60
  f,8.\f c,16 f,8. as,16 |                                      % 61
  c8. f16 c16( bes, as, g,) |                                   % 62
  f16\p as c' as bes, d f d |                                   % 63
  es16 g bes g as, c es c |                                     % 64
  d16 fis a fis g, bes, d bes, |                                % 65
  g,16\mf( a, bes, g,) g8 g, |                                  % 66
  c16( d es c) c'8 c |                                          % 67
  d16( e fis d) a,8 c |                                         % 68
  bes8 g d g, |                                                 % 69
  c8.\f es16 c8. c,16 |                                         % 70
  cis8 e d d, |                                                 % 71
  d8 d' d d, |                                                  % 72
  g,8 d g16( a bes c') |                                        % 73
  d'8 fis d d, |                                                % 74
  g,8 g c' c |                                                  % 75
  d8 fis g g, |                                                 % 76
  g,8 g c c, |                                                  % 77
  c8 a, d d, |                                                  % 78
  d8 d' d d, |                                                  % 79
  g8 d g,4 |                                                    % 80

  % R3 (81-90): G minor
  \barNumberCheck #81
  g,8.\f d,16 g,8. bes,16 |                                     % 81
  d8. g16 d16( c bes, a,) |                                     % 82
  g,8 g c c, |                                                  % 83
  f,8 f bes, d |                                              % 84
  es8 es, a, a |                                                % 85
  d8 d, g, g |                                                  % 86
  es,8. es16 c8. c,16 |                                         % 87
  d16 e fis d d c bes, a, |                                     % 88
  g8 es c d |                                                   % 89
  g8 d g,4 |                                                    % 90

  % S3 (91-116)
  \barNumberCheck #91
  g8\p d b, g, |                                                % 91
  c8 g, c16( d es c) |                                          % 92
  f8 d g g, |                                                  % 93
  c'32( bes as g f es d c) b,8. g,16 |                          % 94
  c8 g, es c |                                                  % 95
  c16 as, f, as, c f c as, |                                    % 96
  bes,8 f d bes, |                                                 % 97
  g16 bes es' bes g es g bes |                                  % 98
  as,8 es c as, |                                                 % 99
  f16 as d' as f d f as |                                       % 100
  g,8 d b, g, |                                                 % 101
  es16 g c' g es c es g |                                       % 102
  g,16\< g g, g g, g g, g |                                     % 103
  g,16 g g, g g, g g, g |                                       % 104
  g,16 g g, g g, g g, g |                                       % 105
  g,16 g g, g g, g g, g |                                       % 106
  g,8\f g g, g |                                                % 107
  c'32( bes as g f es d c) b,8. g,16 |                          % 108
  c16( d es c) as,( bes, c as,) |                               % 109
  d16( es f d) b,( c d b,) |                                    % 110
  c8 c' f f, |                                                  % 111
  f,8 f g, g |                                                  % 112
  g,8 g g, g |                                                  % 113
  c8 es g es |                                                  % 114
  f,8 as, g, g |                                                % 115
  c8 g, c, r |                                                  % 116

  % R4 (117-136)
  \barNumberCheck #117
  \ritBass
  c8 g, c,4\fermata |                                           % 136
}

% ---------------------------------------------------------------------
% Score (\simultaneous { } is LilyPond's long form of double brackets)
% ---------------------------------------------------------------------

ensemble = \simultaneous {
  \new Staff = "oboe" \with {
    instrumentName = "Oboe"
    shortInstrumentName = "Ob."
    midiInstrument = "oboe"
  } \simultaneous { \global \structure \oboe }

  \new PianoStaff \with {
    instrumentName = \markup \center-column { "Basso" "continuo" }
    shortInstrumentName = "B.c."
  } \simultaneous {
    \new Staff = "continuoRH" \with {
      midiInstrument = "harpsichord"
    } \simultaneous { \global \continuoRH }
    \new Staff = "continuoBass" \with {
      midiInstrument = "cello"
    } \simultaneous { \global \continuoBass }
  }
}

\score {
  \keepWithTag #'layout \ensemble
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
      \override RehearsalMark.font-size = #0
    }
  }
}

\score {
  \keepWithTag #'midi \ensemble
  \midi {
    \tempo 4 = 100
  }
}
