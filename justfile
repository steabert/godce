set shell := ["nu", "-c"]

set export

gcflags_dbg := "-l -N -d=wrapglobalmapdbg"
ldflags_dbg := "-dumpdep"

build name:
    cd hello-{{name}}; go build -gcflags='all={{gcflags_dbg}}' -ldflags='{{ldflags_dbg}}' -o main main.go e> log

build-opt name:
    go build -ldflags="-s -w" -o {{name}}/main-opt {{name}}/main.go

demo name: (build name) (size name) (entry name)

entry name: (build name)
    cd hello-{{name}}; readelf -h main | grep Entry;

size name:
    cd hello-{{name}}; ls main | get size | format filesize kB

debug name:
    dlv exec {{name}}/main
