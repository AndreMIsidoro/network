#convert shadow and passwd files to something that john can read:

./run/unshadow passwd shadow > john.txt

#after just use john with the file
./run/john john.txt