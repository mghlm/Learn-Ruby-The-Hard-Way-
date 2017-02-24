europe_capitals = {
  'Denmark' => 'Copenhagen',
  'Sweden' => 'Stockholm',
  'Germany' => 'Munich',
  'France' => 'Paris'
}

capital_populations = {
  'Copenhagen' => 1000000,
  'Stockholm' => 800000,
  'Munich' => 1400000,
  'Paris' => 2200000
}

puts '-' * 15
europe_capitals.each do |country, city|
  puts "The capital of #{country} is #{city}."
end

puts '-' * 15
capital_populations.each do |city, pop|
  puts "There are #{pop} poeple living in #{city}."
end

puts '-' * 15
puts "Denmark's capital is #{europe_capitals['Denmark']}"
puts "#{europe_capitals['Denmark']} has #{capital_populations['Copenhagen']} inhabitats."
