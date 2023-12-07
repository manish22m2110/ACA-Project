# cs683_project

### <Project-Title>

### <Team-Name>

| **Member Name** | **Member Roll No.** |
| :-------------: | :-----------------: |
| Anubhav Jana    |  22M2109            |
| Sunanda Somwase |  22M2107            |
| Manish Kumar    |  22M2110            |

<br/>

---

### Proposal or Idea
With the increasing demand for database applications that are compute and memory intensive, it has become essential to understand and optimize the performance of database management systems (DBMSs) on modern computer platforms. While faster processors have improved the performance of many workloads, the same level of improvement has not been observed in commercial DBMSs. For different kind of database workloads, the performance varies. This project aims to investigate the factors affecting DBMS performance, particularly focusing on processor and memory interactions, and develop optimization techniques to address performance bottlenecks.


<br/>

---


#### Steps to Set Up Trace Generator Framework

0. Login to Physical Machine
    <br />ID password obtain from the administrator
1. Start Ubuntu VM from Desktop
    <br />Use VirtualBox in local machine
    <br />ID password obtain from the administrator
2. Build Load Generator inside Ubuntu VM
    <br />Building hammerdb docker image and starting up the application --
    1. docker build -t hdbimg .  (building image)
3. Start QSim VM
    <br />Instructions present on the desktop of Ubuntu VM
    <br />ID password present in the set up instructions doc present on the desktop of Ubuntu VM
4. Build Postgresql inside QSim VM
    1. Download postgres from source in qsim VM and run make to compile and build it.
    2. Set the path variables required
    3. Change port number in hpg_hba.conf file as only one port is exposed in the VM
    4. Run the configure command
    5. Init the database for the first time
    6. Run the database using pg_ctl command
    <br />Port number exposed for communication from Ubtuntu VM (6359) to QSim VM (6379)
6. Start the enabledisable program present on desktop inside QSim VM, this starts the process of trace generation
7. Start the load generator from Ubuntu VM
    1. xhost +local:* (To authorize display by host from the container)
    2. docker run  --network host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -it hdbimg 
       <br />(starting the container)
       <br />Network of container set same as host and display set as host display for UI
    3. cd HammerDB-4.9 and start hammerdb by ./hammerdb
    4. Set up the port number exposed to qsim VM from ubuntu VM in hammerdb (to connect to hammerdb and Postgres Server)
    5. Start generating load
9. Power Off the QSim VM to find the intermediate trace tarce.log at path mentioned in the QSim VM setup file
10. Convert this trace to champsim.gz extension to be run by champsim using the Python scripts owned by the administrator


Vtune Profiling:
1. Set up the VTune profiling tool
2. Start the postgreSQL server 
3. Start generating the load on the server
4. Check out the PID of server process connected to the load generator
5. Attach that PID to the VTune profiler
6. Collect data for 1 minute for the interval of 1ms
7. Analyse the generated results
8. Follow the process for Micro-architectural analysis and HotSpot analysis.


Traces:

<br />Link to Postgres TPC-C Benchmark Trace : https://drive.google.com/file/d/1q1dqhSFwm9vcva0DFpZ5UsZ0wj1Collp/view?usp=sharing

<br />Link to Postgres TPC-H Benchmark Trace: https://drive.google.com/file/d/1vt1m4OXEjiE6h5e1vZC35I5zdWHiyo2m/view?usp=sharing


<br/>

---

### Conclusion



<br/>

---

<center><em><h4>...Best Wishes!...</h4></em></center>
