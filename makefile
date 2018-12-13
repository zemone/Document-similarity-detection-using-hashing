CC = g++
CFLAGS = -std=c++11

compjac: CompararDocumentsJaccard.cc jaccard.o kshingles.o
	$(CC) $(CFLAGS) -o compjac CompararDocumentsJaccard.cc jaccard.o kshingles.o
permutacions: permutacions.cc
	$(CC) $(CFLAGS) -o permutacions permutacions.cc
jocProvesJaccard: jocProvesJaccard.cc jaccard.o kshingles.o
	$(CC) $(CFLAGS) -o  jocProvesJaccard jocProvesJaccard.cc jaccard.o kshingles.o
jocProvesJaccApprox: jocProvesJaccApprox.cc jaccardaprox.o kshingles.o ModularHash.o MultiplicativeHash.o MurmurHash3.o
	$(CC) $(CFLAGS) -o  jocProvesJaccApprox jocProvesJaccApprox.cc jaccard.o jaccardaprox.o kshingles.o ModularHash.o MultiplicativeHash.o MurmurHash3.o
ModularHash.o: ModularHash.cc
	$(CC) $(CFLAGS) -c ModularHash.cc
MultiplicativeHash.o: MultiplicativeHash.cc
	$(CC) $(CFLAGS) -c MultiplicativeHash.cc
MurmurHash3.o: MurmurHash3.cc
	$(CC) $(CFLAGS) -c MurmurHash3.cc
jaccardaprox.o: jaccardaprox.cc
	$(CC) $(CFLAGS) -c jaccardaprox.cc
jaccard.o: jaccard.cc
	$(CC) $(CFLAGS) -c jaccard.cc
kshingles.o: kshingles.cc
	$(CC) $(CFLAGS) -c kshingles.cc
clean:
	rm -f *.o jacap compjac compjac
