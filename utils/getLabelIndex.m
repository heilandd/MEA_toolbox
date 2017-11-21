function index  = getLabelIndex( label,labels )
%getLabelIndex Returns the channel index of given label
%   index  = getLabelIndex( label,labels ) returns the array index of
%   given label. Label may be a scalar, numeric vector, or a cell array
%   containing label strings. Labels is an n-element cell array containing all the label
%   strings.
%
%   Channel index is ranging from 1 to 60 (the indexes in the channel array), 
%   while the labels corresponds to the MEA layout 60MEA200/30iR.  
%   Labels 12-17 in he first column, 21-28 in the second, ..., 71-78 in the 
%   seventh, and 82-87 in the last.

    
    

    if isnumeric(label)
        index = zeros(length(label),1);
        for i=1:length(label)
            if label(i)==15
                index(i) = find(contains(labels,'Ref'));
            else
                index(i) = find(contains(labels,num2str(label(i))));
            end
        end
    
    else
        index = zeros(length(label),1);
        for i=1:length(label)
            if strcmp(label(i),'15')|| strcmp(label(i),'ref')
                index(i) = find(contains(labels,'Ref'));
            else
                find(contains(labels,label(i)));
                index(i) = find(contains(labels,label(i)));
            end
        end
%         index = zeros(size(label,1),1);
%         for i=1:size(label,1)
%             if strcmp(label(i,:),'15')|| strcmp(label(i,:),'ref')
%                 index(i) = find(contains(labels,'Ref'));
%             else
%                 index(i) = find(contains(labels,label(i,:)));
%             end
%         end
    end
    
    
end

