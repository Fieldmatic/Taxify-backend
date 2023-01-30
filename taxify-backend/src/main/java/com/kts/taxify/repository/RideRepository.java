package com.kts.taxify.repository;

import com.kts.taxify.model.Driver;
import com.kts.taxify.model.Ride;
import com.kts.taxify.model.RideStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface RideRepository extends JpaRepository<Ride, UUID> {
    Ride getRideByDriverAndStatusOrStatusOrStatus(Driver driver, RideStatus accepted, RideStatus arrived, RideStatus started);

    Ride getRideBySenderAndStatus(String senderEmail, RideStatus status);
}
