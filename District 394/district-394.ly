 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Project     : District 394                                   %
 % Owner       : Jason Thomas Gabriel                           %
 % ------------------------------------------------------------ %
 % Start date  : 27-04-2023                                     %
 % Last edit   : 03-05-2023                                     %
 % ------------------------------------------------------------ %
 % License     : Attribution-NonCommercial-ShareAlike           %
 %               4.0 International                              %
 %                                                              %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%% Created using Engraving Quickstart v4.0 %%%%%%%%%%%%
 %% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.24.1"

% Scores cannot be empty (when using partCombine), this variable is a spacer for all unused parts.
% For quick testing of your setup, you could replace the spacer with some music in curly brackets.
no_music = \skip 4

% A short print reference for yourself
% Only visible in print, when "status" is set to \draftversion or \publishedversion in headers
fileversionreferencetracker = "ref: publication #2"

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"

% Propriatary includes
  % Headers
    \include "resources/headerdefinitions.ily"
  
  % Paper size and margins 
    \include "resources/papersize_margins.ily"
   
  % Fonts
    % Staff size needs to be set, before changing the font
    % LilyPond Standard staff size = 20. See table with recommendations for various sizes: http://lilypond.org/doc/v2.24/Documentation/notation/setting-the-staff-size
    % That said, size 15 is a nice starting point
      #(set-global-staff-size 8.8)
 
    % House fonts (disable when not available on your machine)
      \include "resources/housefonts.ily"

% Engraving includes
  % Notation rules
    \include "resources/notationrules.ily"

% Music includes 
  % Functions and variables
    \include "music/functions_variables.ily" 

  % Music
    % Choose between starting with an empty, nameless part (default) or the instrument library
      % \include "music/bundle_music_default_part.ily"
      \include "music/bundle_music_instrument_library.ily"
 
% Books
  % Main book (and optional cover page)
    \book {
      % Optional cover page (uncomment if desired)
        \include "resources/coverpagebookpart3.ily"
      % Main book
        \include "music/mainbookpart.ily"
    }

  % Optional books for individual parts - when using the Instrument Library.
    \include "music/parts/instrument_library/resources/books/bundle_books_instrument_library.ily"