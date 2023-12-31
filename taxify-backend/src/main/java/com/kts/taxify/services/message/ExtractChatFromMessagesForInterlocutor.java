package com.kts.taxify.services.message;

import com.kts.taxify.converter.MessageConverter;
import com.kts.taxify.dto.response.ChatResponse;
import com.kts.taxify.dto.response.MessageResponse;
import com.kts.taxify.model.Message;
import com.kts.taxify.model.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;

@Service
@RequiredArgsConstructor
public class ExtractChatFromMessagesForInterlocutor {

    public ChatResponse execute(final Collection<Message> messages, @Nullable final User interlocutor) {
        Collection<MessageResponse> chatMessages = new ArrayList<>();
        for (Message message : messages) {
            // Get messages for all admins
            if (message.getReceiver() == null && interlocutor == null) {
                chatMessages.add(MessageConverter.toMessageResponse(message));
                // Get messages where receiver is selected interlocutor
            } else if (message.getReceiver() != null && message.getReceiver().equals(interlocutor)) {
                chatMessages.add(MessageConverter.toMessageResponse(message));
                // Get messages where sender is selected interlocutor
            } else if (message.getSender().equals(interlocutor)) {
                chatMessages.add(MessageConverter.toMessageResponse(message));
            }
        }
        return MessageConverter.toChatResponse(chatMessages);
    }
}
