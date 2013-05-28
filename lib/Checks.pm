desc "Check the OS and version.";
task "check-os", sub {
  my $hostname = run "hostname";
  say $hostname ." - ". get_operating_system() ." - ". operating_system_version();
};

desc "Check the memory.";
task "check-mem", sub {
  my $hostname = run "hostname";
  say $hostname ." - ". run "cat /proc/meminfo |grep MemTotal:";
};

desc "Check the load.";
task "check-load", sub {
    my $hostname = run "hostname";
    say $hostname ." - ". run "w |head -n1";
};

desc "Check the CPU.";
task "check-cpu", sub {
  my $hostname = run "hostname";
  say $hostname ." - ". run "cat /proc/cpuinfo |grep \"model name\"";
};

desc "Check the Java version.";
task "check-java-version", sub {
  my $hostname = run "hostname";
  say $hostname ." - ". run "java -version 2>&1 | head -n1 | grep -v \"command not found\"";
};

desc "Check the uptime.";
task "check-uptime", sub {
  my $hostname = run "hostname";
  say $hostname ." - \t\t". run "uptime";
};
