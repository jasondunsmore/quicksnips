/info msg/ {
       sub(/\./, "", $6);
       color++;
       if(color < 31 || color > 37) {
               color=31;
       }
       clr[$6] = color;
       sub(/:/, "", $9);
       uniq[$9]=$6;
       fromar[$6]=$13;
       result[$6]=$1" "$2" "$3" NEW MSG \033["color"m"$9"\033[0m FROM: "$13;
}

/starting delivery/ {
       colr = clr[uniq[$11]];
       delivery[$9]=uniq[$11];
       #toar[$11]=$14;
       result[uniq[$11]]=result[uniq[$11]]"\n\t "$1" "$2" "$3" DELIVERY ""\033["colr"m" $9 "\033[0m"" of mid ""\033["colr"m "$11" \033[0m to "$14" from sender: "fromar[uniq[$11]]
}

/[0-9] delivery/ {
       colr = clr[delivery[$8]];
       result[delivery[$8]]=result[delivery[$8]]"\n\t\t"$1" "$2" "$3" ""\033["colr"m"$8"\033[0m "$9" "$10" "$11
}

/end msg/ {
       IGNORECASE = 1;
       if((from && fromar[uniq[$9]] !~ from) || (to && result[uniq[$9]] !~ to)) {
               delete result[uniq[$9]];
       }
       delete fromar[mid];
       delete tomar[mid];
}

END {
       n = asorti(result,dest);
       for (i=1; i<=n; i++) {
               print result[dest[i]];
       }
}
