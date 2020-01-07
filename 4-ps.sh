#!/bin/bash
#question one:查看服务器内存占用较大的前五个 其中-pcpu中-是降序的意思，+是升序
ps -eo pmem,pcpu,pid,ppid,comm --sort -pcpu |head -6


