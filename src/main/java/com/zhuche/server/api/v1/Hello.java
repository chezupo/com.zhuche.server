/**
 * Desc    The controllers is part of server
 * Author  wuchuheng <root@wuchuheng.com>
 * Blog    https://wuchuheng.com
 * DATE    2022/2/13
 * Listen  MIT
 */

package com.zhuche.server.api.v1;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
@AllArgsConstructor
@Slf4j
public class Hello {
//    private final DistrictRepository districtRepository;
//    private final CityRepository cityRepository;
//
//    @GetMapping("/hello")
//    public String hello() throws BadHanyuPinyinOutputFormatCombination {
//        final var cities = cityRepository.findAll();
//        for (var it = cities.iterator(); it.hasNext();) {
//            var city = it.next();
//            if (city.getPinyin() == null) {
//                var name = city.getName().equals("市辖区") || "省直辖县级行政区划".equals(city.getName()) ? city.getProvince().getName() : city.getName();
//                name = name.replace("市", "");
//                name = name.replace("自治州", "");
//                name = name.replace("省", "");
//                name = name.replace("自治区", "");
//                var dist = districtRepository.findByName(name);
//                if (dist.size() > 0) {
//                    city.setPinyin(dist.get(0).getPinyin());
//                } else {
//                    var pinyin = convertPinyin(name.toCharArray());
//                    city.setPinyin(pinyin);
//                    log.info("{}", pinyin);
//                }
//            }
//        }
//        cityRepository.saveAll(cities);
//
//        return "hello";
//    }
//
//    private String convertPinyin(char[] strs) throws BadHanyuPinyinOutputFormatCombination {
//        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
//        defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
//        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
//        defaultFormat.setVCharType(HanyuPinyinVCharType.WITH_V);
//        final List<String> res = new ArrayList<>();
//        for (var str : strs) {
//            var pinyin = Arrays.stream(PinyinHelper.toHanyuPinyinStringArray(str, defaultFormat)).toList().get(0);
//            res.add(pinyin);
//        }
//
//        return String.join("", res);
//    }
}
