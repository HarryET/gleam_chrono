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

  pub fn now() -> ErlangLocalTime {
    let #(#(y, mo, d), #(h, m, s)) = now_()
    ErlangLocalTime(ErlangDate(y, mo, d), ErlangTime(h, m, s))
  }

  external fn now_() -> #(#(Int, Int, Int), #(Int, Int, Int)) =
    "chrono_ffi" "datetime_now"
}
