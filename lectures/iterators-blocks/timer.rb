def timer()
  start_time = Time.now
  # simulate task
  yield
  end_time = Time.now
  puts "Elapsed time: #{end_time - start_time}s"
end

timer() do
  puts "Starting Task 1"
  sleep(2)
  puts "Task 1 done"
end

timer() do
  puts "Starting Task 2"
  sleep(1)
  puts "Task 2 done"
end


timer() do
  puts "Starting Task 3"
  sleep(1)
  puts "Task 3 done"
end
