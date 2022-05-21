pub type Time {
  Time(hour: Int, minute: Int, second: Int)
}

if erlang {
  import chrono/internal/erlang

  pub fn now() -> Time {
    let localtime = erlang.now()
    Time(localtime.time.hour, localtime.time.minute, localtime.time.second)
  }
}

if javascript {
  pub external fn now() -> Time =
    "../chrono_ffi.mjs" "time_now"
}
