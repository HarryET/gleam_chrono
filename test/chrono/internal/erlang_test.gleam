if erlang {
  import chrono/internal/erlang

  pub fn erlang_now_test() {
    erlang.now()
  }
}
