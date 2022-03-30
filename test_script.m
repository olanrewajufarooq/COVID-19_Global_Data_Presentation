%% Load Data
load collected_data data dates

%% Getting country data
countries = unique({data.country});
countries(2:end+1) = countries;
countries{1} = 'All';

%% Getting State For Each Country
x = {data.country};
y = {data.state};

state_struct = struct('Country', {'All'}, 'States', {{'All'}});

count = 1;
for i = 1:length(x)
    if ~ismember(x{i}, {state_struct.Country})
        count = count + 1;
        state_struct(count).Country = x{i};
    end
    
    if strcmp(y{i}, '')
        u = state_struct(count).States;
        u{end+1} = 'All';
        state_struct(count).States = u;
        % state_struct(count).States{end+1} = 'All';
    else
        u = state_struct(count).States;
        u{end+1} = y{i};
        state_struct(count).States = u;
        % state_struct(count).States{end+1} = y{i};
    end
end

%% Loading State Values 
state_struct(strcmp(countries, 'Canada')).States