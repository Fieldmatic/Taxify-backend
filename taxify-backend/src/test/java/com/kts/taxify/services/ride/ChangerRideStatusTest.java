package com.kts.taxify.services.ride;

import com.kts.taxify.model.NotificationType;
import com.kts.taxify.model.Passenger;
import com.kts.taxify.model.Ride;
import com.kts.taxify.model.RideStatus;
import com.kts.taxify.services.passenger.NotifyPassengerOfChangedRideState;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.HashSet;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class ChangerRideStatusTest {
    @Mock
    private GetDriverAssignedRide getDriverAssignedRide;

    @Mock
    private SaveRide saveRide;

    @Mock
    private NotifyPassengerOfChangedRideState notifyPassengerOfChangedRideState;

    @InjectMocks
    private ChangeRideStatus changeRideStatus;

    @Test
    @DisplayName("Should change ride status when ride start")
    public void shouldRejectRide() {
        Ride testRide = Ride.builder().status(RideStatus.ACCEPTED).sender("test@gmail.com").passengers(new HashSet<>(Arrays.asList(Passenger.builder().email("test@gmail.com").build(),Passenger.builder().email("test1@gmail.com").build(),Passenger.builder().email("test2@gmail.com").build()))).build();

        when(getDriverAssignedRide.execute()).thenReturn(testRide);
        when(saveRide.execute(testRide)).thenReturn(testRide);

        changeRideStatus.execute(RideStatus.STARTED, NotificationType.RIDE_STARTED);

        assertThat(testRide.getStatus()).isEqualTo(RideStatus.STARTED);
        verify(notifyPassengerOfChangedRideState, times(1)).execute("test@gmail.com", NotificationType.RIDE_STARTED);
        verify(notifyPassengerOfChangedRideState, times(1)).execute("test1@gmail.com", NotificationType.RIDE_STARTED);
        verify(notifyPassengerOfChangedRideState, times(1)).execute("test2@gmail.com", NotificationType.RIDE_STARTED);
    }

}
