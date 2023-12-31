package com.kts.taxify.controller;

import com.kts.taxify.dto.request.passenger.CreateComplaintRequest;
import com.kts.taxify.dto.request.passenger.CreatePassengerRequest;
import com.kts.taxify.dto.request.passenger.FacebookSignupRequest;
import com.kts.taxify.dto.request.passenger.GoogleSignupRequest;
import com.kts.taxify.dto.request.ride.RideReviewRequest;
import com.kts.taxify.dto.response.AuthTokenResponse;
import com.kts.taxify.dto.response.GoogleAuthTokenResponse;
import com.kts.taxify.dto.response.UserResponse;
import com.kts.taxify.model.AccountProvider;
import com.kts.taxify.model.Permission;
import com.kts.taxify.security.HasAnyPermission;
import com.kts.taxify.services.passenger.*;
import com.kts.taxify.services.ride.CreateRideReview;
import com.stripe.exception.StripeException;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.UUID;

@RestController
@RequestMapping("/passenger")
@RequiredArgsConstructor
public class PassengerController {
    private final CreatePassenger createPassenger;
    private final SignUpFacebook signUpFacebook;
    private final SignUpGoogle signUpGoogle;
    private final ActivateEmail activateEmail;
    private final CreateRideReview createRideReview;

    private final LeaveComplaint leaveComplaint;

    private final CheckIfReviewAvailable checkIfReviewAvailable;

    @PostMapping("/create")
    public UserResponse createPassenger(@Valid @RequestBody final CreatePassengerRequest createPassengerRequest)
            throws StripeException {
        return createPassenger.execute(createPassengerRequest, AccountProvider.LOCAL);
    }

    @PostMapping("/facebook-signup")
    public AuthTokenResponse signupFacebook(@Valid @RequestBody final FacebookSignupRequest facebookSignUpRequest)
            throws StripeException {
        return signUpFacebook.execute(facebookSignUpRequest);
    }

    @PostMapping("/google-signup")
    public GoogleAuthTokenResponse signupGoogle(@Valid @RequestBody final GoogleSignupRequest googleSignupRequest)
            throws GeneralSecurityException, IOException {
        return signUpGoogle.execute(googleSignupRequest);
    }

    @PutMapping("/activateEmail/{token}")
    public void activateEmail(@PathVariable("token") final String token) {
        activateEmail.execute(token);
    }

    @PostMapping("/complaint")
    @HasAnyPermission({Permission.LEAVE_COMPLAINT})
    public void leaveComplaint(@RequestBody CreateComplaintRequest createComplaintRequest) {
        leaveComplaint.execute(createComplaintRequest.getComplaintReason());
    }

    @PostMapping(value = "/review")
    @HasAnyPermission({Permission.ADD_RIDE_REVIEW})
    public void createRideReview(@RequestBody RideReviewRequest rideReviewRequest) {
        createRideReview.execute(rideReviewRequest);
    }

    @GetMapping(value = "reviewAvailable/{rideId}")
    @HasAnyPermission({Permission.ADD_RIDE_REVIEW})
    public boolean isReviewAvailable(@PathVariable("rideId") final String rideId) {
        return checkIfReviewAvailable.execute(UUID.fromString(rideId));
    }
}
