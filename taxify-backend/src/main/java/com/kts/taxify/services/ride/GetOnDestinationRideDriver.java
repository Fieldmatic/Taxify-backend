package com.kts.taxify.services.ride;

import com.kts.taxify.model.Driver;
import com.kts.taxify.model.Ride;
import com.kts.taxify.model.RideStatus;
import com.kts.taxify.repository.RideRepository;
import com.kts.taxify.services.auth.GetSelf;
import com.kts.taxify.services.user.GetUserByEmail;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class GetOnDestinationRideDriver {

    private final GetUserByEmail getUserByEmail;
    private final GetSelf getSelf;
    private final RideRepository rideRepository;

    @Transactional
    public Ride execute() {
        Driver driver = (Driver) getUserByEmail.execute(getSelf.execute().getEmail());
        return rideRepository.getRideByDriverAndStatus(driver, RideStatus.ON_DESTINATION);
    }
}
