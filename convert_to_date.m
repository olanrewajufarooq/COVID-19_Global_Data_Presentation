function new_date = convert_to_date(old_date)
%CONVERT_TO_DATE Summary of this function goes here
%   Detailed explanation goes here

    splitted_date = split(old_date, '/');
    splitted_date{3} = str2double(splitted_date{3});
    if splitted_date{3} < 25
        splitted_date{3} = num2str(splitted_date{3} + 2000);
    else
        splitted_date{3} = num2str(splitted_date{3} + 1999);
    end
    
    joined_date = join(splitted_date, '-');
    joined_date = joined_date{1};
    
    new_date = datetime(joined_date, 'InputFormat', 'MM-dd-yyyy');

end

