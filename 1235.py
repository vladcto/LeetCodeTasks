class Solution:
	def jobScheduling(self, startTime, endTime, profit) -> int:
		jobs = [(startTime[i], endTime[i], profit[i]) for i in range(len(startTime))]
		jobs.sort(key=lambda x: x[1])

		profit_at_time = [0 for i in range(len(jobs))]
		profit_at_time[0] = jobs[0][2]
		for i in range(1,len(jobs)):
			profit_at_time[i] = max(profit_at_time[i - 1], jobs[i][2])
			for j in reversed(range(i)):
				if jobs[j][1] <= jobs[i][0]:
					profit_at_time[i] = max(profit_at_time[i],profit_at_time[j] + jobs[i][2])
					break
		return profit_at_time[-1]		
