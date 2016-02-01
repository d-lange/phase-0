names = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]


# create array list of students
# define method that takes the array list as the argument
# IF the length of the list is GREATER than 6
# local variable groups equal empty array
# put shuffled list inside group variable
# make groups equal itself but slice each group by 6 and convert to an array
# print groups variable
# or else print just the argument

def acct_groups(list)
  if list.length > 6
    groups = []
    groups = list.shuffle
    groups = groups.each_slice(6).to_a
    print groups
  else
    print list
  end
end

acct_groups(names)

# Reflection

# What was the most interesting and most difficult part of this challenge?

# the logic is straightforward as to what you need to do to the array of names. Looking at ruby docs for interesting methods was fun and made it easier to iterate through the data.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# yes and no. Sometimes I feel completely stuck from the start, and other times, if my logic didnt make sense to begin with, I feel like I'm going in circles. Overall, I'm seeing how important the right pseudocode can be in accomplishing the task. I really want to improve.

# Was your approach for automating this task a good solution? What could have made it even better?

I think with the built in methods, it runs really smoothly.

# What data structure did you decide to store the accountability groups in and why?

# An array. It's simply just a list of names with no other information. Therefore, an array would be the best list to use.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# .shuffle was an interesting method. This way, the names I entered in my initial array would be mixed up rather than just grouped based on the order I wrote them in.