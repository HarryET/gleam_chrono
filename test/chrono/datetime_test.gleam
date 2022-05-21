import chrono/datetime
import chrono/date
import chrono/time
import gleeunit/should
import gleam/io

pub fn datetime_external_test() {
  datetime.now()
  |> io.debug
}

pub fn datetime_to_date_1_test() {
  datetime.DateTime(0, 0, 0, 0, 0, 0)
  |> datetime.to_date
  |> should.equal(date.Date(0, 0, 0))
}

pub fn datetime_to_date_2_test() {
  datetime.DateTime(2022, 8, 19, 0, 0, 0)
  |> datetime.to_date
  |> should.equal(date.Date(2022, 8, 19))
}

pub fn datetime_to_date_3_test() {
  datetime.DateTime(2022, 8, 19, 12, 22, 58)
  |> datetime.to_date
  |> should.equal(date.Date(2022, 8, 19))
}

pub fn datetime_to_time_1_test() {
  datetime.DateTime(0, 0, 0, 0, 0, 0)
  |> datetime.to_time
  |> should.equal(time.Time(0, 0, 0))
}

pub fn datetime_to_time_2_test() {
  datetime.DateTime(0, 0, 0, 18, 25, 17)
  |> datetime.to_time
  |> should.equal(time.Time(18, 25, 17))
}

pub fn datetime_to_time_3_test() {
  datetime.DateTime(2022, 8, 19, 18, 25, 17)
  |> datetime.to_time
  |> should.equal(time.Time(18, 25, 17))
}
