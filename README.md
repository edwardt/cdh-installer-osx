OS X Installer for the Cloudera Distribution for Hadoop
=======================================================

This allows for creating an installer for Hadoop for Mac OS X that attempts to integrate Hadoop in a typical manner with the OS:

 * Most files are put in `/Library/Cloudera`.
 * `launchd` will be used for stopping and starting the various daemons.
 * Paths are added to `PATH` by way of `/etc/paths.d`.

Issues
------

 * Daemons don't correctly start up for Hadoop and I haven't done anything yet for ZooKeeper.
 * I haven't put HBase, Hive, Flume or Hue in here yet.
 * Permissions are not quite right yet for various files. This is pretty frustrating.
 * It would be nice to automate setting `JAVA_HOME` for those things that need it. (This is just a matter of setting `JAVA_HOME` to the output of `/usr/libexec/java_home`.)
 * I haven't done anything to deal with updating to newer versions yet.

Notes
-----

 * To build the installer, you download the various `.tar.gz` files from Cloudera, unpack them and put them in the right places under `dist` such as `dist/Hadoop/Library/Cloudera/hadoop-0.20.2+737`.
 * There are symlinks without version numbers (and capitalized) that all go into `/Library/Cloudera` on the target system. If the version being installed changes, then the symlink must also be updated.
 * I will have another script added at some point that handles setting up the permissions correctly once I figure out what all is needed there.
 * I run the `CDH3.pmdoc/*.xml` files through `xmllint` to format them nicer for diffs with the `prettyxml.sh` script.

