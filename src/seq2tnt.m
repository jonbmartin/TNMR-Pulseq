function [succeeded] = seq2tnt(seq, tnt_filename)

    % get basic information from seq file 
    dt = seq.blockDurationRaster;

    % This section of code connects you to the TNMR .tnt file for read/write
    ntnmr_app = actxserver('ntnmr.application');
    ntnmr_data = actxserver('ntnmr.document');
    
    % openfile MUST HAVE ABSOLUTE PATH
    invoke(ntnmr_data, 'SaveAs',tnt_filename);
    invoke(ntnmr_data,'OpenFile',tnt_filename);

    % write to the tnt file, event by event
    for ii = 1:length(seq.blockEvents)
        event = seq.blockEvents{ii};
        dur = seq.blockDurations(ii)*seq.blockDurationRaster; % [ms]
        
        % write delay
        if sum(event) == 0
            %TODO: write a delay

        % write non-delay event
        else
            % write RF 
            if event(2) == 1
                invoke(ntnmr_data,'SetTable','acqspiral', '1 2 3 0');
            end
    
            % write ADC
            if event(6) == 1

            end
    
            % write GRADIENTS
    
            % write TRAP
    
            % write EXTENSIONS
        end
    end
    
    succeeded = true;
end

