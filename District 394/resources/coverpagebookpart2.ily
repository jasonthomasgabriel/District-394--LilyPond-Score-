%%%% ENGRAVING QUICKSTART
%%%% resources/coverpagebookpart.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

\bookpart {
    \header {
        bookdedication      = "for Vlad"
        booktitle           = "District 394"
        booksubtitle        = "subtitle"
        booksubsubtitle     = "A Cautionary Tale"
        bookrevision        = "#1"
        bookpoet            = "Poet"
        bookinstrument      = "Full Score"
        bookcomposer        = "Jason Thomas Gabriel"
        bookmeter           = "Meter"
        bookarranger        = "Arranger"
    }

    \markup{
        % \scale #'(1.78 . 1.78) % Scale-up after size reduction by set-global-staff size, as there was no other way to ONLY scale the other bookpart - without interesting problems, that is.
        \with-dimensions #'(0 . 0) #'(100 . 100)
        \postscript #"
        4 -10 translate

        %Circle - clipping mask
        newpath     
        50 50 40 0 360 arc
        gsave
        .95 1 1 setrgbcolor
        fill
        grestore
        gsave
        clip

            %Sun
            newpath
            41 73 10 0 360 arc
            gsave
            .98 .85 .68 setrgbcolor
            fill
            grestore
            %0 setlinewidth
            %stroke

            %Mountain[3]
            newpath
            0.8 setlinewidth
            50 48 moveto
            55 50 55 50 60 50 curveto
            72 50 100 40 90 38 curveto
            100 0 lineto
            0 0 lineto
            closepath
            gsave
            .80 .86 .65 setrgbcolor
            fill
            grestore
            stroke

            %Mountain[2]
            newpath
            1.2 setlinewidth
            10 56 moveto
            20 61 20 61 30 60 curveto
            40 58 48 50 52 46 curveto
            60 40 75 35 88 38 curveto
            100 0 lineto
            0 0 lineto
            closepath
            gsave
            .56 .77 .60 setrgbcolor
            fill
            grestore
            stroke

            %Mountain[1]
            newpath
            1.6 setlinewidth
            10 40 moveto
            23 53 28 50 44 43 curveto
            53 40 78 34 90 43 curveto
            100 0 lineto
            0 0 lineto
            closepath
            gsave
            .84 .91 .75 setrgbcolor
            fill
            grestore
            stroke

            %Water
            newpath
            2 setlinewidth
            20 20 moveto
            30 20 42 20 40 25 curveto
            35 30 45 34 50 30 curveto
            40 35 85 37 90 35 curveto
            100 0 lineto
            0 0 lineto
            closepath
            gsave
            0.59 0.82 0.87 setrgbcolor
            fill
            grestore
            stroke

        %Circle - unclip
        grestore
        2 setlinewidth
        stroke
        "
    }

}