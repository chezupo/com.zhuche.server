package com.zhuche.server.services;

import com.zhuche.server.dto.request.holiday.SetHolidayRequest;
import com.zhuche.server.model.Holiday;
import com.zhuche.server.repositories.HolidayRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
@AllArgsConstructor
public class HolidayService {
    private final HolidayRepository holidayRepository;

    public Holiday setHoliday(SetHolidayRequest request) {
        final var oldHoliday = holidayRepository.findByDay(request.getDay());
        if (oldHoliday == null){
            return holidayRepository.save(
                Holiday.builder()
                    .day(request.getDay())
                    .mark(request.getMark())
                    .build()
            );
        } else {
            oldHoliday.setDay(request.getDay());
            oldHoliday.setMark(request.getMark());
            return holidayRepository.save(oldHoliday);
        }
    }

    public List<Holiday> getHolidays(Long dateTimeStamp) {
        final var time = new Date(dateTimeStamp);
        final var cal = Calendar.getInstance();
        cal.setTime(time);
        final var lastDate = cal.getActualMaximum(Calendar.DATE);
        final var endTimeStamp = dateTimeStamp + 60L * 60L * 24L * lastDate * 1000 - 1000;

        return holidayRepository.findAllByTimeStamp(dateTimeStamp, endTimeStamp);
    }

    public void deleteHolidayById(Long id) {
        holidayRepository.deleteById(id);
    }
}
