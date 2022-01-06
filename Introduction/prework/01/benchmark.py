import time

iters = 1000000000

start = time.time()

for _ in range(iters):
    pass

seconds = time.time() - start
operations = iters / seconds;

print("Python VM's 'clock' speed is {:.3f} GHz".format(operations / 1000000000))
