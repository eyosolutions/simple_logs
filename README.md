# Simple Logs Script
Bash script program to create and store logs

Author: eyosolutions
Date: March 6, 2024

## Description
The repo for this project is mainly a bash script for logging timestamped data into a text document. While doing that, it monitors the logging process and logs time-stamped log successes(optional) or errors into another text document. This script is useful when logging critical data.

## Getting started and Usage
Fork the repo into your personal account or account of your choice and clone into your local machine.

### Fork and Clone the Repository
1. **Fork the Repository:**
   - Click on the "Fork" button at the top right of the repository page to create your copy.

2. **Clone Your Fork:**
   - Clone your fork to your local machine.
     ```bash
     git clone https://github.com/your_username/simple_logs.git
     ```
### Logging
Setup cronjob to run the script and log the data every minute or whatever duration interval of your choice to the text file(logs.txt). The successes/errors will be logged in errlogs.txt.

### Example
Here is an example of the setup and sample outputs from the script.
   - Setup on cronjob. Ensure cron is installed and active
     ```bash
     crontab -e
     ```
   - Edit with editor of choice. Add this line of code and save and exit
     ```bash
     # m h  dom mon dow   command
     */1 * * * * cd ~/jomacs/ && ./logs.sh
     ```
   - Output of logs.txt and errlogs.txt
     ```bash
     Log entry at 2024-03-06 22:39:01.
     ```
     ```bash
     Error occurred while logging at 2024-03-06 21:29:01.
     ```

## Contribution
You can contribute to this project as part of Practice Devops Assignment Solutions by submitting issues or pull requests. Your supports are highly valued.

## License
This grogram is licensed under he Apache-2.0.
