package com.kts.taxify.services.ride;

import com.kts.taxify.converter.RideConverter;
import com.kts.taxify.dto.request.ride.RequestedRideRequest;
import com.kts.taxify.model.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.HashSet;


@Service
@RequiredArgsConstructor
public class CreateAcceptedRideForOnePassenger {
    private final SaveRide saveRide;

    @Transactional(readOnly = false)
    public Ride execute(RequestedRideRequest requestedRideRequest, Driver driver, Passenger sender) {
        Route route = RideConverter.routeRequestToRoute(requestedRideRequest.getRouteRequest(), driver.getVehicle().getType());
        Ride ride = Ride.builder().driver(driver).status(RideStatus.ACCEPTED).route(route).passengers(new HashSet<>(Collections.singletonList(sender))).sender(sender.getEmail()).build();
        return saveRide.execute(ride);
    }

}
