function [M] = Read_TPS_hdr()
% Default configuration for TNMR header files 
% DIRECTLY ADAPTED FROM 
M=['PSEQ                       ',' 000000 ',' char   ',' 004 ','PSEQ Tag                             ';
   'BOOL                       ',' 000004 ',' char   ',' 004 ','Boolean Value                        ';
   'ID                         ',' 000008 ',' char   ',' 008 ','Sequence ID                          ';
   'LEN                        ',' 000016 ',' short  ',' 001 ','Filename length                      ';
   'FNAME                      ',' 000020 ',' char   ',' 007 ','Filename                             ';
   'NROWS                      ',' 000027 ',' short  ',' 001 ','Number of rows                       ';
   'NCOLS                      ',' 000031 ',' short  ',' 001 ','Number of columns                    ';

   ];
end

