from proposed import *
from cores2 import *


if __name__ == '__main__':
    start = time.time()
    eval_SNR('CERNET')
    end = time.time()
    print('Time Comsuption CERNET_SNR:', end - start)