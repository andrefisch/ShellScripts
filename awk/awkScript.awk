BEGIN { FS=","; print "---- Header: ----" }
/Manager/ { print $2 }
END { print "---- Footer: ----" }
