clear all, close all
delete('fid.tnt')

% Start with conventional TNMR setup of sequence parameters ... 
system = mr.opts('rfRingdownTime', 20e-6, 'rfDeadTime', 100e-6, ...
                 'adcDeadTime', 20e-6);

seq=mr.Sequence(system);              % Create a new sequence object

% Load the existing seq file
seq.read('fid.seq')

% write to a tnt file for TNMR 
seq2tnt(seq, 'D:\Jonathan\pulseq-tnmr\example\fid.tnt')
