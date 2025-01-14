function [M] = Read_TPS_hdr_struct()
% Default configuration for TNMR header files 
% DIRECTLY ADAPTED FROM 
% M=['PSEQ                       ',' 000000 ',' char   ',' 004 ','PSEQ Tag                             ';
%    'BOOL                       ',' 000004 ',' char   ',' 004 ','Boolean Value                        ';
%    'ID                         ',' 000008 ',' char   ',' 008 ','Sequence ID                          ';
%    'LEN                        ',' 000016 ',' short  ',' 001 ','Filename length                      ';
%    'FNAME                      ',' 000020 ',' char   ',' 007 ','Filename                             ';
%    'NROWS                      ',' 000027 ',' short  ',' 001 ','Number of rows                       ';
%    'NCOLS                      ',' 000031 ',' short  ',' 001 ','Number of columns                    ';
% 
%    ];
M.PSEQ.offset=0;
M.PSEQ.type='char';
M.PSEQ.size=4;
M.PSEQ.description = 'PSEQ tag';

M.BOOL.offset=4;
M.BOOL.type='char';
M.BOOL.size=4;
M.BOOL.description = 'Boolean Value';

M.ID.offset=8;
M.ID.type='char';
M.ID.size=8;
M.ID.description = 'Sequence ID';

M.LEN.offset=16;
M.LEN.type='short';
M.LEN.size=1;
M.LEN.description = 'Filename Length';

M.FNAME.offset=20;
M.FNAME.type='char';
M.FNAME.size=NaN;
M.FNAME.description = 'Filename';

M.NROWS.offset=NaN;
M.NROWS.type='short';
M.NROWS.size=1;
M.NROWS.description = 'Number of rows';

M.NCOLS.offset=NaN;
M.NCOLS.type='short';
M.NCOLS.size=1;
M.NCOLS.description = 'Number of cols';


end

