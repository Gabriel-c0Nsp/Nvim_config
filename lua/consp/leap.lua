local status_ok, leap = pcall(require, "leap")
if not status_ok then 
  print('ERROR: Something wrong with leap plugin')
end

leap.add_default_mappings()
