RSpec.describe TaggedObjectsLogger do
  # (:all) to delete logging file after all tests end
  # after(:all) do
  #   File.delete('development.log') if File.exist?('development.log')
  # end

  let(:logger) { TaggedLogger.new('development.log') }
  let(:error_message) { FactoryBot.build(:error_message) }
  let(:debug_message) { FactoryBot.build(:debug_message) }
  let(:info_message) { FactoryBot.build(:info_message) }
  let(:fatal_message) { FactoryBot.build(:fatal_message) }
  let(:unknown_message) { FactoryBot.build(:unknown_message) }
  let(:warn_message) { FactoryBot.build(:warn_message) }
  let(:multiple_lines_message) { FactoryBot.build(:multiple_lines_message) }

  def generate_log_message_with_tags(message, tags)
    logging_message = ''
    lines = message.split("\n")
    lines.each do |line|
      logging_message += (tags + line + "\n")
    end
    logging_message
  end

  it 'has a version number' do
    expect(TaggedObjectsLogger::VERSION).not_to be nil
  end

  it 'returns single line tagged message with single object' do
    objects = FactoryBot.build_list(:test_object, 1)
    expect(logger.send(:logging_message, error_message.message, objects)).to be
    generate_log_message_with_tags(error_message.message,
                                   logger.send(:tags, objects))
  end

  it 'returns single line tagged message with multiple objects' do
    objects = FactoryBot.build_list(:test_object, 5)
    expect(logger.send(:logging_message, error_message.message, objects)).to be
    generate_log_message_with_tags(error_message.message,
                                   logger.send(:tags, objects))
  end

  it 'returns multiline message with multiple objects' do
    objects = FactoryBot.build_list(:test_object, 5)
    expect(logger.send(:logging_message,
                       multiple_lines_message.message, objects)).to be
    generate_log_message_with_tags(multiple_lines_message.message,
                                   logger.send(:tags, objects))
  end

  it 'doesn\'t accept nil message' do
    expect(logger.send(:logging_message,
                       nil, FactoryBot.build_list(:test_object, 1))).to be nil
  end

  it 'doesn\'t accept nil objects list' do
    expect(logger.send(:logging_message, error_message.message, nil)).to be nil
  end

  it 'logs Info and returns boolean status' do
    expect(logger.info(info_message.message,
                       *FactoryBot.build_list(:test_object, 3))).to be true
  end

  it 'logs error message and returns boolean status' do
    expect(logger.error(error_message.message,
                        *FactoryBot.build_list(:test_object, 3))).to be true
  end

  it 'logs debug message and returns boolean status' do
    expect(logger.debug(debug_message.message,
                        *FactoryBot.build_list(:test_object, 3))).to be true
  end

  it 'logs fatal error message and returns boolean status' do
    expect(logger.fatal(fatal_message.message,
                        *FactoryBot.build_list(:test_object, 3))).to be true
  end

  it 'logs unknown message and returns boolean status' do
    expect(logger.unknown(unknown_message.message,
                          *FactoryBot.build_list(:test_object, 3))).to be true
  end

  it 'logs warning message and returns boolean status' do
    expect(logger.warn(warn_message.message,
                       *FactoryBot.build_list(:test_object, 3))).to be true
  end

  it 'logs empty list of objects' do
    expect(logger.info(info_message.message)).to be true
  end

  it 'logs message of non string type' do
    expect(logger.info(info_message)).to be true
  end
end
