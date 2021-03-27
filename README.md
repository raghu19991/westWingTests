# westWingTests  
  The Project contains a test for adding wishlist Item and removing it.
  It is currently set to run with chromedriver. You can change it to headless by uncommenting the line in environment Variables keyword  
  
## Pre-requisites  
Install Python3.7 and add it to PATH variable.  
IDE: RIDE/SNOWRIDE/PyCharm  
  
## Run:  
1) Clone the repo.  
2) Replace the chromedriver in the root folder with a compatable one(if you are not running headless)  
3) Run below command  
pip install -r requirements.txt 
  
### Command-Line  
 Open command prompt in the root directory  
 Run below command  
 robot .  
  
 (or) for results in Results folder  
  
 robot -d results Tests/Wishlist/W01_AddRemoveProducts.robot  
  
  
## IDE:    
Load the Project into any of the IDE  
Hit Run(RIDE/SNOWRIDE) or run above command(Pycharm)  
  
###Results folder contains the results of the tests
### In case you are using snowride the file snowride_runner needs to be updated to point to the python_install_dir and path to this file needs to be added in Script input in Run Tab of the IDE. 