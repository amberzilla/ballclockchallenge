=begin
Psudocode

Implementation 1 

Input: Single parameter (integer)
Output: Number of balls and number of days before reset

Clock Mechanism
Queue 
- begins with x number of balls ...array?
Minute
- carries 4 balls
- when a 5th ball is added, 4 balls go back to queue
- 1 ball is added to 5-Minute 
5-Minute
- carries 11 balls
- when 12th ball is added, 11 balls go back to queue
- 1 ball is added to Hour
Hour 
- carries 12 balls with 1 fixed ball
- when 12th ball is added, 11 balls go back to queue

=end