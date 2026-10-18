\version "2.24.0"
\language "nederlands"

% Herr Gott, dich loben alle wir -- chorale prelude for organ
% Original composition in the manner of Johann Sebastian Bach.
%
% The chorale is Paul Eber's Michaelmas hymn, sung to the Genevan
% melody (Psalm 134, 1551) that English speakers know as the Old Hundredth.
% Bach used the same hymn and melody for his Michaelmas cantata BWV 130.
%
% 27 measures, common time, quarter = 66 (about 1 minute 40 seconds).
% Four voices a 1 Clav. e Pedale: the unadorned cantus firmus in the
% soprano (half notes), alto and tenor in the manuals, pedal bass.
% Written without double angle brackets: \simultaneous { } is used instead.
% All pitches are absolute (c' = middle C).
%
% FORM (Pachelbel/Bach type with pre-imitation)
%   1-4.2   Introduction. The head of line 1 in diminution: alto (1),
%           tenor answer on G (2), pedal (3); the "angel" figure
%           (an eighth and two sixteenths) runs through the manuals.
%   4.3-8   Line 1. I-vi-iii-IV descent, cadence in C.
%   8-10.2  Interlude 1. Tenor anticipates line 2 over an E7 colour,
%           then the pedal takes it: I6 - V6/4 - I - IV - V.
%   10.3-14 Line 2. Descending sixth-chords, cadential 6/4, half cadence.
%   14-16.2 Interlude 2. Line 3 in the tenor (on G) and pedal (on C).
%   16.3-20 Line 3. Cadence in A minor.
%   20-22.2 Interlude 3. Line 4 in the pedal (G E C D F), rising alto run.
%   22.3-26 Line 4. Walking bass E-D-C-B-A-G-F, ii7 - cadential 6/4 - V7 - I.
%   26-27   Coda over a tonic pedal with the flat seventh (C7 - F/C - C).
%
% REGISTRATION (suggestion)
%   Manual: Principal 8', Octave 4' (or Gedackt 8', Flute 4').
%   Pedal: Subbass 16', Octave 8' (add Trumpet 8' for a festive cantus).
%   The final trill is written out in the MIDI only.

\header {
  title = "Herr Gott, dich loben alle wir"
  subtitle = "Chorale prelude for organ"
  subsubtitle = "a 1 Clav. e Pedale"
  composer = "Original composition"
  poet = "In the manner of J. S. Bach"
  meter = "Melody: Genevan Psalter, 1551"
  tagline = ##f
}

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 18\mm
  short-indent = 8\mm
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #16
  print-page-number = ##t
}

global = {
  \key c \major
  \time 4/4
}

structure = {
  \tempo "Andante" 4 = 66
  s1*25
  \tag #'midi { \tempo 4 = 58 }
  s1
  \tag #'midi { \tempo 4 = 44 }
  s1
  \bar "|."
}

soprano = \absolute {
  \voiceOne
  % Introduction: pre-imitation of line 1 (alto, tenor, pedal)
  r1 |   % 1
  r1 |   % 2
  r1 |   % 3
  % Line 1 in the soprano from beat 3
  r2 c''2 |   % 4
  \barNumberCheck #5 c''2 b'2 |   % 5
  a'2 g'2 |   % 6
  c''2 d''2 |   % 7
  % Interlude 1: line 2 foreshadowed (tenor, then pedal)
  e''1 |   % 8
  \barNumberCheck #9 r1 |   % 9
  % Line 2 (half cadence on G)
  r2 e''2 |   % 10
  e''2 e''2 |   % 11
  d''2 c''2 |   % 12
  \barNumberCheck #13 f''2 e''2 |   % 13
  % Interlude 2: line 3 foreshadowed (tenor, then pedal)
  d''1 |   % 14
  r1 |   % 15
  % Line 3 (cadence in A minor)
  r2 c''2 |   % 16
  \barNumberCheck #17 d''2 e''2 |   % 17
  d''2 c''2 |   % 18
  a'2 b'2 |   % 19
  % Interlude 3: line 4 foreshadowed in the pedal
  c''1 |   % 20
  \barNumberCheck #21 r1 |   % 21
  % Line 4 over a descending walking bass
  r2 g''2 |   % 22
  e''2 c''2 |   % 23
  d''2 f''2 |   % 24
  \barNumberCheck #25 e''2 \tag #'layout { d''2\prall } \tag #'midi { e''32 d'' e'' d''~ d''4. } |   % 25
  % Coda over a tonic pedal point
  c''1~ |   % 26
  c''1\fermata |   % 27
}

alto = \absolute {
  \voiceTwo
  c''4 c''8 b' a'4 g' |   % 1
  e''8 d''16 c'' b'8 c''16 d'' c''8 b'16 a' b'8 c''16 d'' |   % 2
  e''8 f''16 e'' c''8 d''16 e'' c''8 b'16 a' b'8 a'16 b' |   % 3
  c''8 d''16 c'' b'4 g'8 a'16 g' g'8 f' |   % 4
  \barNumberCheck #5 e'8 f'16 g' a'4 g'4 e'4 |   % 5
  f'8 e'16 f' f'8 e'16 d' e'4 e'8 f' |   % 6
  a'8 g'16 a' a'4 b'4 b'8 a'16 b' |   % 7
  c''8 d''16 c'' c''8 b'16 a' b'4 c''4 |   % 8
  \barNumberCheck #9 g'8 a'16 b' c''8 d''16 c'' b'8 a'16 b' c''8 b'16 a' |   % 9
  a'8 b'16 c'' b'4 c''4 c''8 b' |   % 10
  a'8 b' c''4 b'4 g'8 b' |   % 11
  a'4 a'4 g'8 a'16 g' g'4 |   % 12
  \barNumberCheck #13 a'4 a'8 b' c''4 c''4 |   % 13
  b'8 c''16 b' a'4 c''4 b'8 c''16 d'' |   % 14
  e''8 d''16 c'' b'8 c'' d''8 c''16 d'' e''8 d''16 c'' |   % 15
  d''8 c''16 b' gis'4 a'4 a'8 g'16 a' |   % 16
  \barNumberCheck #17 b'4 b'8 a'16 b' c''4 c''8 d''16 c'' |   % 17
  b'4 b'8 c''16 b' a'4 a'8 g' |   % 18
  f'8 e'16 f' f'4 e'4 e'4 |   % 19
  e'8 f'16 g' a'8 g'16 a' a'4 a'4 |   % 20
  \barNumberCheck #21 b'8 c''16 d'' e''8 f''16 e'' d''8 c''16 b' a'8 b' |   % 21
  d''8 e''16 d'' b'4 c''4 b'8 a'16 b' |   % 22
  c''8 b'16 a' g'8 f'16 g' a'4 a'8 g' |   % 23
  a'8 g'16 f' f'8 g'16 a' a'4 a'4 |   % 24
  \barNumberCheck #25 g'4 g'8 a'16 g' f'4 f'8 e'16 d' |   % 25
  e'4 e'4 f'4 f'8 d' |   % 26
  e'1\fermata |   % 27
}

tenor = \absolute {
  \clef treble r1 |   % 1
  g'4 g'8 f' e'4 d' |   % 2
  g'4 g'4 e'8 f' g'4 |   % 3
  a'4 g'4 e'8 d' c'8 d' |   % 4
  \barNumberCheck #5 c'8 d' e'4 e'8 d' b4 |   % 5
  c'8 a c'4 c'8 g c'8 d' |   % 6
  e'4 f'8 e' d'8 e' f'4 |   % 7
  e'4 e'8 e' d'4 c'4 |   % 8
  \barNumberCheck #9 c'4 e'8 g' g'4 e'4 |   % 9
  f'4 d'4 e'8 f'16 g' g'8 f'16 e' |   % 10
  e'8 c'16 d' e'4 e'8 d'16 c' b8 c' |   % 11
  d'8 e' f'4 e'4 e'8 f'16 e' |   % 12
  \barNumberCheck #13 d'8 e'16 f' f'8 e'16 d' e'8 d'16 c' c'4 |   % 13
  \clef bass g4 a8 b a4 g4 |   % 14
  g4 g4 a8 f a4 |   % 15
  a4 b4 \clef treble c'8 d' e'8 f'16 e' |   % 16
  \barNumberCheck #17 d'4 d'8 e'16 d' c'8 e' g'4 |   % 17
  g'4 g'8 f' e'8 d'16 e' e'8 d' |   % 18
  c'8 b a4 gis4 gis4 |   % 19
  a8 c' e'4 c'8 b16 c' d'4 |   % 20
  \barNumberCheck #21 d'8 b c'8 e' f'4 d'4 |   % 21
  b8 d' f'4 e'8 f' g'4 |   % 22
  g'8 f' e'8 d' e'8 c'16 d' e'8 f'16 e' |   % 23
  d'4 a8 b c'8 e' d'8 c' |   % 24
  \barNumberCheck #25 c'4 c'4 b4 b4 |   % 25
  \clef bass c'4 bes4 a4 a8 g |   % 26
  g1\fermata |   % 27
}

pedal = \absolute {
  \clef bass
  r1 |   % 1
  r1 |   % 2
  c4 c8 b, a,4 g, |   % 3
  f,4 g, c4 e4 |   % 4
  \barNumberCheck #5 a,4 c4 e,4 g,4 |   % 5
  f,4 a,4 e,4 c4 |   % 6
  a,4 d4 g4 g,4 |   % 7
  c4 a,4 gis,4 a,4 |   % 8
  \barNumberCheck #9 e4 e8 e d4 c4 |   % 9
  f,4 g,4 c4 e4 |   % 10
  a,4 c4 g,4 e,4 |   % 11
  f,4 d,4 e,4 g,4 |   % 12
  \barNumberCheck #13 d,4 f,4 g,2 |   % 13
  g,4 d,4 fis,4 g,4 |   % 14
  c4 d8 e d4 c4 |   % 15
  f,4 e,4 a,4 c4 |   % 16
  \barNumberCheck #17 b,4 g,4 c4 e4 |   % 17
  b,4 g,4 a,4 c4 |   % 18
  f,4 a,4 e,4 e4 |   % 19
  a,4 c4 f,4 fis,4 |   % 20
  \barNumberCheck #21 g,4 e,8 c, d,4 f,4 |   % 21
  g,4 g4 e4 d4 |   % 22
  c4 b,4 a,4 g,4 |   % 23
  f,4 f4 d4 d,4 |   % 24
  \barNumberCheck #25 g,2 g,2 |   % 25
  c,1~ |   % 26
  c,1\fermata |   % 27
}

% ---------------------------------------------------------------------
% Score (\simultaneous { } is LilyPond's long form of double brackets)
% ---------------------------------------------------------------------

organ = \simultaneous {
  \new PianoStaff \with {
    instrumentName = "Manual"
    shortInstrumentName = "Man."
  } \simultaneous {
    \new Staff = "rh" \with {
      midiInstrument = "church organ"
    } \simultaneous {
      \global
      \new Voice = "soprano" \simultaneous { \structure \soprano }
      \new Voice = "alto" \alto
    }
    \new Staff = "lh" \with {
      midiInstrument = "church organ"
    } \simultaneous {
      \global
      \new Voice = "tenor" \tenor
    }
  }
  \new Staff = "pedal" \with {
    instrumentName = "Pedal"
    shortInstrumentName = "Ped."
    midiInstrument = "church organ"
  } \simultaneous {
    \global
    \new Voice = "pedal" \pedal
  }
}

\score {
  \keepWithTag #'layout \organ
  \layout {
    \context {
      \Score
      \override MetronomeMark.font-size = #0
    }
  }
}

% MIDI: one track per voice (soprano, alto, tenor, pedal).
\score {
  \keepWithTag #'midi \organ
  \midi {
    \tempo 4 = 66
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
