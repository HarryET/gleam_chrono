import chrono/date.{Date}
import chrono/time.{Time}

pub type DateTime {
  DateTime(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int)
}

pub fn to_date(datetime: DateTime) -> Date {
  Date(datetime.year, datetime.month, datetime.day)
}

pub fn to_time(datetime: DateTime) -> Time {
  Time(datetime.hour, datetime.minute, datetime.second)
}

if erlang {
  import chrono/internal/erlang

  pub fn now() -> DateTime {
    let localtime = erlang.now()

    // TODO (HarryET): Figure out why this causes a `badarg` error with erlang
    DateTime(
      localtime.date.year,
      localtime.date.month,
      localtime.date.day,
      localtime.time.hour,
      localtime.time.minute,
      localtime.time.second,
    )
  }
}

if javascript {
  pub external fn now() -> DateTime =
    "../chrono_ffi.mjs" "datetime_now"
}
