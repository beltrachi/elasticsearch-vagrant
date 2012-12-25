#
class storm::nimbus {
  include storm
  include storm::zookeeper
  storm::service{'storm-nimbus': }
  storm::service{'storm-ui': }
  storm::service{'storm-supervisor': }
}
