defmodule Doc12 do
  def file_test do
    {:ok, file} = File.open("hello", [:write])
    IO.binwrite(file, "world")
    File.close(file)
    case File.read(file) do
      {:ok, body}      -> # do something with the `body`
      {:error, reason} -> # handle the error caused by `reason`
    end
  end
  def path_test do
    Path.join("foo", "bar") #foo/bar
    Path.expand("~/hello") #"/Users/jose/hello"
  end

end
