package com.kts.taxify.exception;

import com.kts.taxify.translations.Translation;
import lombok.Getter;

@Getter
public enum ExceptionKeys implements Translation {
    USER_NOT_FOUND("user_not_found"),
    USER_NOT_ACTIVE("user_not_active"),

    USER_BLOCKED("user_blocked"),
    UNAUTHORIZED("unauthorized"),
    AUTH_TOKEN_EXPIRED("auth_token_expired"),

    BAD_LOGIN_CREDENTIALS("bad_login_credentials"),

    USER_ALREADY_EXISTS("user_already_exists"),
    MISSING_AUTHENTICATION("missing_authentication");

    private final String code;

    ExceptionKeys(final String code) {
        this.code = code;
    }

    @Override
    public String getCode() {
        return code;
    }
}
