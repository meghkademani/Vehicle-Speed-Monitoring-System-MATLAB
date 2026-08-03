12.1 PROJECT OBJECTIVE



The objective of this project is to develop a MATLAB-based Vehicle Speed

Monitoring System that monitors vehicle speed, detects overspeed conditions,

classifies speed severity into Normal, Warning, and Critical levels, calculates

speed statistics, visualizes speed data, simulates real-time monitoring, and

logs monitoring results into a CSV file.





12.2 PROBLEM STATEMENT



Vehicle overspeeding is a major safety concern that can increase the risk of road accidents. Monitoring vehicle speed manually can be difficult and may not provide immediate information about dangerous speed conditions. Therefore, there is a need for a system that can automatically monitor vehicle speed and identify whether the vehicle is operating within the permitted speed limit. This project develops a MATLAB-based Vehicle Speed Monitoring System that detects overspeed conditions, classifies them into Warning and Critical levels, calculates speed statistics, visualizes speed data, simulates real-time monitoring, and stores the monitoring results in a CSV file for further analysis.





12.3 SYSTEM WORKFLOW





&#x20;                   START

&#x20;                     ↓

&#x20;             Input Speed Data

&#x20;                     ↓

&#x20;            Set Speed Limit

&#x20;                (90 km/h)

&#x20;                     ↓

&#x20;             Monitor Speed

&#x20;                     ↓

&#x20;         Classify Vehicle Speed

&#x20;                     ↓

&#x20;       ┌─────────────┼─────────────┐

&#x20;       ↓             ↓             ↓

&#x20;     NORMAL        WARNING       CRITICAL

&#x20;  ≤ 90 km/h      91–100 km/h     > 100 km/h

&#x20;       └─────────────┼─────────────┘

&#x20;                     ↓

&#x20;         Calculate Speed Statistics

&#x20;         (Maximum, Minimum, Average)

&#x20;                     ↓

&#x20;            Generate Graphs

&#x20;                     ↓

&#x20;         Real-Time Monitoring

&#x20;                     ↓

&#x20;             Create Data Log

&#x20;                     ↓

&#x20;            Export to CSV File

&#x20;                     ↓

&#x20;                    END



The Vehicle Speed Monitoring System begins by taking vehicle speed measurements as input and defining a maximum speed limit of 90 km/h. The system monitors each speed measurement and classifies the vehicle's speed into three categories: Normal, Warning, and Critical. Speeds up to 90 km/h are classified as Normal, speeds above 90 km/h and up to 100 km/h are classified as Warning, and speeds above 100 km/h are classified as Critical. The system then calculates the maximum, minimum, and average speed. Speed data is visualized using graphs, and a real-time monitoring simulation displays the speed status of the vehicle. Finally, the monitoring data is organized into a data log and exported to a CSV file for future analysis.





12.4 MATLAB IMPLEMENTATION AND FUNCTIONS



The Vehicle Speed Monitoring System is implemented in MATLAB using a modular programming approach. The main program controls the overall execution, while separate functions are used for speed monitoring, statistical calculations, and data logging. This modular structure makes the program easier to understand, maintain, test, and modify.





| MATLAB File             | Purpose                                                                                     |

| ----------------------- | ------------------------------------------------------------------------------------------- |

| main.m               | Controls the complete execution of the Vehicle Speed Monitoring System                      |

| monitorSpeed.m       | Monitors vehicle speed, classifies speed as Normal, Warning, or Critical, and counts events |

| calculateStatistics.m | Calculates maximum speed, minimum speed, and average speed                                  |

| saveSpeedLog.m       | Creates the vehicle speed data log and exports it to a CSV file                             |



12.4.1 main.m



The main.m file is the primary program of the Vehicle Speed Monitoring System. It defines the input speed data and speed limit, calls the monitoring and statistical functions, generates speed visualization graphs, performs real-time monitoring, and calls the data logging function to create the CSV file.



12.4.2 monitorSpeed.m



The monitorSpeed.m function analyzes each vehicle speed measurement and classifies it according to the defined speed limits. Speeds up to 90 km/h are classified as Normal, speeds above 90 km/h and up to 100 km/h are classified as Warning, and speeds above 100 km/h are classified as Critical. The function also counts the total overspeed, warning, and critical events.





12.4.3 calculateStatistics.m



The calculateStatistics.m function calculates the maximum speed, minimum speed, and average speed from the given vehicle speed data. These values are displayed in the Vehicle Speed Monitoring Summary.



12.4.4 saveSpeedLog.m



