alias doc="docker"
alias pose="docker-compose"

up() {
  set -x
  pose up --force-recreate "$@"
  set +x
}

build() {
  set -x
  pose build "$@"
  set +x
}

check_conf() {
  set -x
  pose exec x /usr/sbin/nginx -t
  set +x
}

dsh() {
  set -x
  pose exec x sh
  set +x
}

down() {
  set -x
  pose down "$@"
  set +x
}

logs() {
  set -x
  pose logs -f "$@"
  set +x
}

vol() {
  set -x
  doc volume inspect $1
  set +x
}
