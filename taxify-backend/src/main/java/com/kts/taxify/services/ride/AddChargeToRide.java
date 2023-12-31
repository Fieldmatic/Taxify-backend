package com.kts.taxify.services.ride;

import com.kts.taxify.model.Charge;
import com.kts.taxify.model.Ride;
import com.kts.taxify.services.checkout.SaveCharge;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class AddChargeToRide {
    private final SaveCharge saveCharge;
    private final SaveRide saveRide;

    public Ride execute(Ride ride, String customerId, String paymentMethodId) {
        Charge charge = Charge.builder()
                .ride(ride)
                .customerId(customerId)
                .paymentMethodId(paymentMethodId)
                .build();
        charge = saveCharge.execute(charge);
        List<Charge> charges;
        if (ride.getPassengersCharges() == null) {
            charges = new ArrayList<>();
        } else {
            charges = ride.getPassengersCharges();
        }
        charges.add(charge);
        ride.setPassengersCharges(charges);
        return saveRide.execute(ride);
    }
}
