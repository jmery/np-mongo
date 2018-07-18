pkg_origin=jmery
pkg_name=np-mongodb
pkg_version=3.2.10
pkg_description="Mongodb for National-Parks app"
pkg_maintainer="Jeff Mery <jmery@chef.io>"
pkg_license=('AGPL-3.0')
pkg_deps=(core/mongodb core/mongo-tools)
pkg_svc_run="mongod --config $pkg_svc_config_path/mongod.conf"
pkg_svc_user=hab
pkg_svc_group=hab
pkg_exports=(
  [port]=mongod.net.port
)
pkg_exposes=(port)

do_build() {
  return 0
}

do_install() {
  cp -r $PLAN_CONTEXT/national-parks.json ${PREFIX}
}
