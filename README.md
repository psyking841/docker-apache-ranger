This image is derived from https://github.com/coheigea/testcases/tree/master/apache/docker/ranger

The only purpose of my image is to provide a base image for customization and not have to go through the long building process.
This image will pre-build the Apache Ranger with all plugins in `**/opt/apache-ranger-${RANGER_VERSION}/target/**` folder.

**Lite Version**
The lite version of this image deletes downloaded dependencies so it is much smaller.

* Plugins List
```
[INFO] Reactor Summary:
[INFO] 
[INFO] ranger 1.2.0 ....................................... SUCCESS [05:56 min]
[INFO] Jdbc SQL Connector ................................. SUCCESS [ 13.154 s]
[INFO] Credential Support ................................. SUCCESS [01:25 min]
[INFO] Audit Component .................................... SUCCESS [ 42.266 s]
[INFO] Common library for Plugins ......................... SUCCESS [ 22.663 s]
[INFO] Installer Support Component ........................ SUCCESS [  2.051 s]
[INFO] Credential Builder ................................. SUCCESS [  7.683 s]
[INFO] Embedded Web Server Invoker ........................ SUCCESS [ 12.492 s]
[INFO] Key Management Service ............................. SUCCESS [ 48.453 s]
[INFO] ranger-plugin-classloader .......................... SUCCESS [  3.698 s]
[INFO] HBase Security Plugin Shim ......................... SUCCESS [ 57.908 s]
[INFO] HBase Security Plugin .............................. SUCCESS [ 23.950 s]
[INFO] Hdfs Security Plugin ............................... SUCCESS [ 30.276 s]
[INFO] Hive Security Plugin ............................... SUCCESS [04:04 min]
[INFO] Knox Security Plugin Shim .......................... SUCCESS [01:46 min]
[INFO] Knox Security Plugin ............................... SUCCESS [02:30 min]
[INFO] Storm Security Plugin .............................. SUCCESS [ 45.884 s]
[INFO] YARN Security Plugin ............................... SUCCESS [  4.690 s]
[INFO] Ranger Util ........................................ SUCCESS [  4.210 s]
[INFO] Unix Authentication Client ......................... SUCCESS [  6.060 s]
[INFO] Security Admin Web Application ..................... SUCCESS [03:21 min]
[INFO] KAFKA Security Plugin .............................. SUCCESS [ 31.705 s]
[INFO] SOLR Security Plugin ............................... SUCCESS [01:08 min]
[INFO] NiFi Security Plugin ............................... SUCCESS [  8.430 s]
[INFO] NiFi Registry Security Plugin ...................... SUCCESS [  8.259 s]
[INFO] Unix User Group Synchronizer ....................... SUCCESS [01:21 min]
[INFO] Ldap Config Check Tool ............................. SUCCESS [  7.253 s]
[INFO] Unix Authentication Service ........................ SUCCESS [  4.132 s]
[INFO] KMS Security Plugin ................................ SUCCESS [ 10.228 s]
[INFO] Tag Synchronizer ................................... SUCCESS [ 46.584 s]
[INFO] Hdfs Security Plugin Shim .......................... SUCCESS [  2.776 s]
[INFO] Hive Security Plugin Shim .......................... SUCCESS [ 12.590 s]
[INFO] YARN Security Plugin Shim .......................... SUCCESS [  3.806 s]
[INFO] Storm Security Plugin shim ......................... SUCCESS [  4.777 s]
[INFO] KAFKA Security Plugin Shim ......................... SUCCESS [  4.234 s]
[INFO] SOLR Security Plugin Shim .......................... SUCCESS [  4.626 s]
[INFO] Atlas Security Plugin Shim ......................... SUCCESS [  6.166 s]
[INFO] KMS Security Plugin Shim ........................... SUCCESS [  4.945 s]
[INFO] ranger-examples .................................... SUCCESS [  0.075 s]
[INFO] Ranger Examples - Conditions and ContextEnrichers .. SUCCESS [  6.159 s]
[INFO] Ranger Examples - SampleApp ........................ SUCCESS [  4.521 s]
[INFO] Ranger Examples - Ranger Plugin for SampleApp ...... SUCCESS [  4.709 s]
[INFO] Ranger Tools ....................................... SUCCESS [ 21.219 s]
[INFO] Atlas Security Plugin .............................. SUCCESS [  6.165 s]
[INFO] Sqoop Security Plugin .............................. SUCCESS [ 16.789 s]
[INFO] Sqoop Security Plugin Shim ......................... SUCCESS [  3.208 s]
[INFO] Kylin Security Plugin .............................. SUCCESS [01:15 min]
[INFO] Kylin Security Plugin Shim ......................... SUCCESS [  5.168 s]
[INFO] Unix Native Authenticator 1.2.0 .................... SUCCESS [  2.520 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------

```
