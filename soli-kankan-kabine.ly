\version "2.22.1"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    title =  "Soli Kankan Kabine"
    encodingsoftware =  Flat
    encodingdate =  "2023-03-25"
    source = 
    "https://flat.io/score/641f314ce1e45fad505ed861-soli-kankan-kabine"
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
    short-indent = 1.3286153846153848\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a'' {
    \clef "treble" \time 12/8 \key g \major \stopStaff \override
    Staff.StaffSymbol.line-count = #5 \startStaff | % 1
    \tempo 4.=120 a2. r4 c8 ~ c8 [ b8 a8 ] | % 2
    fis4. r8 e8 [ d8 ] d8 [ d8 d8 ( ] c8 ) [ b8 ~ b8 ] | % 3
    g'4. ~ g8 r8 a8 a4 g8 ~ g8 [ fis8 e8 ~ ] | % 4
    e4 g8 fis4 e8 d8 [ c8 c8 ] c8 c4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata = ##t Eeeh
    ka --\skip1 bi -- "nɛ" leeh N -- te mo -- ri -- ya\skip1 saa\skip1
    Eeeh\skip1 kan -- kan ka --\skip1 bi -- "nɛ" \skip1 den ko te mo --
    ri -- ya ti -- "ɲɛ"
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Flute"
            \set Staff.shortInstrumentName = "Flt."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 180 }
    }

