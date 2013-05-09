# CsvStreamer

Streams CSV files one row at a time as live data is generated instead of waiting for the whole file to be created and then sent to the client.

## Installation

Add this line to your application's Gemfile:

    gem 'csv_streamer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csv_streamer

## Usage
In your model:

    class MyModel

      def self.header_row
        CSV::Row([:name, :title], ['Name', 'Title'], true)
      end

      def to_csv_row
        CSV::Row(name: name, title: title)
      end

    end


In your controller:

    stream_csv('data.csv', MyModel.header_row) do |rows|
      MyModel.find_each do |my_model|
        rows << my_model.to_csv_row
      end
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
