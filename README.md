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

### Steps to run the experiments

Building hammerdb docker image and starting up the application --

 1. xhost +local:* (To authorize display by host from the container)
 2. docker build -t hdbimg .  (building image)
 3. docker run  --network host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -it hdbimg (starting the container)
 4. cd HammerDB-4.9 and start hammerdb by ./hammerdb


Trace generator: 

1. Download postgres from source in qsim VM and run make to compile and build it.
    Set the path variables required
    Change port number in hpg_hba.conf file as only one port is exposed in the VM
    Run the configure command
    Init the database for the first time
    Run the database using pg_ctl command
2. Run the hammerdb container inside ubuntu 
    With network host settings 
    With display setting to use UI of hammerdb in container
3. Set up the port number exposed to qsim VM from ubuntu VM in hammerdb (to connect to hammerdb and Postgres Server)
3. Start the postgres server on the qsim VM and enable tracing and parallely run load generator hammerDB on postgres
4. This will generate an intermediate log named "trace.log"
5. Convert this trace to champsim.gz extension to be run by champsim

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

Link to Postgres TPC-C Benchmark Trace : https://drive.google.com/file/d/1q1dqhSFwm9vcva0DFpZ5UsZ0wj1Collp/view?usp=sharing

Link to Postgres TPC-H Benchmark Trace: https://drive.google.com/file/d/1vt1m4OXEjiE6h5e1vZC35I5zdWHiyo2m/view?usp=sharing


<br/>

---

### Conclusion



<br/>

---

<center><em><h4>...Best Wishes!...</h4></em></center>
