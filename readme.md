# spring boot web 应用提供 Prometheus Http 数据接口示例应用

## 接口数据示例及说明
```
# HELP jvm_threads_peak The peak live thread count since the Java virtual machine started or peak was reset
# TYPE jvm_threads_peak gauge
# 线程数高点
jvm_threads_peak 56.0
# HELP process_start_time_seconds The start time of the Java virtual machine
# TYPE process_start_time_seconds gauge jvm
# 开机时间点
process_start_time_seconds 1.527733571805E9
# HELP jvm_gc_memory_allocated_bytes_total Incremented for an increase in the size of the young generation memory pool after one GC to before the next
# TYPE jvm_gc_memory_allocated_bytes_total counter
# 新生代在两次GC的内存用量
jvm_gc_memory_allocated_bytes_total 1.244900056E9
# HELP jvm_memory_used_bytes The amount of used memory
# TYPE jvm_memory_used_bytes gauge
# 使用的内存
jvm_memory_used_bytes{area="nonheap",id="Code Cache",} 1.4064192E7
jvm_memory_used_bytes{area="nonheap",id="Metaspace",} 6.1129856E7
jvm_memory_used_bytes{area="nonheap",id="Compressed Class Space",} 7879712.0
jvm_memory_used_bytes{area="heap",id="PS Eden Space",} 8.360848E7
jvm_memory_used_bytes{area="heap",id="PS Survivor Space",} 0.0
jvm_memory_used_bytes{area="heap",id="PS Old Gen",} 4.5382728E7
# HELP jvm_buffer_memory_used_bytes An estimate of the memory that the Java virtual machine is using for this buffer pool
# TYPE jvm_buffer_memory_used_bytes gauge jvm
# 于该缓存池的内在大小
jvm_buffer_memory_used_bytes{id="direct",} 81920.0
jvm_buffer_memory_used_bytes{id="mapped",} 0.0
# HELP tomcat_global_sent_bytes_total  
# TYPE tomcat_global_sent_bytes_total counter tomcat
# tomcat 总发送字节数
tomcat_global_sent_bytes_total{name="http-nio-8086",} 268773.0
# HELP tomcat_global_received_bytes_total  
# TYPE tomcat_global_received_bytes_total counter tomcat
# tomcat 总接收字节数
tomcat_global_received_bytes_total{name="http-nio-8086",} 0.0
# HELP jvm_memory_committed_bytes The amount of memory in bytes that is committed for  the Java virtual machine to use
# TYPE jvm_memory_committed_bytes gauge
#
jvm_memory_committed_bytes{area="nonheap",id="Code Cache",} 1.409024E7
jvm_memory_committed_bytes{area="nonheap",id="Metaspace",} 6.2672896E7
jvm_memory_committed_bytes{area="nonheap",id="Compressed Class Space",} 8257536.0
jvm_memory_committed_bytes{area="heap",id="PS Eden Space",} 3.85875968E8
jvm_memory_committed_bytes{area="heap",id="PS Survivor Space",} 2.3068672E7
jvm_memory_committed_bytes{area="heap",id="PS Old Gen",} 1.4942208E8
# HELP system_cpu_count The number of processors available to the Java virtual machine
# TYPE system_cpu_count gauge
# 系统 cpu 数
system_cpu_count 4.0
# HELP tomcat_global_request_max_seconds  
# TYPE tomcat_global_request_max_seconds gauge tomcat
# 请求最长时间
tomcat_global_request_max_seconds{name="http-nio-8086",} 0.705
# HELP process_cpu_usage The "recent cpu usage" for the Java Virtual Machine process
# TYPE process_cpu_usage gauge jvm
# 进程当前使用的cpu
process_cpu_usage 2.6487823324696115E-4
# HELP jvm_memory_max_bytes The maximum amount of memory in bytes that can be used for memory management
# TYPE jvm_memory_max_bytes gauge
# jvm 最大可用内存
jvm_memory_max_bytes{area="nonheap",id="Code Cache",} 2.5165824E8
jvm_memory_max_bytes{area="nonheap",id="Metaspace",} -1.0
jvm_memory_max_bytes{area="nonheap",id="Compressed Class Space",} 1.073741824E9
jvm_memory_max_bytes{area="heap",id="PS Eden Space",} 6.56408576E8
jvm_memory_max_bytes{area="heap",id="PS Survivor Space",} 2.3068672E7
jvm_memory_max_bytes{area="heap",id="PS Old Gen",} 1.417674752E9
# HELP tomcat_threads_current  
# TYPE tomcat_threads_current gauge tomcat
# 当前线程数
tomcat_threads_current{name="http-nio-8086",} 10.0
# HELP tomcat_global_request_seconds  
# TYPE tomcat_global_request_seconds summary
# tomcat 总请求计数和总用时
tomcat_global_request_seconds_count{name="http-nio-8086",} 32.0
tomcat_global_request_seconds_sum{name="http-nio-8086",} 2.048
# HELP http_server_requests_seconds  
# TYPE http_server_requests_seconds summary
# 请求计数和总用时
http_server_requests_seconds_count{exception="None",method="GET",status="200",uri="/prometheus",} 30.0
http_server_requests_seconds_sum{exception="None",method="GET",status="200",uri="/prometheus",} 1.166583436
http_server_requests_seconds_count{exception="None",method="GET",status="200",uri="/overview/inspection",} 1.0
http_server_requests_seconds_sum{exception="None",method="GET",status="200",uri="/overview/inspection",} 0.711485023
http_server_requests_seconds_count{exception="None",method="GET",status="200",uri="/overview/ticket",} 1.0
http_server_requests_seconds_sum{exception="None",method="GET",status="200",uri="/overview/ticket",} 0.111138228
# HELP http_server_requests_seconds_max  
# TYPE http_server_requests_seconds_max gauge
# 单个请求最长用时记录
http_server_requests_seconds_max{exception="None",method="GET",status="200",uri="/prometheus",} 0.036116511
http_server_requests_seconds_max{exception="None",method="GET",status="200",uri="/overview/inspection",} 0.0
http_server_requests_seconds_max{exception="None",method="GET",status="200",uri="/overview/ticket",} 0.0
# HELP jvm_gc_max_data_size_bytes Max size of old generation memory pool
# TYPE jvm_gc_max_data_size_bytes gauge
# 老年代最大
jvm_gc_max_data_size_bytes 1.417674752E9
# HELP jvm_gc_pause_seconds Time spent in GC pause
# TYPE jvm_gc_pause_seconds summary GC
# gc 暂停次数和总时间
jvm_gc_pause_seconds_count{action="end of minor GC",cause="Metadata GC Threshold",} 2.0
jvm_gc_pause_seconds_sum{action="end of minor GC",cause="Metadata GC Threshold",} 0.037
jvm_gc_pause_seconds_count{action="end of major GC",cause="Metadata GC Threshold",} 2.0
jvm_gc_pause_seconds_sum{action="end of major GC",cause="Metadata GC Threshold",} 0.238
jvm_gc_pause_seconds_count{action="end of minor GC",cause="Allocation Failure",} 3.0
jvm_gc_pause_seconds_sum{action="end of minor GC",cause="Allocation Failure",} 0.044
# HELP jvm_gc_pause_seconds_max Time spent in GC pause
# TYPE jvm_gc_pause_seconds_max gauge
# GC 暂停最长时间记录
jvm_gc_pause_seconds_max{action="end of minor GC",cause="Metadata GC Threshold",} 0.0
jvm_gc_pause_seconds_max{action="end of major GC",cause="Metadata GC Threshold",} 0.0
jvm_gc_pause_seconds_max{action="end of minor GC",cause="Allocation Failure",} 0.0
# HELP logback_events_total Number of error level events that made it to the logs
# TYPE logback_events_total counter
# logback 日志记录数
logback_events_total{level="error",} 0.0
logback_events_total{level="warn",} 2.0
logback_events_total{level="info",} 148.0
logback_events_total{level="debug",} 81.0
logback_events_total{level="trace",} 0.0
# HELP jvm_threads_live The current number of live threads including both daemon and non-daemon threads
# TYPE jvm_threads_live gauge
# 存活线程数
jvm_threads_live 47.0
# HELP jvm_gc_live_data_size_bytes Size of old generation memory pool after a full GC
# TYPE jvm_gc_live_data_size_bytes gauge
# full GC 后老年代的大小
jvm_gc_live_data_size_bytes 4.5382728E7
# HELP tomcat_servlet_request_seconds  
# TYPE tomcat_servlet_request_seconds summary
# tomcat servlet 总计数和总用时
tomcat_servlet_request_seconds_count{name="default",} 0.0
tomcat_servlet_request_seconds_sum{name="default",} 0.0
# HELP jvm_gc_memory_promoted_bytes_total Count of positive increases in the size of the old generation memory pool before GC to after GC
# TYPE jvm_gc_memory_promoted_bytes_total counter
# gc 前后老年代的变化
jvm_gc_memory_promoted_bytes_total 2.9610144E7
# HELP tomcat_cache_access_total  
# TYPE tomcat_cache_access_total counter
# tomcat 缓存使用数
tomcat_cache_access_total 0.0
# HELP tomcat_servlet_request_max_seconds  
# TYPE tomcat_servlet_request_max_seconds gauge
# tomcat servlet 请求用时最长记录
tomcat_servlet_request_max_seconds{name="default",} 0.0
# HELP jvm_classes_unloaded_total The total number of classes unloaded since the Java virtual machine has started execution
# TYPE jvm_classes_unloaded_total counter
# jvm 开启后被卸载的 class 数量
jvm_classes_unloaded_total 2.0
# HELP jvm_threads_daemon The current number of live daemon threads
# TYPE jvm_threads_daemon gauge
# 守护线程数
jvm_threads_daemon 45.0
# HELP process_uptime_seconds The uptime of the Java virtual machine
# TYPE process_uptime_seconds gauge jvm
# jvm 开起时长
process_uptime_seconds 465.841
# HELP tomcat_threads_busy  
# TYPE tomcat_threads_busy gauge
# 啥意思
tomcat_threads_busy{name="http-nio-8086",} 1.0
# HELP tomcat_cache_hit_total  
# TYPE tomcat_cache_hit_total counter
# tomcat 缓存命中数
tomcat_cache_hit_total 0.0
# HELP system_cpu_usage The "recent cpu usage" for the whole system
# TYPE system_cpu_usage gauge
# 系统cpu 用量
system_cpu_usage 0.17499222940238857
# HELP jvm_buffer_total_capacity_bytes An estimate of the total capacity of the buffers in this pool
# TYPE jvm_buffer_total_capacity_bytes gauge
# jvm 缓冲区大小
jvm_buffer_total_capacity_bytes{id="direct",} 81920.0
jvm_buffer_total_capacity_bytes{id="mapped",} 0.0
# HELP tomcat_servlet_error_total  
# TYPE tomcat_servlet_error_total counter
# tomcat servlet 错误计数
tomcat_servlet_error_total{name="default",} 0.0
# HELP jvm_classes_loaded The number of classes that are currently loaded in the Java virtual machine
# TYPE jvm_classes_loaded gauge
# 加载 class 数量
jvm_classes_loaded 11610.0
# HELP tomcat_global_error_total  
# TYPE tomcat_global_error_total counter
# tomcat 全局错误计数
tomcat_global_error_total{name="http-nio-8086",} 0.0
# HELP jvm_buffer_count An estimate of the number of buffers in the pool
# TYPE jvm_buffer_count gauge
# tomcat 缓存数？
jvm_buffer_count{id="direct",} 10.0
jvm_buffer_count{id="mapped",} 0.0
# HELP tomcat_threads_config_max  
# TYPE tomcat_threads_config_max gauge
# tomcat 配置线程数
tomcat_threads_config_max{name="http-nio-8086",} 200.0
```