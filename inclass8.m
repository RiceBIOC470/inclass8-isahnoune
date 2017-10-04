%AW: see comments below. 0.9/1.

%Inclass assignment 8

%Using the swalign function
% A. Create a random DNA sequence of length 100. 

% dnaletters = ['A', 'T', 'G', 'C']
% randomDNAseq = dnaletters(randi(4, 1, 100))

seq1 = randseq(100);
% B. Create a second sequence from the first one by changing the middle 20 basepairs (at positions 41-60)

seq2 = strcat(seq1(1:40), randseq(20), seq1(61:100));

% C. run swalign on the two sequences with the default parameters

sequencealignment = swalign(seq1, seq2)


% D. run swalign with much higher and lower values of the GapOpen parameter
% and explain the results. 

%Note by default swalign uses the aminoacid alphabet. You should set 'alphabet' to 'nt' -0.05. 
sequencealignment2 = swalign(seq1, seq2, 'GapOpen', 100)
sequencealignment3 = swalign(seq1, seq2, 'GapOpen', 1)

%GapOpen signifies the penalty for opening a gap in the alignment. A higher
%gap penalty is used to reduce gap openings in the sequence, whereas the
%converse is used to increase gap openings. Therefore the relationship is
%inverse. Higher gap penalty leads to lower value and vice versa.

%AW: note also the inverse relationship between having gaps and having mismatches. -0.05.


% E. run swalign with a low value of GapOpen but a high value of ExtendGap,
% explain the result

sequencealignment4 = swalign(seq1, seq2, 'GapOpen', 1, 'ExtendGap', 100)

%Low value of GapOpen and high value of ExtendGap leads to a value very
%similar to the result received in sequence alignment 3, which indicates
%that the GapOpen value plays a larger value in how the penalties are
%displayed and analyzed. 

%AW: note that gaps are generally shorter - it will not make gaps longer than
% 1 bp due to the high penalty associated with this. -0.05

% F. run swalign align with the default value of GapOpen and a low value
% of ExtendGap and explain the result. 

sequencealignment5 = swalign(seq1, seq2, 'ExtendGap', 1)

%A low value of ExtendGap yields to a lower penalty of extending the gap in
%the sequence alignment, as compared to when GapOpen is higher, shown in
%sequence alignment 4.
%AW: so as a result, there are fewer, but longer, gaps. 
