function labels = getLabels( )
%getLabels Returns a cell array with all the labels.
%   Channel index is ranging from 1 to 60 (the indexes in the channel array), 
%   while the labels corresponds to the MEA layout 60MEA200/30iR.  
%   Labels 12-17 in the first column, 21-28 in the second, ..., 71-78 in the 
%   seventh, and 82-87 in the last.

    labels = {'47', '48', '46','45','38','37','28','36','27','17','26','16','35', ...
        '25','ref','14','24','34','13','23','12','22','33','21','32','31','44', ...
        '43','41','42','52','51','53','54','61','62','71','63','72','82','73', ...
        '83','64','74','84','85','75','65','86','76','87','77','66','78', ...
        '67','68','55','56','58','57'};
end