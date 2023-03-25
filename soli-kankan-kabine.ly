\version "2.22.1"

\header {
    % https://lilypond.org/doc/v2.22/Documentation/notation/font
    % https://lilypond.org/doc/v2.21/Documentation/notation/creating-titles-headers-and-footers#default-layout-of-bookpart-and-score-titles
    title =  \markup { "Soli" }
    subtitle = \markup { \normal-text "Kankan Kabiné" }
    % subsubtitle = \markup { \normal-text \italic \fontsize #1.5 "Subtitle here" }
    % instrument = "Fula Flute"
    % composer = "Traditional"
    % poet = "Someone"
    % meter = "Meter"
    % arranger = "Arranger"
    % piece = "Accompaniment Phrase"
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
PartPOneVoiceOne =  \relative a'' {
    \clef "treble" 
    \time 12/8 
    \key g \major 
    % \tempo 4.=120 
    a2. r4 c8 ~ c8 [ b8 a8 ] | % 2
    fis4. r8 e8 [ d8 ] d8 [ d8 d8 ( ] c8 ) [ b8 ~ b8 ] | % 3
    g'4. ~ g8 r8 a8 a4 g8 ~ g8 [ fis8 e8 ~ ] | % 4
    e4 g8 fis4 e8 d8 [ c8 c8 ] c8 c4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode {
    \set ignoreMelismata = ##t 
    Eeeh ka --\skip1 bi -- "nɛ" 
    leeh N' -- te mo -- ri -- ya\skip1 saa\skip1
    Eeeh\skip1 kan -- kan ka --\skip1 bi -- "nɛ" 
    \skip1 den ko te mo -- ri -- ya ti -- "ɲɛ"
}


% The score definition
\score {
    \new Staff <<
        \context Staff << 
            %\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
            \context Voice = "PartPOneVoiceOne" {  
                \PartPOneVoiceOne 
            }
            \new Lyrics \lyricsto "PartPOneVoiceOne" {
                \PartPOneVoiceOneLyricsOne 
            }
        >>
    >>
        
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 180 }
}

