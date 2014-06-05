def measure
  start = Time.now
  yield
  Time.now - start
end