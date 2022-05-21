if erlang {
  pub type ErlangTime {
    ErlangTime(hour: Int, minute: Int, second: Int)
  }

  pub type ErlangDate {
    ErlangDate(year: Int, month: Int, day: Int)
  }

  pub type ErlangLocalTime {
    ErlangLocalTime(date: ErlangDate, time: ErlangTime)
  }

  pub external fn now() -> ErlangLocalTime =
    "chrono_ffi" "datetime_now"
}
