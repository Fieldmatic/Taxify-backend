package com.kts.taxify.services.message;

import com.kts.taxify.exception.UserNotFoundException;
import com.kts.taxify.model.Message;
import com.kts.taxify.repository.MessageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class GetMessageById {
    private final MessageRepository messageRepository;

    public Message execute(final UUID id) {
        return messageRepository.findById(id).orElseThrow(UserNotFoundException::new);
    }
}
