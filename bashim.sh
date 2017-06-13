#!/bin/bash
cowsay "$(curl -s http://bash.im/quote/437946 | grep -a '<div class="text">' | head -n1 | iconv -f WINDOWS-1251 -t UTF-8 | sed -e 's/^.*\"text\">//g' -e 's/>- />/g' -e 's/^- //g' -e 's/<\/div>//g' -e 's/&gt;/>/g' -e 's/&lt;/</g' -e 's/&quot;/"/g' | awk '{gsub(/<br[ \/]*>/,"\n");print}')"
