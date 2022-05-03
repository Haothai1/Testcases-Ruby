#write your code here
def ftoc(f)
  c = (f - 32) * 5 / 9.0
  c.round(1)
end

def ctof(c)
  f = c * 9 / 5.0 + 32
  f.round(1)
end
