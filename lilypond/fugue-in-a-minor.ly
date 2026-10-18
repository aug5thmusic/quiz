\version "2.24.0"
\language "nederlands"

% Fuga a 3 voci in A minor -- for harpsichord
% Original composition in the manner of Johann Sebastian Bach
% (compare the three-part fugues of the Well-Tempered Clavier).
%
% 28 measures, common time, quarter = 69 (about 1 minute 40 seconds).
% Written without double angle brackets: \simultaneous { } is used instead.
% All pitches are absolute (c' = middle C).
%
% SUBJECT (alto, m. 1-3.1): a broken tonic triad in eighths, a turn on the
%   leading tone, then a run of sixteenths with a leap of a sixth to F.
% ANSWER: tonal (the opening A-E becomes E-A), in E minor.
% COUNTERSUBJECT: sixteenths against the subject's eighths, then a
%   syncopated eighth-note line against its sixteenths; written so it
%   works above or below the subject (invertible at the octave).
%
% FORM
%   1-2     Exposition: subject in the alto
%   3-4     answer in the soprano (E minor), countersubject in the alto
%   5-6     subject in the bass, countersubject in the soprano
%   7-8     Episode 1: descending circle of fifths, cadence in C major
%   9-10    Subject in the soprano in C major, countersubject in the bass
%   11-12   Episode 2: rising bass C-A-B flat-C sharp, to D minor
%   13-14   Subject in the alto in D minor, countersubject in the bass
%   15-17   Episode 3: chain of suspensions in the soprano over a circle
%           of fifths, half cadence on E
%   18-20   Stretto: subject in the alto, the bass enters one bar later
%   21      Episode 4
%   22-23   Subject in the soprano over a dominant pedal (E)
%   24-25   Last entry: subject in the bass, countersubject in the soprano
%   26-28   Coda: 4-3 suspension, deceptive cadence (F major), iio6 -
%           cadential 6/4 - V with trill, Picardy third (A major)
%
% The alto moves to the lower staff in mm. 18-23.

\header {
  title = "Fuga a 3 voci"
  subtitle = "in A minor, for harpsichord"
  composer = "Original composition"
  poet = "In the manner of J. S. Bach"
  tagline = ##f
}

#(set-global-staff-size 19)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 13\mm
  indent = 10\mm
  ragged-last-bottom = ##t
  system-system-spacing.basic-distance = #14
  print-page-number = ##t
}

global = {
  \key a \minor
  \time 4/4
}

structure = {
  \tempo "Allegro moderato" 4 = 69
  s1*26
  \tag #'midi { \tempo 4 = 63 }
  s2 \tag #'midi { \tempo 4 = 54 } s2
  s1
  \bar "|."
}

