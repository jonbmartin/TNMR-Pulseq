classdef SeqTPS
    %TPS This is a class that handles the contents of a TSP pulse sequence.
    % This contains adaptations of the excellent MATLAB repository for
    % reading TNMR .tnt files, [1]

    % References
    % [1] Brandon Armstrong (2025). TNMR GUI 
    % (https://www.mathworks.com/matlabcentral/fileexchange/37122-tnmr-gui), 
    % MATLAB Central File Exchange. Retrieved January 13, 2025.
    
    properties
        tps_fields = struct();
    end
    
    methods
        function obj = SeqTPS()
            %TSP Construct an instance of this class.
            %   Instance is initialized with the below function, which is
            %   the general form for any .tps pulse sequence. NOTE: no
            %   values have actually been read in yet!! 
            obj.tps_fields = Read_TPS_hdr_struct;
        end
        
        function obj = populate_sequence_from_file(obj,filename)
            %populate_sequence() opens a .tps (binary) file and reads in
            % all of the fields it contains
            file_pt=fopen(filename,'r','l');
            
            fields = fieldnames(obj.tps_fields);

            % Work field by field through the structure 
            for ii = 1:length(fields)
                fieldname = fields{ii};
                data = obj.tps_fields.(fieldname);
                
                % NaN implies we don't know the value yet. Will parse
                % through file and populate! 
                if ~isnan(data.offset) && ~isnan(data.size)
                    disp(ii);

                    % The following 5 lines are lifted from [1]
                    fseek(file_pt, data.offset, 'bof');
                    var_value = fread(file_pt, data.size, data.type)';
                    if (strcmp(data.type,'char'))&((data.size-1)>0)
                        var_value = char(var_value);
                    end

                    % write to our data structure
                    data.value = var_value;
                    obj.tps_fields.(fieldname).value = var_value;
                else
                    % TODO: figure out what the offset and/or length should
                    % be
                end
            end

            
        end

        function write_to_tps(obj, filename)
            % write_to_tps() writes the class structure into a .tps binary
            % file 

            % TODO
        end
    end
end

