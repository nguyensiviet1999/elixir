defmodule Doc18 do
    def regex_test do
      regex = ~r/test/
      "test game" =~ regex
      "HELLO" =~ ~r(hello)i #true
      "HELLO" =~ ~r(hello) #false i dùng khi muốn không phân biệt hoa thường
    end
    def strings_test do
      ~s(hello my friend
      nande"suka") #sử dụng ~s hữu dụng khi trong câu có dấu ""
    end
    def charlist_test do
      ~c(hello world '2021') # ’’があるときに〜ｃを使うことが有用です。
    end
    def wordlist do
      ~w(foo bar bat)
      ~w(foo bar bat)a
    end
    def calendar_sigils do
      d= ~D[2021-03-16]
      d.day
      d.month
      d.year
      d.calendar
      t = ~T[20:00:07.0]
      t.hour
      t.minute
      t.second
      # t.microsecond
      naive_date_time = ~N[2019-10-31 23:00:07]
      date_time = ~U[2019-10-31 23:00:07Z]
      date_time.time_zone
    end
    def sigil_i(string, []), do: String.to_integer(string)
    def sigil_i(string, [?n]), do: -String.to_integer(string) #goi ~i(13)
end
