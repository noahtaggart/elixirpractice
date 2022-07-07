defmodule Sample.Calendar do
  def is_leap_year(year) when rem(year, 400) == 0, do: true
  def is_leap_year(year) when rem(year, 100) ==0, do: false
  def is_leap_year(year) when rem(year, 4) ==0, do: true
  def is_leap_year(year), do: false

  def day_abbreviation2(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "Tu"
      day == :Wednesday -> "W"
      day == :Thursday -> "Th"
      day == :Friday -> "F"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      true -> "Invalid day"

    end
  end
  def day_abbreviation3(day) do
    case day do
      :Monday -> "M"
      :Tuesday -> "Tu"
      :Wednesday -> "W"
      :Thursday -> "Th"
      :Friday -> "F"
      :Saturday -> "Sa"
      :Sunday -> "Su"
      _ -> "Invalid day"

    end
  end

  def describe_date(date) do
    case date do
      {1, _, _} -> "Brand new month!"
      {25, 12, _} -> "Merry Christmas!"
      {25, month, _} -> "Only #{12 - month} more months til Christmas!"
      {31, 10, 1517} -> "The reformation is started"
      {31, 10, _} -> "Happy Halloween"
      {5, 4, year} -> "Happy Birthday ##{year-1993}"
      {_, month, _} when month <= 12 -> "Just an average day"
      {_, _, _} -> "Invalid month"

    end
  end

  def send_tweet(path) do
    case File.read(path) do
      {:ok, data} -> Tweet.send(data)
      {:error, error} -> IO.puts "Could not be opened"
    end
  end

end
