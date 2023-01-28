package com.kts.taxify.services.simulations;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kts.taxify.converter.DriverConverter;
import com.kts.taxify.dto.response.DriverResponse;
import com.kts.taxify.model.Driver;
import com.kts.taxify.model.Location;
import com.kts.taxify.simulatorModel.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

@Service
@RequiredArgsConstructor
public class SimulateVehicleToClient {
    private final ObjectMapper objectMapper;
    private final GetClosestUnoccupiedDriver getClosestUnoccupiedDriver;

    @Transactional
    public DriverResponse execute(Location clientLocation) throws IOException, InterruptedException {
        Driver driver = getClosestUnoccupiedDriver.execute("Novi Sad", clientLocation);
        Data data = new Data(driver.getVehicle().getId().toString(), driver.getVehicle().getLocation(), clientLocation);
        String dataStringMacOS = objectMapper.writeValueAsString(data);
        String dataStringWindowsOS = dataStringMacOS.replace("\"", "\\\"");
        Process p = new ProcessBuilder("locust", "-f", "vehicleMovementScripts/simulate_to_client.py", "--conf", "vehicleMovementScripts/locust.conf", "--data",dataStringWindowsOS).start();
        int exitVal = p.waitFor();
        return DriverConverter.toDriverResponse(driver);
    }
}
