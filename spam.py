#======================================#
#                                      #
#                                      #
#     Simple message spamming tool     #
#    Author is not responsible for     #
#       any misuse of the tool.        #
#                                      #
#                                      #
#======================================#

# Type: Spam
# Author: Semiii
# Contact: r3moved777@protonmail.com 
# Github: github.com/semiiixyz
# Language/s: Python3, BASH

# Install all required modules
import time, pyautogui
from termcolor import cprint

# Start spamming
cprint("   _____ ____  __ __  __  ___", "red")
cprint("  / ___// __ \/ // / /  |/  /", "red")
cprint("  \__ \/ /_/ / // /_/ /|_/ / ", "red")
cprint(" ___/ / ____/__  __/ /  / /  ", "red")
cprint("/____/_/      /_/ /_/  /_/   ", "red")
cprint("\tHundred Laugh", "yellow")

time.sleep(5)
f = open('spam.txt')

for line in f:
    pyautogui.typewrite(line)
    pyautogui.press('enter')