soprano = \absolute {
  \voiceOne
  R1 |   % 1
  R1 |   % 2
  r8 e''8 a''8 g''8 e''8 dis''16 e'' fis''8 b'8 |   % 3
  g''16 a'' b'' a'' g'' fis'' e'' dis'' e''8 c'''8 b''16 a'' g'' fis'' |   % 4
  \barNumberCheck #5 g''8 a'16 b' c''16 d'' e'' c'' c''16 e'' d'' c'' b'16 a' gis'8 |   % 5
  a'8 c''8 e''8 f''8~ f''8 a''8 gis''8 e''8 |   % 6
  e''16 d'' c'' e'' a''16 g'' f'' a'' d''16 c'' b' d'' g''16 f'' e'' g'' |   % 7
  c''16 b' a' c'' f''16 e'' d'' f'' b'16 a' g' b' d''8 b'8 |   % 8
  \barNumberCheck #9 r8 c''8 g''8 e''8 c''8 b'16 c'' d''8 g'8 |   % 9
  e''16 f'' g'' f'' e'' d'' c'' b' c''8 a''8 g''16 f'' e'' d'' |   % 10
  e''8 g''16 f'' e''8 d''16 c'' f''8 a''16 g'' f''8 e''16 d'' |   % 11
  g''8 bes''16 a'' g''8 f''16 e'' e''8 g''16 f'' e''8 d''16 cis'' |   % 12
  \barNumberCheck #13 d''8 a''8 f''4~ f''8 e''16 f'' g''8 e''8 |   % 13
  f''4 d''8 d''8 g''8 f''16 e'' e''8 g''8 |   % 14
  f''2~ f''4 e''4~ |   % 15
  e''2~ e''4 d''4~ |   % 16
  \barNumberCheck #17 d''2~ d''4 b'4 |   % 17
  c''8 a'16 b' c''16 d'' e'' c'' c''16 e'' d'' c'' b'16 a' gis'8 |   % 18
  a'8 c''8 e''8 f''8~ f''4 gis''8 e''8 |   % 19
  a''8 e''8 e''4 c''8 d''8 b'8 e''8 |   % 20
  \barNumberCheck #21 c''16 d'' e'' c'' a'8 f''8 d''16 e'' f'' d'' b'8 gis''8 |   % 21
  r8 a'8 e''8 c''8 a'8 gis'16 a' b'8 e'8 |   % 22
  c''16 d'' e'' d'' c'' b' a' gis' a'8 f''8 e''16 d'' c'' b' |   % 23
  c''8 a'16 b' c''16 d'' e'' c'' c''16 e'' d'' c'' b'16 a' gis'8 |   % 24
  \barNumberCheck #25 a'8 c''8 e''8 f''8~ f''8 a''8 gis''8 e''8 |   % 25
  e''16 d'' c'' e'' f''8 a''8~ a''4 gis''4 |   % 26
  a''4 f''8 d''8 c''4 b'4\prall |   % 27
  cis''1\fermata |   % 28
}
alto = \absolute {
  \voiceTwo
  r8 a'8 e''8 c''8 a'8 gis'16 a' b'8 e'8 |   % 1
  c''16 d'' e'' d'' c'' b' a' gis' a'8 f''8 e''16 d'' c'' b' |   % 2
  c''8 g'16 a' c''16 d'' e'' c'' g'16 b' a' g' fis'16 e' dis'8 |   % 3
  e'8 g'8 b'8 c''8~ c''8 e''8 dis''8 b'8 |   % 4
  \barNumberCheck #5 b'8 e'8 a'8 g'8 a'8 b'8 gis'8 e'8 |   % 5
  e'8 a'8 a'8 d''8 c''8 d''8 b'8 a'8 |   % 6
  c''8 e'8 d'8 f'8 g'2 |   % 7
  f'4 a'8 f'8 d'4 f'4 |   % 8
  \barNumberCheck #9 e'8 g'8 c''4 g'4. f'8 |   % 9
  e'8 c''8 c''8 a'8 f'4 d'8 e'8 |   % 10
  c''4 g'4 c''4 a'4 |   % 11
  d''4 bes'4 g'2 |   % 12
  \barNumberCheck #13 r8 d'8 a'8 f'8 d'8 cis'16 d' e'8 a8 |   % 13
  f'16 g' a' g' f' e' d' cis' d'8 bes'8 a'16 g' f' e' |   % 14
  f'8 a'16 g' f' e' d' f' g'8 b'16 a' g' f' e' g' |   % 15
  e'8 g'16 f' e' d' c' e' f'8 a'16 g' f' e' d' f' |   % 16
  \barNumberCheck #17 d'8 f'16 e' d' c' b d' e'8 gis'16 fis' e' d' b e' |   % 17
  \change Staff = "lh" \voiceOne r8 a8 e'8 c'8 a8 gis16 a b8 e8 |   % 18
  c'16 d' e' d' c' b a gis a8 f'8 e'16 d' c' b |   % 19
  c'2 a8 a8 gis4 |   % 20
  \barNumberCheck #21 a8 c'8 f'8 d'8 f'8 d'8 d'4 |   % 21
  c'16 b a b c' d' e' d' a8 e'8 d'16 c' b a |   % 22
  a8 c'8 a8 e'8 d'4 b4 |   % 23
  \change Staff = "rh" \voiceTwo a8 e'8 a'4 a'8 b'8 gis'8 e'8 |   % 24
  \barNumberCheck #25 e'8 a'8 c''8 d''8 c''8 d''8 b'8 gis'8 |   % 25
  a'4 a'8 d''8 b'4 d''4 |   % 26
  c''4 b'4 a'4 gis'4 |   % 27
  <e' a'>1 |   % 28
}
bass = \absolute {
  \clef bass
  R1 |   % 1
  R1 |   % 2
  R1 |   % 3
  R1 |   % 4
  \barNumberCheck #5 r8 a,8 e8 c8 a,8 gis,16 a, b,8 e,8 |   % 5
  c16 d e d c b, a, gis, a,8 f8 e16 d c b, |   % 6
  c8 a,8 f8 d8 b,8 g,8 e8 c8 |   % 7
  a8 f8 d8 b,8 g,8 a,8 b,8 g,8 |   % 8
  \barNumberCheck #9 c,8 c16 d e16 f g e e16 g f e d16 c b,8 |   % 9
  c8 e8 g8 a8~ a8 c'8 b8 g8 |   % 10
  c8 e8 g8 c8 a,8 c8 f8 a,8 |   % 11
  bes,8 d8 g8 bes,8 cis8 e8 a8 a,8 |   % 12
  \barNumberCheck #13 d,8 d16 e f16 g a f f16 a g f e16 d cis8 |   % 13
  d8 f8 a8 bes8~ bes8 d'8 cis'8 a8 |   % 14
  d4 d,4 g,4 g4 |   % 15
  c4 c,4 f,4 f4 |   % 16
  \barNumberCheck #17 b,4 d4 gis,4 e,4 |   % 17
  \voiceTwo a,4 r4 r2 |   % 18
  r8 a,8 e8 c8 a,8 gis,16 a, b,8 e,8 |   % 19
  c16 d e d c b, a, gis, a,8 f8 e16 d c b, |   % 20
  \barNumberCheck #21 c8 a,8 d8 f8 b,8 d8 e8 e,8 |   % 21
  e,1~ |   % 22
  e,1 |   % 23
  \oneVoice r8 a,8 e8 c8 a,8 gis,16 a, b,8 e,8 |   % 24
  \barNumberCheck #25 c16 d e d c b, a, gis, a,8 f8 e16 d c b, |   % 25
  c8 a,8 d8 f8 e4 e,4 |   % 26
  f,4 d4 e4 e,4 |   % 27
  a,,1\fermata |   % 28
}
% ---------------------------------------------------------------------
% Score (\simultaneous { } is LilyPond's long form of double brackets)
% ---------------------------------------------------------------------

harpsichord = \new PianoStaff \with {
  instrumentName = "Cembalo"
} \simultaneous {
  \new Staff = "rh" \with {
    midiInstrument = "harpsichord"
  } \simultaneous {
    \global
    \new Voice = "soprano" \simultaneous { \structure \soprano }
    \new Voice = "alto" \alto
  }
  \new Staff = "lh" \with {
    midiInstrument = "harpsichord"
  } \simultaneous {
    \global
    \new Voice = "bass" \bass
  }
}

\score {
  \keepWithTag #'layout \harpsichord
  \layout {
    \context {
      \Score
      \override MetronomeMark.font-size = #0
    }
  }
}

% MIDI: one track per voice (soprano, alto, bass).
\score {
  \keepWithTag #'midi \harpsichord
  \midi {
    \tempo 4 = 69
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
