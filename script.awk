BEGIN {
	FS=":";
	print "<?xml version='1.0' encoding='UTF-8' ?>"
	print "<?xml-stylesheet type=\"text/xsl\" href=\"/style.xsl\" ?>"

	
}

function tag_sanitize(t) {
	sub(/;/, " ", t);
	gsub(/"/, "'", t);
	t=gensub(/=(.+);*/, "=\"\\1\" ", "g", t); # ="match1"
	gsub(/\//, "-", t);
	# gsub(/\s+/, "", t);
	gsub(/@/, "-", t);
	return t;
}
function end_sanitize(e) {
	return gensub(/(.*);.*/, "\\1", "g", e);
}
/BEGIN:/ {
	t=tolower($2);
	t=tag_sanitize(t);
	# printf "<%s>", t;
	# for (i = 2; i <= NF; i++)
	# 	print $i;
	# printf "</%s>\n", t;
	printf "<%s>\n", t;
	next;
}



/^END:/ {
	t=tolower($2);
	t=end_sanitize(t);
	printf "</%s>\n", t;
	next;
}

{
	t=tolower($1);
	t=tag_sanitize(t);
	printf "<%s>\n<![CDATA[\n", t;
	for (i = 2; i <= NF; i++)
		print $i;
	# e=end_sanitize(t);
	split($1, a, ";");
	printf "\n]]>\n</%s>\n", tolower(a[1]);
	next;
}



