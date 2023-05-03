%%%% ENGRAVING QUICKSTART
%%%% music/headers.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

statusline       = \publishedversion
productiontitle = "A Cautionary Tale"
% bigsongnumber   = \markup \bigsongnumbermarkup "1"
% revision        = "REV#1 DD-MM-YY - description of changes"
% cue             = \markup \cueheadermarkup ""
% dedication      = ""
title           = "District 394"
% subtitle        = ""
% subsubtitle     = ""
composer        = "Jason Thomas Gabriel"
% arranger        = ""
% poet            = ""
% meter           = ""
% piece           = ""
% opus            = ""

tagline       = \markup {
                      \center-column {
                        \line {\upright "- MMDCCLXXV -"} %Ab urbe condita
                        \with-url "https://soundcloud.com/jasonthomasgabriel/district-394"
                        \line {\italic \smaller \right-align \sans \with-color #(rgb-color 0.251 0.251 0.251) "click here to listen to this composition" \with-color #(rgb-color 0.749 0.749 0.749) \italic \sans "(opens link to SoundCloud)"}
                      }
                    }

copyright 	= \markup { 
                     \with-url #"http://creativecommons.org/licenses/by-nc-sa/4.0/"
                     \line {
                       "District 394 © 2022 by Jason Thomas Gabriel Everts is licensed under CC BY-NC-SA 4.0. To view a copy of this license, click here." 
                     }
                   }

maintainer      = "Jason Thomas Gabriel"
maintainerEmail = "jasonthomasgabriel@gmail.com"