# westWingTests  
  The Project contains a test for Searching product,adding it to wishlist and then it.  
  It is currently set to run with chromedriver. You can change it to headless by uncommenting the line in 'Environment Variables' keyword  
  Results are published to the Results Folder.  
  
## Pre-requisites  
Install Python3.7 and add it to PATH variable.  
IDE: RIDE/SNOWRIDE/PyCharm  
  
## Simple Run:  
1) Clone the repo.   
2) Run command  
pip install -r requirements.txt  
3)Run Command  
robot -d results Tests/Wishlist/W01_AddRemoveProducts.robot  
  
## IDE:    
Load the Project into any of the IDE  
Hit Run(RIDE/SNOWRIDE) or run above command from terminal (Pycharm)  
  
### In case you are using snowride IDE ,the snowride_runner is provide in the root directory.The python_install_dir path needs to be updated in the file and the file needs to be selected in Script input of Run Tab in the IDE.  
  
##**NOTE:**  
The chromedriver in the root directory needs to be updated if it is incompatable with your browser version.  
Chromedriver can be downloaded from https://chromedriver.chromium.org/downloads  
