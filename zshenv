function xexists() {
  command -v $1 > /dev/null 2>&1
}

function dexists() {
  [ -d $1 ]
}
