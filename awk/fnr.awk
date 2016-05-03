BEGIN { FS="," }

{ printf "FILENAME=%s NR=%s FNR=%s\n", FILENAME, NR, FNR; }

END { printf "END Block: NR=%s FNR=%s\n", NR, FNR } 
