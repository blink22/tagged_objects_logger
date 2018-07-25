require 'tagged_objects_logger/version'
require 'logger'

# TaggedLogger class inherit from Ruby logger and override its methods
class TaggedLogger < Logger
  attr_accessor :log_path

  def self.instance
    @instance ||= TaggedLogger.new
  end

  def initialize(*path)
    @log_path = path.empty? ? Rails.root.join("log/#{Rails.env}.log") : path.first
    super(@log_path).as_json
  end

  def info(message = nil, *objects_list)
    super(logging_message(message, objects_list))
  end

  def error(message = nil, *objects_list)
    super(logging_message(message, objects_list))
  end

  def debug(message = nil, *objects_list)
    super(logging_message(message, objects_list))
  end

  def unknown(message = nil, *objects_list)
    super(logging_message(message, objects_list))
  end

  def fatal(message = nil, *objects_list)
    super(logging_message(message, objects_list))
  end

  def warn(message = nil, *objects_list)
    super(logging_message(message, objects_list))
  end

  private

  def logging_message(message, objects_list)
    return nil if message.nil? || objects_list.nil?
    parse_message(message, tags(objects_list))
  end

  def tags(objects_list)
    tags = ''
    objects_list.each do |object|
      next if object.nil?
      tags += "[#{object.class}_#{object.id}]: "
    end
    tags
  end

  def parse_message(message, tags)
    tagged_message = ''
    message_lines = message.to_s.split("\n")
    message_lines.each do |line|
      tagged_message += (tags + line + "\n")
    end
    tagged_message
  end
end
