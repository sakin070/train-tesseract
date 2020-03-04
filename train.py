import os
import sys
if len(sys.argv) <3:
    exit

stream = os.popen(f"make training MODEL_NAME={argv[1]} GROUND_TRUTH_DIR={argv[2]}")
output = stream.read()
output