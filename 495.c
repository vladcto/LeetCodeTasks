static int _clamp(int a, int magnitude) {
  return a > magnitude ? magnitude : a;
}

// Never chase Singed
int findPoisonedDuration(int *timeSeries, int timeSeriesSize, int duration) {
  int acc = 0;
  int lastTime = timeSeries[0];
  for (int i = 1; i < timeSeriesSize; i++) {
    int curTime = timeSeries[i];
    acc += _clamp(curTime - lastTime, duration);
    lastTime = curTime;
  }
  return acc + duration;
}