The saveSpeedLog.m function creates a structured data table containing the measurement time, vehicle speed, and corresponding status. The data is then exported to a CSV file named vehicle\_speed\_log.csv for storage and future analysis.





12.5 RESULTS AND GRAPHS



The Vehicle Speed Monitoring System was successfully implemented and tested using MATLAB. The system correctly monitored the vehicle speed, classified the speed conditions, calculated statistical values, displayed real-time monitoring results, and generated a data log. The results obtained from the system are presented below.



| Parameter          |     Result |

| ------------------ | ---------: |

| Speed Limit        |    90 km/h |

| Maximum Speed      |   110 km/h |

| Minimum Speed      |    45 km/h |

| Average Speed      | 78.33 km/h |

| Total Measurements |         12 |

| Overspeed Events   |          4 |

| Warning Events     |          2 |

| Critical Events    |          2 |





The system analyzed a total of 12 vehicle speed measurements. The maximum recorded speed was 110 km/h, while the minimum recorded speed was 45 km/h. The average vehicle speed was 78.33 km/h. A total of 4 overspeed events were detected, including 2 Warning events and 2 Critical events. The results demonstrate that the system successfully identifies and classifies different vehicle speed conditions.



\### Figure 1: Vehicle Speed Monitoring Graph



!\[Vehicle Speed Monitoring Graph](vehicle\_speed\_graph.png)



\### Figure 2: Vehicle Speed Severity Monitoring Graph



!\[Vehicle Speed Severity Monitoring Graph](vehicle\_speed\_severity\_graph.png)



12.6 CSV DATA LOGGING RESULTS



The Vehicle Speed Monitoring System stores the monitoring results in a CSV

file named vehicle\_speed\_log.csv. The data log contains the measurement time,

vehicle speed, and corresponding speed status. The status of each measurement

is classified as NORMAL, WARNING, or CRITICAL.



The CSV file contains the following columns:



Time\_Seconds

Speed\_km\_h

Status



The generated data log provides a structured record of all vehicle speed

measurements and their corresponding classifications. This file can be used

for future analysis, reporting, or further processing.



Sample Data Log:



Time\_Seconds    Speed\_km\_h    Status

0               45            NORMAL

1               53            NORMAL

2               60            NORMAL

3               72            NORMAL

4               80            NORMAL

5               92            WARNING

6               105           CRITICAL

7               110           CRITICAL

8               95            WARNING

9               88            NORMAL

10              75            NORMAL

11              65            NORMAL



&#x20;12.7 CONCLUSION



The Vehicle Speed Monitoring System was successfully developed and implemented

using MATLAB. The system is capable of monitoring vehicle speed and

classifying speed conditions into Normal, Warning, and Critical levels based

on the defined speed limit.



The system successfully calculated the maximum, minimum, and average vehicle

speed and provided visual representations of the speed data. The real-time

monitoring simulation displayed the vehicle speed and its corresponding status

for each measurement.



The system also successfully recorded the monitoring results in a structured

data log and exported the data to a CSV file. The modular implementation using

separate MATLAB functions makes the system easier to understand, maintain,

and extend.



Overall, the project demonstrates how MATLAB can be used to develop a

practical vehicle speed monitoring application that combines data processing,

speed classification, visualization, real-time simulation, and data logging.



12.8 FUTURE IMPROVEMENTS



The Vehicle Speed Monitoring System can be further improved by adding

additional features and technologies to make the system more practical and

suitable for real-world applications.



1\. Real-Time Sensor Integration



The system can be connected to real vehicle speed sensors or external

hardware to receive live vehicle speed data instead of using predefined

speed values.



2\. Graphical User Interface



A MATLAB-based graphical user interface (GUI) can be developed to display

vehicle speed, speed limits, warning messages, critical alerts, and graphs

in a user-friendly dashboard.



3\. Audio and Visual Alerts



The system can generate audio alarms and visual notifications when the

vehicle exceeds the speed limit or reaches the Critical speed level.



4\. GPS Integration



GPS technology can be integrated to track the vehicle's location and apply

different speed limits depending on the current road or geographical area.



5\. Cloud Data Storage



The monitoring data can be uploaded to a cloud-based platform, allowing

vehicle speed information to be accessed and analyzed remotely.



6\. Automatic Report Generation



The system can be enhanced to automatically generate daily, weekly, or

monthly speed monitoring reports based on the collected data.



7\. Machine Learning Integration



Machine learning techniques can be used to analyze historical speed data

and identify driving patterns or predict potential overspeeding events.



These improvements can make the Vehicle Speed Monitoring System more

advanced, reliable, and suitable for real-world vehicle safety and

monitoring applications.

