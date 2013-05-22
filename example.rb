
onLine = 'n_line'
offLine = 'six_line'
onStation = 'n1st'
offStation = 's3rd'
unionStation = 'Uni'



n_line = ['n1st', 'n2nd', 'n3rd', 'Uni']
l_line = ['1lst', 'l2nd', 'l3rd', 'Uni']
six_line = ['s1st', 's2nd', 'Uni', 's3rd']


network = { :n_line => n_line, :l_line => l_line, :six_line => six_line }


if onLine == offLine
  numStop =  ( network[onLine.to_sym].index(onStation) - network[offLine.to_sym].index(offStation) ).abs
else
  numStop =  ( network[onLine.to_sym].index(onStation) - network[onLine.to_sym].index(unionStation) ).abs
  numStop +=  ( network[offLine.to_sym].index(unionStation) - network[offLine.to_sym].index(offStation) ).abs
end

