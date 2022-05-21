pub type Date {
  Date(year: Int, month: Int, day: Int)
}

if erlang {
  pub external fn now() -> Date =
    "chrono_ffi" "date_now"
}

if javascript {
  pub external fn now() -> Date =
    "../chrono_ffi.mjs" "date_now"
}
