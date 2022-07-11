def time_string(s)
  sec = s % 60
  min = s/60 % 60
  h = s/(60*60)
  return "%02d"%[h]+":"+"%02d"%[min]+":"+"%02d"%[sec]
end