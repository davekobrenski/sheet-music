\version "2.22.1"

\header {
    title =  "Sorsornet Flute"
    encodingsoftware =  Flat
    encodingdate =  "2022-06-11"
    source = 
    "https://flat.io/score/62a3c4e46fce000013603d7c-sorsornet-flute"
    }

#(set-global-staff-size 20.0)
\paper {
    
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 0.68\cm
    bottom-margin = 0.68\cm
    left-margin = 0.68\cm
    right-margin = 0.68\cm
    between-system-space = 2.02\cm
    indent = 1.6607692307692308\cm
    short-indent = 0.9964615384615385\cm
    ragged-right = ##f
    ragged-last = ##f
}

\layout {
    \context { \Score
        autoBeaming = ##f
    }
}
accompaniment =  \relative e'' {
    \clef "treble" 
    \numericTimeSignature \time 12/8 
    \key g \major 
    \tempo 4=140 
    e8 [ e8 e8 ] r8 g4 b,8 d4 b8 g'4 \bar "|."
}

% The score definition
\score {
    <<
        \new Staff
        <<
            \set Staff.instrumentName = "Flute"
            \set Staff.shortInstrumentName = "Fl."
            
            \context Staff << 
                \context Voice = "accompaniment" {  \accompaniment }
            >>
        >>
        
    >>

    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 140 }
}

