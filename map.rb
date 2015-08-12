DELTA = 8
W = 2 ** DELTA

while $stdin.gets
  r = $_.strip.split(',')
  (z, x, y) = r[0].split('/').map{|v| v.to_i}
  next if z < DELTA
  print [z - DELTA, x >> DELTA, y >> DELTA, x % W, y % W].join(','), "\n"
end
