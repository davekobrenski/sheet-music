\version "2.22.1"

\header {
    % https://lilypond.org/doc/v2.22/Documentation/notation/font
    % https://lilypond.org/doc/v2.21/Documentation/notation/creating-titles-headers-and-footers#default-layout-of-bookpart-and-score-titles
    title =  \markup { "Sorsornet" }
    subtitle = \markup { \normal-text "Accompaniment Phrases" }
    subsubtitle = \markup { \normal-text \italic \fontsize #1.5 "Subtitle here" }
    instrument = "Fula Flute"
    composer = "Traditional"
    poet = "Someone"
    meter = "Meter"
    arranger = "Arranger"
    %piece = "Accompaniment Phrase"
    % footer tagline. use ##f to disable, or put text
    tagline = ##f 
    encodingsoftware = Flat
    encodingdate =  "2022-06-11"
    source = "https://flat.io/score/62a3c4e46fce000013603d7c-sorsornet-flute"
}

#(set-global-staff-size 20.0)
#(set-default-paper-size "letter")
\paper {
    % https://lilypond.org/doc/v2.22/Documentation/notation/flexible-vertical-spacing-paper-variables
    %score-markup-spacing.padding = #10
    markup-system-spacing.padding = #3
    markup-markup-spacing.padding = #8

    top-margin = 1.0\cm
    bottom-margin = 0.68\cm
    left-margin = 1.0\cm
    right-margin = 1.0\cm
    between-system-space = 2.02\cm
    indent = 0\cm
    short-indent = 0\cm
    top-system-spacing = #10
    %ragged-bottom = ##t
    %ragged-last-bottom = ##t
}

\layout {
    ragged-right = ##f
    ragged-last = ##f
    \context { \Score
        autoBeaming = ##f
    }
}

accompaniment =  \relative e'' {
    \clef "treble" 
    \numericTimeSignature \time 12/8 
    \key g \major %\tempo 4=140 
    
    e8 [ e8 e8 ] r8 g4 b,8 d4 b8 g'4 % \bar "|."
}

% The score definition
\score {
    \header {
        piece = "Accompaniment"
        % opus = "Opus"
    }
    \new Staff <<
        %\set Staff.instrumentName = "Flute"
        %\set Staff.shortInstrumentName = "Fl."
        %\mark \markup { \small "Accompaniment" }
        \new Voice = "accompaniment" { \accompaniment }
    >>
        
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 140 }
}

\score {
    \header {
        piece = "Accompaniment"
        % opus = "Opus"
    }
    \new Staff <<
        %\set Staff.instrumentName = "Flute"
        %\set Staff.shortInstrumentName = "Fl."
        %\mark \markup { \small "Accompaniment" }
        \new Voice = "accompaniment" { \accompaniment }
    >>
        
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 140 }
}


\markup {
    %\override #'(word-space . 0)
    %\override #'(line-width . 0)
    %\line { \justify-string # "Here is some other text" }
}

