class ChatroomModelTest < ActiveSupport::TestCase
  test "create chatroom" do
    label = 'test chatroom'
    chatroom = Chatroom.create(label: label)
    
    assert chatroom.valid?
    assert_equal chatroom.label, label
  end

  test 'associate nature code' do
    nature_code = NatureCode.create(name: 'test nature code')
    chatroom = Chatroom.create(label: 'test chatroom', nature_code_id: nature_code.id)
    
    assert chatroom.valid?
    assert_equal chatroom.nature_code_id, nature_code.id
  end

  test 'associate chat messages' do
    n_chat_messages = 3

    nature_code = NatureCode.create(name: 'test nature code')
    chatroom = Chatroom.create(label: 'test chatroom', nature_code: nature_code)
    chat_messages = n_chat_messages.times { |i| ChatMessage.create(message: "chat message #{i + 1}", chatroom: chatroom) }
    
    assert chatroom.valid?
    assert_equal chatroom.chat_messages.count, n_chat_messages
  end
end