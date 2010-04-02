#!/bin/sh

INKSCAPE=inkscape

for svgfile in $( find . -name '*.svg'); do
  $INKSCAPE -A $(echo $svgfile | sed -r 's/\.svg$/\.pdf/g') $svgfile
done
