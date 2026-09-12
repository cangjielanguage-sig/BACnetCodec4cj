public package BACnetCodec4cj.BACnet.Enum

import BACnetCodec4cj.InterFaces.*
import BACnetCodec4cj.BACnetCodecException.*
import std.convert.*

public enum EngineeringUnits_Enum <: IFromUInt32<EngineeringUnits_Enum> & IToUInt32 & ToString & IFromString<EngineeringUnits_Enum> {
    | square_meters // (0)
    | square_feet // (1)
    | milliamperes // (2)
    | amperes // (3)
    | ohms // (4)
    | volts // (5)
    | kilovolts // (6)
    | megavolts // (7)
    | volt_amperes // (8)
    | kilovolt_amperes // (9)
    | megavolt_amperes // (10)
    | volt_amperes_reactive // (11)
    | kilovolt_amperes_reactive // (12)
    | megavolt_amperes_reactive // (13)
    | degrees_phase // (14)
    | power_factor // (15)
    | joules // (16)
    | kilojoules // (17)
    | watt_hours // (18)
    | kilowatt_hours // (19)
    | btus // (20)
    | therms // (21)
    | ton_hours // (22)
    | joules_per_kilogram_dry_air // (23)
    | btus_per_pound_dry_air // (24)
    | cycles_per_hour // (25)
    | cycles_per_minute // (26)
    | hertz // (27)
    | grams_of_water_per_kilogram_dry_air // (28)
    | percent_relative_humidity // (29)
    | millimeters // (30)
    | meters // (31)
    | inches // (32)
    | feet // (33)
    | watts_per_square_foot // (34)
    | watts_per_square_meter // (35)
    | lumens // (36)
    | luxes // (37)
    | foot_candles // (38)
    | kilograms // (39)
    | pounds_mass // (40)
    | tons // (41)
    | kilograms_per_second // (42)
    | kilograms_per_minute // (43)
    | kilograms_per_hour // (44)
    | pounds_mass_per_minute // (45)
    | pounds_mass_per_hour // (46)
    | watts // (47)
    | kilowatts // (48)
    | megawatts // (49)
    | btus_per_hour // (50)
    | horsepower // (51)
    | tons_refrigeration // (52)
    | pascals // (53)
    | kilopascals // (54)
    | bars // (55)
    | pounds_force_per_square_inch // (56)
    | centimeters_of_water // (57)
    | inches_of_water // (58)
    | millimeters_of_mercury // (59)
    | centimeters_of_mercury // (60)
    | inches_of_mercury // (61)
    | degrees_celsius // (62)
    | degrees_kelvin // (63)
    | degrees_fahrenheit // (64)
    | degree_days_celsius // (65)
    | degree_days_fahrenheit // (66)
    | years // (67)
    | months // (68)
    | weeks // (69)
    | days // (70)
    | hours // (71)
    | minutes // (72)
    | seconds // (73)
    | meters_per_second // (74)
    | kilometers_per_hour // (75)
    | feet_per_second // (76)
    | feet_per_minute // (77)
    | miles_per_hour // (78)
    | cubic_feet // (79)
    | cubic_meters // (80)
    | imperial_gallons // (81)
    | liters // (82)
    | us_gallons // (83)
    | cubic_feet_per_minute // (84)
    | cubic_meters_per_second // (85)
    | imperial_gallons_per_minute // (86)
    | liters_per_second // (87)
    | liters_per_minute // (88)
    | us_gallons_per_minute // (89)
    | degrees_angular // (90)
    | degrees_celsius_per_hour // (91)
    | degrees_celsius_per_minute // (92)
    | degrees_fahrenheit_per_hour // (93)
    | degrees_fahrenheit_per_minute // (94)
    | no_units // (95)
    | parts_per_million // (96)
    | parts_per_billion // (97)
    | percent // (98)
    | percent_per_second // (99)
    | per_minute // (100)
    | per_second // (101)
    | psi_per_degree_fahrenheit // (102)
    | radians // (103)
    | revolutions_per_minute // (104)
    | currency1 // (105)
    | currency2 // (106)
    | currency3 // (107)
    | currency4 // (108)
    | currency5 // (109)
    | currency6 // (110)
    | currency7 // (111)
    | currency8 // (112)
    | currency9 // (113)
    | currency10 // (114)
    | square_inches // (115)
    | square_centimeters // (116)
    | btus_per_pound // (117)
    | centimeters // (118)
    | pounds_mass_per_second // (119)
    | delta_degrees_fahrenheit // (120)
    | delta_degrees_kelvin // (121)
    | kiloohms // (122)
    | megaohms // (123)
    | millivolts // (124)
    | kilojoules_per_kilogram // (125)
    | megajoules // (126)
    | joules_per_degree_kelvin // (127)
    | joules_per_kilogram_degree_kelvin // (128)
    | kilohertz // (129)
    | megahertz // (130)
    | per_hour // (131)
    | milliwatts // (132)
    | hectopascals // (133)
    | millibars // (134)
    | cubic_meters_per_hour // (135)
    | liters_per_hour // (136)
    | kilowatt_hours_per_square_meter // (137)
    | kilowatt_hours_per_square_foot // (138)
    | megajoules_per_square_meter // (139)
    | megajoules_per_square_foot // (140)
    | watts_per_square_meter_degree_kelvin // (141)
    | cubic_feet_per_second // (142)
    | percent_obscuration_per_foot // (143)
    | percent_obscuration_per_meter // (144)
    | milliohms // (145)
    | megawatt_hours // (146)
    | kilo_btus // (147)
    | mega_btus // (148)
    | kilojoules_per_kilogram_dry_air // (149)
    | megajoules_per_kilogram_dry_air // (150)
    | kilojoules_per_degree_kelvin // (151)
    | megajoules_per_degree_kelvin // (152)
    | newton // (153)
    | grams_per_second // (154)
    | grams_per_minute // (155)
    | tons_per_hour // (156)
    | kilo_btus_per_hour // (157)
    | hundredths_seconds // (158)
    | milliseconds // (159)
    | newton_meters // (160)
    | millimeters_per_second // (161)
    | millimeters_per_minute // (162)
    | meters_per_minute // (163)
    | meters_per_hour // (164)
    | cubic_meters_per_minute // (165)
    | meters_per_second_per_second // (166)
    | amperes_per_meter // (167)
    | amperes_per_square_meter // (168)
    | ampere_square_meters // (169)
    | farads // (170)
    | henrys // (171)
    | ohm_meters // (172)
    | siemens // (173)
    | siemens_per_meter // (174)
    | teslas // (175)
    | volts_per_degree_kelvin // (176)
    | volts_per_meter // (177)
    | webers // (178)
    | candelas // (179)
    | candelas_per_square_meter // (180)
    | degrees_kelvin_per_hour // (181)
    | degrees_kelvin_per_minute // (182)
    | joule_seconds // (183)
    | radians_per_second // (184)
    | square_meters_per_newton // (185)
    | kilograms_per_cubic_meter // (186)
    | newton_seconds // (187)
    | watts_per_meter_per_degree_kelvin // (189)
    | microsiemens // (190)
    | cubic_feet_per_hour // (191)
    | us_gallons_per_hour // (192)
    | kilometers // (193)
    | micrometers // (194)
    | grams // (195)
    | milligrams // (196)
    | milliliters // (197)
    | milliliters_per_second // (198)
    | decibels // (199)
    | decibels_millivolt // (200)
    | decibels_volt // (201)
    | millisiemens // (202)
    | watt_hours_reactive // (203)
    | kilowatt_hours_reactive // (204)
    | megawatt_hours_reactive // (205)
    | per_mille // (207)
    | grams_per_gram // (208)
    | kilograms_per_kilogram // (209)
    | grams_per_kilogram // (210)
    | milligrams_per_gram // (211)
    | milligrams_per_kilogram // (212)
    | grams_per_milliliter // (213)
    | grams_per_liter // (214)
    | milligrams_per_liter // (215)
    | micrograms_per_liter // (216)
    | grams_per_cubic_meter // (217)
    | milligrams_per_cubic_meter // (218)
    | micrograms_per_cubic_meter // (219)
    | nanograms_per_cubic_meter // (220)
    | grams_per_cubic_centimeter // (221)
    | becquerels // (222)
    | kilobecquerels // (223)
    | megabecquerels // (224)
    | gray // (225)
    | milligray // (226)
    | microgray // (227)
    | sieverts // (228)
    | millisieverts // (229)
    | microsieverts // (230)
    | microsieverts_per_hour // (231)
    | decibels_a // (232)
    | nephelometric_turbidity_unit // (233)
    | ph // (234)
    | grams_per_square_meter // (235)
    | minutes_per_degree_kelvin // (236)
    | ohm_meter_squared_per_meter // (237)
    | ampere_seconds // (238)
    | volt_ampere_hours // (239)
    | kilovolt_ampere_hours // (240)
    | megavolt_ampere_hours // (241)
    | volt_ampere_hours_reactive // (242)
    | kilovolt_ampere_hours_reactive // (243)
    | megavolt_ampere_hours_reactive // (244)
    | volt_square_hours // (245)
    | ampere_square_hours // (246)
    | joule_per_hours // (247)
    | cubic_feet_per_day // (248)
    | cubic_meters_per_day // (249)
    | watt_hours_per_cubic_meter // (250)
    | joules_per_cubic_meter // (251)
    | mole_percent // (252)
    | pascal_seconds // (253)
    | million_standard_cubic_feet_per_minute // (254)
    | standard_cubic_feet_per_day // (47808)
    | million_standard_cubic_feet_per_day // (47809)
    | thousand_cubic_feet_per_day // (47810)
    | thousand_standard_cubic_feet_per_day // (47811)
    | pounds_mass_per_day // (47812)
    | millirems // (47814)
    | millirems_per_hour // (47815)
    | degrees_lovibond // (47816)
    | alcohol_by_volume // (47817)
    | international_bittering_units // (47818)
    | european_bitterness_units // (47819)
    | degrees_plato // (47820)
    | specific_gravity // (47821)
    | european_brewing_convention // (47822)
    | reserved(UInt32) // 协议中保留(reserved)但未定义的兼容值
    | non_standardized(UInt32) // 厂商扩展值(Clause 23)，非 ASHRAE 定义

    public static func fromUInt32(arg_tag: UInt32): EngineeringUnits_Enum {
        match (arg_tag) {
            case 0 => EngineeringUnits_Enum.square_meters
            case 1 => EngineeringUnits_Enum.square_feet
            case 2 => EngineeringUnits_Enum.milliamperes
            case 3 => EngineeringUnits_Enum.amperes
            case 4 => EngineeringUnits_Enum.ohms
            case 5 => EngineeringUnits_Enum.volts
            case 6 => EngineeringUnits_Enum.kilovolts
            case 7 => EngineeringUnits_Enum.megavolts
            case 8 => EngineeringUnits_Enum.volt_amperes
            case 9 => EngineeringUnits_Enum.kilovolt_amperes
            case 10 => EngineeringUnits_Enum.megavolt_amperes
            case 11 => EngineeringUnits_Enum.volt_amperes_reactive
            case 12 => EngineeringUnits_Enum.kilovolt_amperes_reactive
            case 13 => EngineeringUnits_Enum.megavolt_amperes_reactive
            case 14 => EngineeringUnits_Enum.degrees_phase
            case 15 => EngineeringUnits_Enum.power_factor
            case 16 => EngineeringUnits_Enum.joules
            case 17 => EngineeringUnits_Enum.kilojoules
            case 18 => EngineeringUnits_Enum.watt_hours
            case 19 => EngineeringUnits_Enum.kilowatt_hours
            case 20 => EngineeringUnits_Enum.btus
            case 21 => EngineeringUnits_Enum.therms
            case 22 => EngineeringUnits_Enum.ton_hours
            case 23 => EngineeringUnits_Enum.joules_per_kilogram_dry_air
            case 24 => EngineeringUnits_Enum.btus_per_pound_dry_air
            case 25 => EngineeringUnits_Enum.cycles_per_hour
            case 26 => EngineeringUnits_Enum.cycles_per_minute
            case 27 => EngineeringUnits_Enum.hertz
            case 28 => EngineeringUnits_Enum.grams_of_water_per_kilogram_dry_air
            case 29 => EngineeringUnits_Enum.percent_relative_humidity
            case 30 => EngineeringUnits_Enum.millimeters
            case 31 => EngineeringUnits_Enum.meters
            case 32 => EngineeringUnits_Enum.inches
            case 33 => EngineeringUnits_Enum.feet
            case 34 => EngineeringUnits_Enum.watts_per_square_foot
            case 35 => EngineeringUnits_Enum.watts_per_square_meter
            case 36 => EngineeringUnits_Enum.lumens
            case 37 => EngineeringUnits_Enum.luxes
            case 38 => EngineeringUnits_Enum.foot_candles
            case 39 => EngineeringUnits_Enum.kilograms
            case 40 => EngineeringUnits_Enum.pounds_mass
            case 41 => EngineeringUnits_Enum.tons
            case 42 => EngineeringUnits_Enum.kilograms_per_second
            case 43 => EngineeringUnits_Enum.kilograms_per_minute
            case 44 => EngineeringUnits_Enum.kilograms_per_hour
            case 45 => EngineeringUnits_Enum.pounds_mass_per_minute
            case 46 => EngineeringUnits_Enum.pounds_mass_per_hour
            case 47 => EngineeringUnits_Enum.watts
            case 48 => EngineeringUnits_Enum.kilowatts
            case 49 => EngineeringUnits_Enum.megawatts
            case 50 => EngineeringUnits_Enum.btus_per_hour
            case 51 => EngineeringUnits_Enum.horsepower
            case 52 => EngineeringUnits_Enum.tons_refrigeration
            case 53 => EngineeringUnits_Enum.pascals
            case 54 => EngineeringUnits_Enum.kilopascals
            case 55 => EngineeringUnits_Enum.bars
            case 56 => EngineeringUnits_Enum.pounds_force_per_square_inch
            case 57 => EngineeringUnits_Enum.centimeters_of_water
            case 58 => EngineeringUnits_Enum.inches_of_water
            case 59 => EngineeringUnits_Enum.millimeters_of_mercury
            case 60 => EngineeringUnits_Enum.centimeters_of_mercury
            case 61 => EngineeringUnits_Enum.inches_of_mercury
            case 62 => EngineeringUnits_Enum.degrees_celsius
            case 63 => EngineeringUnits_Enum.degrees_kelvin
            case 64 => EngineeringUnits_Enum.degrees_fahrenheit
            case 65 => EngineeringUnits_Enum.degree_days_celsius
            case 66 => EngineeringUnits_Enum.degree_days_fahrenheit
            case 67 => EngineeringUnits_Enum.years
            case 68 => EngineeringUnits_Enum.months
            case 69 => EngineeringUnits_Enum.weeks
            case 70 => EngineeringUnits_Enum.days
            case 71 => EngineeringUnits_Enum.hours
            case 72 => EngineeringUnits_Enum.minutes
            case 73 => EngineeringUnits_Enum.seconds
            case 74 => EngineeringUnits_Enum.meters_per_second
            case 75 => EngineeringUnits_Enum.kilometers_per_hour
            case 76 => EngineeringUnits_Enum.feet_per_second
            case 77 => EngineeringUnits_Enum.feet_per_minute
            case 78 => EngineeringUnits_Enum.miles_per_hour
            case 79 => EngineeringUnits_Enum.cubic_feet
            case 80 => EngineeringUnits_Enum.cubic_meters
            case 81 => EngineeringUnits_Enum.imperial_gallons
            case 82 => EngineeringUnits_Enum.liters
            case 83 => EngineeringUnits_Enum.us_gallons
            case 84 => EngineeringUnits_Enum.cubic_feet_per_minute
            case 85 => EngineeringUnits_Enum.cubic_meters_per_second
            case 86 => EngineeringUnits_Enum.imperial_gallons_per_minute
            case 87 => EngineeringUnits_Enum.liters_per_second
            case 88 => EngineeringUnits_Enum.liters_per_minute
            case 89 => EngineeringUnits_Enum.us_gallons_per_minute
            case 90 => EngineeringUnits_Enum.degrees_angular
            case 91 => EngineeringUnits_Enum.degrees_celsius_per_hour
            case 92 => EngineeringUnits_Enum.degrees_celsius_per_minute
            case 93 => EngineeringUnits_Enum.degrees_fahrenheit_per_hour
            case 94 => EngineeringUnits_Enum.degrees_fahrenheit_per_minute
            case 95 => EngineeringUnits_Enum.no_units
            case 96 => EngineeringUnits_Enum.parts_per_million
            case 97 => EngineeringUnits_Enum.parts_per_billion
            case 98 => EngineeringUnits_Enum.percent
            case 99 => EngineeringUnits_Enum.percent_per_second
            case 100 => EngineeringUnits_Enum.per_minute
            case 101 => EngineeringUnits_Enum.per_second
            case 102 => EngineeringUnits_Enum.psi_per_degree_fahrenheit
            case 103 => EngineeringUnits_Enum.radians
            case 104 => EngineeringUnits_Enum.revolutions_per_minute
            case 105 => EngineeringUnits_Enum.currency1
            case 106 => EngineeringUnits_Enum.currency2
            case 107 => EngineeringUnits_Enum.currency3
            case 108 => EngineeringUnits_Enum.currency4
            case 109 => EngineeringUnits_Enum.currency5
            case 110 => EngineeringUnits_Enum.currency6
            case 111 => EngineeringUnits_Enum.currency7
            case 112 => EngineeringUnits_Enum.currency8
            case 113 => EngineeringUnits_Enum.currency9
            case 114 => EngineeringUnits_Enum.currency10
            case 115 => EngineeringUnits_Enum.square_inches
            case 116 => EngineeringUnits_Enum.square_centimeters
            case 117 => EngineeringUnits_Enum.btus_per_pound
            case 118 => EngineeringUnits_Enum.centimeters
            case 119 => EngineeringUnits_Enum.pounds_mass_per_second
            case 120 => EngineeringUnits_Enum.delta_degrees_fahrenheit
            case 121 => EngineeringUnits_Enum.delta_degrees_kelvin
            case 122 => EngineeringUnits_Enum.kiloohms
            case 123 => EngineeringUnits_Enum.megaohms
            case 124 => EngineeringUnits_Enum.millivolts
            case 125 => EngineeringUnits_Enum.kilojoules_per_kilogram
            case 126 => EngineeringUnits_Enum.megajoules
            case 127 => EngineeringUnits_Enum.joules_per_degree_kelvin
            case 128 => EngineeringUnits_Enum.joules_per_kilogram_degree_kelvin
            case 129 => EngineeringUnits_Enum.kilohertz
            case 130 => EngineeringUnits_Enum.megahertz
            case 131 => EngineeringUnits_Enum.per_hour
            case 132 => EngineeringUnits_Enum.milliwatts
            case 133 => EngineeringUnits_Enum.hectopascals
            case 134 => EngineeringUnits_Enum.millibars
            case 135 => EngineeringUnits_Enum.cubic_meters_per_hour
            case 136 => EngineeringUnits_Enum.liters_per_hour
            case 137 => EngineeringUnits_Enum.kilowatt_hours_per_square_meter
            case 138 => EngineeringUnits_Enum.kilowatt_hours_per_square_foot
            case 139 => EngineeringUnits_Enum.megajoules_per_square_meter
            case 140 => EngineeringUnits_Enum.megajoules_per_square_foot
            case 141 => EngineeringUnits_Enum.watts_per_square_meter_degree_kelvin
            case 142 => EngineeringUnits_Enum.cubic_feet_per_second
            case 143 => EngineeringUnits_Enum.percent_obscuration_per_foot
            case 144 => EngineeringUnits_Enum.percent_obscuration_per_meter
            case 145 => EngineeringUnits_Enum.milliohms
            case 146 => EngineeringUnits_Enum.megawatt_hours
            case 147 => EngineeringUnits_Enum.kilo_btus
            case 148 => EngineeringUnits_Enum.mega_btus
            case 149 => EngineeringUnits_Enum.kilojoules_per_kilogram_dry_air
            case 150 => EngineeringUnits_Enum.megajoules_per_kilogram_dry_air
            case 151 => EngineeringUnits_Enum.kilojoules_per_degree_kelvin
            case 152 => EngineeringUnits_Enum.megajoules_per_degree_kelvin
            case 153 => EngineeringUnits_Enum.newton
            case 154 => EngineeringUnits_Enum.grams_per_second
            case 155 => EngineeringUnits_Enum.grams_per_minute
            case 156 => EngineeringUnits_Enum.tons_per_hour
            case 157 => EngineeringUnits_Enum.kilo_btus_per_hour
            case 158 => EngineeringUnits_Enum.hundredths_seconds
            case 159 => EngineeringUnits_Enum.milliseconds
            case 160 => EngineeringUnits_Enum.newton_meters
            case 161 => EngineeringUnits_Enum.millimeters_per_second
            case 162 => EngineeringUnits_Enum.millimeters_per_minute
            case 163 => EngineeringUnits_Enum.meters_per_minute
            case 164 => EngineeringUnits_Enum.meters_per_hour
            case 165 => EngineeringUnits_Enum.cubic_meters_per_minute
            case 166 => EngineeringUnits_Enum.meters_per_second_per_second
            case 167 => EngineeringUnits_Enum.amperes_per_meter
            case 168 => EngineeringUnits_Enum.amperes_per_square_meter
            case 169 => EngineeringUnits_Enum.ampere_square_meters
            case 170 => EngineeringUnits_Enum.farads
            case 171 => EngineeringUnits_Enum.henrys
            case 172 => EngineeringUnits_Enum.ohm_meters
            case 173 => EngineeringUnits_Enum.siemens
            case 174 => EngineeringUnits_Enum.siemens_per_meter
            case 175 => EngineeringUnits_Enum.teslas
            case 176 => EngineeringUnits_Enum.volts_per_degree_kelvin
            case 177 => EngineeringUnits_Enum.volts_per_meter
            case 178 => EngineeringUnits_Enum.webers
            case 179 => EngineeringUnits_Enum.candelas
            case 180 => EngineeringUnits_Enum.candelas_per_square_meter
            case 181 => EngineeringUnits_Enum.degrees_kelvin_per_hour
            case 182 => EngineeringUnits_Enum.degrees_kelvin_per_minute
            case 183 => EngineeringUnits_Enum.joule_seconds
            case 184 => EngineeringUnits_Enum.radians_per_second
            case 185 => EngineeringUnits_Enum.square_meters_per_newton
            case 186 => EngineeringUnits_Enum.kilograms_per_cubic_meter
            case 187 => EngineeringUnits_Enum.newton_seconds
            case 189 => EngineeringUnits_Enum.watts_per_meter_per_degree_kelvin
            case 190 => EngineeringUnits_Enum.microsiemens
            case 191 => EngineeringUnits_Enum.cubic_feet_per_hour
            case 192 => EngineeringUnits_Enum.us_gallons_per_hour
            case 193 => EngineeringUnits_Enum.kilometers
            case 194 => EngineeringUnits_Enum.micrometers
            case 195 => EngineeringUnits_Enum.grams
            case 196 => EngineeringUnits_Enum.milligrams
            case 197 => EngineeringUnits_Enum.milliliters
            case 198 => EngineeringUnits_Enum.milliliters_per_second
            case 199 => EngineeringUnits_Enum.decibels
            case 200 => EngineeringUnits_Enum.decibels_millivolt
            case 201 => EngineeringUnits_Enum.decibels_volt
            case 202 => EngineeringUnits_Enum.millisiemens
            case 203 => EngineeringUnits_Enum.watt_hours_reactive
            case 204 => EngineeringUnits_Enum.kilowatt_hours_reactive
            case 205 => EngineeringUnits_Enum.megawatt_hours_reactive
            case 207 => EngineeringUnits_Enum.per_mille
            case 208 => EngineeringUnits_Enum.grams_per_gram
            case 209 => EngineeringUnits_Enum.kilograms_per_kilogram
            case 210 => EngineeringUnits_Enum.grams_per_kilogram
            case 211 => EngineeringUnits_Enum.milligrams_per_gram
            case 212 => EngineeringUnits_Enum.milligrams_per_kilogram
            case 213 => EngineeringUnits_Enum.grams_per_milliliter
            case 214 => EngineeringUnits_Enum.grams_per_liter
            case 215 => EngineeringUnits_Enum.milligrams_per_liter
            case 216 => EngineeringUnits_Enum.micrograms_per_liter
            case 217 => EngineeringUnits_Enum.grams_per_cubic_meter
            case 218 => EngineeringUnits_Enum.milligrams_per_cubic_meter
            case 219 => EngineeringUnits_Enum.micrograms_per_cubic_meter
            case 220 => EngineeringUnits_Enum.nanograms_per_cubic_meter
            case 221 => EngineeringUnits_Enum.grams_per_cubic_centimeter
            case 222 => EngineeringUnits_Enum.becquerels
            case 223 => EngineeringUnits_Enum.kilobecquerels
            case 224 => EngineeringUnits_Enum.megabecquerels
            case 225 => EngineeringUnits_Enum.gray
            case 226 => EngineeringUnits_Enum.milligray
            case 227 => EngineeringUnits_Enum.microgray
            case 228 => EngineeringUnits_Enum.sieverts
            case 229 => EngineeringUnits_Enum.millisieverts
            case 230 => EngineeringUnits_Enum.microsieverts
            case 231 => EngineeringUnits_Enum.microsieverts_per_hour
            case 232 => EngineeringUnits_Enum.decibels_a
            case 233 => EngineeringUnits_Enum.nephelometric_turbidity_unit
            case 234 => EngineeringUnits_Enum.ph
            case 235 => EngineeringUnits_Enum.grams_per_square_meter
            case 236 => EngineeringUnits_Enum.minutes_per_degree_kelvin
            case 237 => EngineeringUnits_Enum.ohm_meter_squared_per_meter
            case 238 => EngineeringUnits_Enum.ampere_seconds
            case 239 => EngineeringUnits_Enum.volt_ampere_hours
            case 240 => EngineeringUnits_Enum.kilovolt_ampere_hours
            case 241 => EngineeringUnits_Enum.megavolt_ampere_hours
            case 242 => EngineeringUnits_Enum.volt_ampere_hours_reactive
            case 243 => EngineeringUnits_Enum.kilovolt_ampere_hours_reactive
            case 244 => EngineeringUnits_Enum.megavolt_ampere_hours_reactive
            case 245 => EngineeringUnits_Enum.volt_square_hours
            case 246 => EngineeringUnits_Enum.ampere_square_hours
            case 247 => EngineeringUnits_Enum.joule_per_hours
            case 248 => EngineeringUnits_Enum.cubic_feet_per_day
            case 249 => EngineeringUnits_Enum.cubic_meters_per_day
            case 250 => EngineeringUnits_Enum.watt_hours_per_cubic_meter
            case 251 => EngineeringUnits_Enum.joules_per_cubic_meter
            case 252 => EngineeringUnits_Enum.mole_percent
            case 253 => EngineeringUnits_Enum.pascal_seconds
            case 254 => EngineeringUnits_Enum.million_standard_cubic_feet_per_minute
            case 47808 => EngineeringUnits_Enum.standard_cubic_feet_per_day
            case 47809 => EngineeringUnits_Enum.million_standard_cubic_feet_per_day
            case 47810 => EngineeringUnits_Enum.thousand_cubic_feet_per_day
            case 47811 => EngineeringUnits_Enum.thousand_standard_cubic_feet_per_day
            case 47812 => EngineeringUnits_Enum.pounds_mass_per_day
            case 47814 => EngineeringUnits_Enum.millirems
            case 47815 => EngineeringUnits_Enum.millirems_per_hour
            case 47816 => EngineeringUnits_Enum.degrees_lovibond
            case 47817 => EngineeringUnits_Enum.alcohol_by_volume
            case 47818 => EngineeringUnits_Enum.international_bittering_units
            case 47819 => EngineeringUnits_Enum.european_bitterness_units
            case 47820 => EngineeringUnits_Enum.degrees_plato
            case 47821 => EngineeringUnits_Enum.specific_gravity
            case 47822 => EngineeringUnits_Enum.european_brewing_convention
            case x where x <= 255 => EngineeringUnits_Enum.reserved(x)
            case y where y > 255 && y <= 65535 => EngineeringUnits_Enum.non_standardized(y)
            case _ => throw DecodeException("协议错误.无效标签值")
        }
    }

    public func toUInt32(): UInt32 {
        match (this) {
            case EngineeringUnits_Enum.square_meters => 0
            case EngineeringUnits_Enum.square_feet => 1
            case EngineeringUnits_Enum.milliamperes => 2
            case EngineeringUnits_Enum.amperes => 3
            case EngineeringUnits_Enum.ohms => 4
            case EngineeringUnits_Enum.volts => 5
            case EngineeringUnits_Enum.kilovolts => 6
            case EngineeringUnits_Enum.megavolts => 7
            case EngineeringUnits_Enum.volt_amperes => 8
            case EngineeringUnits_Enum.kilovolt_amperes => 9
            case EngineeringUnits_Enum.megavolt_amperes => 10
            case EngineeringUnits_Enum.volt_amperes_reactive => 11
            case EngineeringUnits_Enum.kilovolt_amperes_reactive => 12
            case EngineeringUnits_Enum.megavolt_amperes_reactive => 13
            case EngineeringUnits_Enum.degrees_phase => 14
            case EngineeringUnits_Enum.power_factor => 15
            case EngineeringUnits_Enum.joules => 16
            case EngineeringUnits_Enum.kilojoules => 17
            case EngineeringUnits_Enum.watt_hours => 18
            case EngineeringUnits_Enum.kilowatt_hours => 19
            case EngineeringUnits_Enum.btus => 20
            case EngineeringUnits_Enum.therms => 21
            case EngineeringUnits_Enum.ton_hours => 22
            case EngineeringUnits_Enum.joules_per_kilogram_dry_air => 23
            case EngineeringUnits_Enum.btus_per_pound_dry_air => 24
            case EngineeringUnits_Enum.cycles_per_hour => 25
            case EngineeringUnits_Enum.cycles_per_minute => 26
            case EngineeringUnits_Enum.hertz => 27
            case EngineeringUnits_Enum.grams_of_water_per_kilogram_dry_air => 28
            case EngineeringUnits_Enum.percent_relative_humidity => 29
            case EngineeringUnits_Enum.millimeters => 30
            case EngineeringUnits_Enum.meters => 31
            case EngineeringUnits_Enum.inches => 32
            case EngineeringUnits_Enum.feet => 33
            case EngineeringUnits_Enum.watts_per_square_foot => 34
            case EngineeringUnits_Enum.watts_per_square_meter => 35
            case EngineeringUnits_Enum.lumens => 36
            case EngineeringUnits_Enum.luxes => 37
            case EngineeringUnits_Enum.foot_candles => 38
            case EngineeringUnits_Enum.kilograms => 39
            case EngineeringUnits_Enum.pounds_mass => 40
            case EngineeringUnits_Enum.tons => 41
            case EngineeringUnits_Enum.kilograms_per_second => 42
            case EngineeringUnits_Enum.kilograms_per_minute => 43
            case EngineeringUnits_Enum.kilograms_per_hour => 44
            case EngineeringUnits_Enum.pounds_mass_per_minute => 45
            case EngineeringUnits_Enum.pounds_mass_per_hour => 46
            case EngineeringUnits_Enum.watts => 47
            case EngineeringUnits_Enum.kilowatts => 48
            case EngineeringUnits_Enum.megawatts => 49
            case EngineeringUnits_Enum.btus_per_hour => 50
            case EngineeringUnits_Enum.horsepower => 51
            case EngineeringUnits_Enum.tons_refrigeration => 52
            case EngineeringUnits_Enum.pascals => 53
            case EngineeringUnits_Enum.kilopascals => 54
            case EngineeringUnits_Enum.bars => 55
            case EngineeringUnits_Enum.pounds_force_per_square_inch => 56
            case EngineeringUnits_Enum.centimeters_of_water => 57
            case EngineeringUnits_Enum.inches_of_water => 58
            case EngineeringUnits_Enum.millimeters_of_mercury => 59
            case EngineeringUnits_Enum.centimeters_of_mercury => 60
            case EngineeringUnits_Enum.inches_of_mercury => 61
            case EngineeringUnits_Enum.degrees_celsius => 62
            case EngineeringUnits_Enum.degrees_kelvin => 63
            case EngineeringUnits_Enum.degrees_fahrenheit => 64
            case EngineeringUnits_Enum.degree_days_celsius => 65
            case EngineeringUnits_Enum.degree_days_fahrenheit => 66
            case EngineeringUnits_Enum.years => 67
            case EngineeringUnits_Enum.months => 68
            case EngineeringUnits_Enum.weeks => 69
            case EngineeringUnits_Enum.days => 70
            case EngineeringUnits_Enum.hours => 71
            case EngineeringUnits_Enum.minutes => 72
            case EngineeringUnits_Enum.seconds => 73
            case EngineeringUnits_Enum.meters_per_second => 74
            case EngineeringUnits_Enum.kilometers_per_hour => 75
            case EngineeringUnits_Enum.feet_per_second => 76
            case EngineeringUnits_Enum.feet_per_minute => 77
            case EngineeringUnits_Enum.miles_per_hour => 78
            case EngineeringUnits_Enum.cubic_feet => 79
            case EngineeringUnits_Enum.cubic_meters => 80
            case EngineeringUnits_Enum.imperial_gallons => 81
            case EngineeringUnits_Enum.liters => 82
            case EngineeringUnits_Enum.us_gallons => 83
            case EngineeringUnits_Enum.cubic_feet_per_minute => 84
            case EngineeringUnits_Enum.cubic_meters_per_second => 85
            case EngineeringUnits_Enum.imperial_gallons_per_minute => 86
            case EngineeringUnits_Enum.liters_per_second => 87
            case EngineeringUnits_Enum.liters_per_minute => 88
            case EngineeringUnits_Enum.us_gallons_per_minute => 89
            case EngineeringUnits_Enum.degrees_angular => 90
            case EngineeringUnits_Enum.degrees_celsius_per_hour => 91
            case EngineeringUnits_Enum.degrees_celsius_per_minute => 92
            case EngineeringUnits_Enum.degrees_fahrenheit_per_hour => 93
            case EngineeringUnits_Enum.degrees_fahrenheit_per_minute => 94
            case EngineeringUnits_Enum.no_units => 95
            case EngineeringUnits_Enum.parts_per_million => 96
            case EngineeringUnits_Enum.parts_per_billion => 97
            case EngineeringUnits_Enum.percent => 98
            case EngineeringUnits_Enum.percent_per_second => 99
            case EngineeringUnits_Enum.per_minute => 100
            case EngineeringUnits_Enum.per_second => 101
            case EngineeringUnits_Enum.psi_per_degree_fahrenheit => 102
            case EngineeringUnits_Enum.radians => 103
            case EngineeringUnits_Enum.revolutions_per_minute => 104
            case EngineeringUnits_Enum.currency1 => 105
            case EngineeringUnits_Enum.currency2 => 106
            case EngineeringUnits_Enum.currency3 => 107
            case EngineeringUnits_Enum.currency4 => 108
            case EngineeringUnits_Enum.currency5 => 109
            case EngineeringUnits_Enum.currency6 => 110
            case EngineeringUnits_Enum.currency7 => 111
            case EngineeringUnits_Enum.currency8 => 112
            case EngineeringUnits_Enum.currency9 => 113
            case EngineeringUnits_Enum.currency10 => 114
            case EngineeringUnits_Enum.square_inches => 115
            case EngineeringUnits_Enum.square_centimeters => 116
            case EngineeringUnits_Enum.btus_per_pound => 117
            case EngineeringUnits_Enum.centimeters => 118
            case EngineeringUnits_Enum.pounds_mass_per_second => 119
            case EngineeringUnits_Enum.delta_degrees_fahrenheit => 120
            case EngineeringUnits_Enum.delta_degrees_kelvin => 121
            case EngineeringUnits_Enum.kiloohms => 122
            case EngineeringUnits_Enum.megaohms => 123
            case EngineeringUnits_Enum.millivolts => 124
            case EngineeringUnits_Enum.kilojoules_per_kilogram => 125
            case EngineeringUnits_Enum.megajoules => 126
            case EngineeringUnits_Enum.joules_per_degree_kelvin => 127
            case EngineeringUnits_Enum.joules_per_kilogram_degree_kelvin => 128
            case EngineeringUnits_Enum.kilohertz => 129
            case EngineeringUnits_Enum.megahertz => 130
            case EngineeringUnits_Enum.per_hour => 131
            case EngineeringUnits_Enum.milliwatts => 132
            case EngineeringUnits_Enum.hectopascals => 133
            case EngineeringUnits_Enum.millibars => 134
            case EngineeringUnits_Enum.cubic_meters_per_hour => 135
            case EngineeringUnits_Enum.liters_per_hour => 136
            case EngineeringUnits_Enum.kilowatt_hours_per_square_meter => 137
            case EngineeringUnits_Enum.kilowatt_hours_per_square_foot => 138
            case EngineeringUnits_Enum.megajoules_per_square_meter => 139
            case EngineeringUnits_Enum.megajoules_per_square_foot => 140
            case EngineeringUnits_Enum.watts_per_square_meter_degree_kelvin => 141
            case EngineeringUnits_Enum.cubic_feet_per_second => 142
            case EngineeringUnits_Enum.percent_obscuration_per_foot => 143
            case EngineeringUnits_Enum.percent_obscuration_per_meter => 144
            case EngineeringUnits_Enum.milliohms => 145
            case EngineeringUnits_Enum.megawatt_hours => 146
            case EngineeringUnits_Enum.kilo_btus => 147
            case EngineeringUnits_Enum.mega_btus => 148
            case EngineeringUnits_Enum.kilojoules_per_kilogram_dry_air => 149
            case EngineeringUnits_Enum.megajoules_per_kilogram_dry_air => 150
            case EngineeringUnits_Enum.kilojoules_per_degree_kelvin => 151
            case EngineeringUnits_Enum.megajoules_per_degree_kelvin => 152
            case EngineeringUnits_Enum.newton => 153
            case EngineeringUnits_Enum.grams_per_second => 154
            case EngineeringUnits_Enum.grams_per_minute => 155
            case EngineeringUnits_Enum.tons_per_hour => 156
            case EngineeringUnits_Enum.kilo_btus_per_hour => 157
            case EngineeringUnits_Enum.hundredths_seconds => 158
            case EngineeringUnits_Enum.milliseconds => 159
            case EngineeringUnits_Enum.newton_meters => 160
            case EngineeringUnits_Enum.millimeters_per_second => 161
            case EngineeringUnits_Enum.millimeters_per_minute => 162
            case EngineeringUnits_Enum.meters_per_minute => 163
            case EngineeringUnits_Enum.meters_per_hour => 164
            case EngineeringUnits_Enum.cubic_meters_per_minute => 165
            case EngineeringUnits_Enum.meters_per_second_per_second => 166
            case EngineeringUnits_Enum.amperes_per_meter => 167
            case EngineeringUnits_Enum.amperes_per_square_meter => 168
            case EngineeringUnits_Enum.ampere_square_meters => 169
            case EngineeringUnits_Enum.farads => 170
            case EngineeringUnits_Enum.henrys => 171
            case EngineeringUnits_Enum.ohm_meters => 172
            case EngineeringUnits_Enum.siemens => 173
            case EngineeringUnits_Enum.siemens_per_meter => 174
            case EngineeringUnits_Enum.teslas => 175
            case EngineeringUnits_Enum.volts_per_degree_kelvin => 176
            case EngineeringUnits_Enum.volts_per_meter => 177
            case EngineeringUnits_Enum.webers => 178
            case EngineeringUnits_Enum.candelas => 179
            case EngineeringUnits_Enum.candelas_per_square_meter => 180
            case EngineeringUnits_Enum.degrees_kelvin_per_hour => 181
            case EngineeringUnits_Enum.degrees_kelvin_per_minute => 182
            case EngineeringUnits_Enum.joule_seconds => 183
            case EngineeringUnits_Enum.radians_per_second => 184
            case EngineeringUnits_Enum.square_meters_per_newton => 185
            case EngineeringUnits_Enum.kilograms_per_cubic_meter => 186
            case EngineeringUnits_Enum.newton_seconds => 187
            case EngineeringUnits_Enum.watts_per_meter_per_degree_kelvin => 189
            case EngineeringUnits_Enum.microsiemens => 190
            case EngineeringUnits_Enum.cubic_feet_per_hour => 191
            case EngineeringUnits_Enum.us_gallons_per_hour => 192
            case EngineeringUnits_Enum.kilometers => 193
            case EngineeringUnits_Enum.micrometers => 194
            case EngineeringUnits_Enum.grams => 195
            case EngineeringUnits_Enum.milligrams => 196
            case EngineeringUnits_Enum.milliliters => 197
            case EngineeringUnits_Enum.milliliters_per_second => 198
            case EngineeringUnits_Enum.decibels => 199
            case EngineeringUnits_Enum.decibels_millivolt => 200
            case EngineeringUnits_Enum.decibels_volt => 201
            case EngineeringUnits_Enum.millisiemens => 202
            case EngineeringUnits_Enum.watt_hours_reactive => 203
            case EngineeringUnits_Enum.kilowatt_hours_reactive => 204
            case EngineeringUnits_Enum.megawatt_hours_reactive => 205
            case EngineeringUnits_Enum.per_mille => 207
            case EngineeringUnits_Enum.grams_per_gram => 208
            case EngineeringUnits_Enum.kilograms_per_kilogram => 209
            case EngineeringUnits_Enum.grams_per_kilogram => 210
            case EngineeringUnits_Enum.milligrams_per_gram => 211
            case EngineeringUnits_Enum.milligrams_per_kilogram => 212
            case EngineeringUnits_Enum.grams_per_milliliter => 213
            case EngineeringUnits_Enum.grams_per_liter => 214
            case EngineeringUnits_Enum.milligrams_per_liter => 215
            case EngineeringUnits_Enum.micrograms_per_liter => 216
            case EngineeringUnits_Enum.grams_per_cubic_meter => 217
            case EngineeringUnits_Enum.milligrams_per_cubic_meter => 218
            case EngineeringUnits_Enum.micrograms_per_cubic_meter => 219
            case EngineeringUnits_Enum.nanograms_per_cubic_meter => 220
            case EngineeringUnits_Enum.grams_per_cubic_centimeter => 221
            case EngineeringUnits_Enum.becquerels => 222
            case EngineeringUnits_Enum.kilobecquerels => 223
            case EngineeringUnits_Enum.megabecquerels => 224
            case EngineeringUnits_Enum.gray => 225
            case EngineeringUnits_Enum.milligray => 226
            case EngineeringUnits_Enum.microgray => 227
            case EngineeringUnits_Enum.sieverts => 228
            case EngineeringUnits_Enum.millisieverts => 229
            case EngineeringUnits_Enum.microsieverts => 230
            case EngineeringUnits_Enum.microsieverts_per_hour => 231
            case EngineeringUnits_Enum.decibels_a => 232
            case EngineeringUnits_Enum.nephelometric_turbidity_unit => 233
            case EngineeringUnits_Enum.ph => 234
            case EngineeringUnits_Enum.grams_per_square_meter => 235
            case EngineeringUnits_Enum.minutes_per_degree_kelvin => 236
            case EngineeringUnits_Enum.ohm_meter_squared_per_meter => 237
            case EngineeringUnits_Enum.ampere_seconds => 238
            case EngineeringUnits_Enum.volt_ampere_hours => 239
            case EngineeringUnits_Enum.kilovolt_ampere_hours => 240
            case EngineeringUnits_Enum.megavolt_ampere_hours => 241
            case EngineeringUnits_Enum.volt_ampere_hours_reactive => 242
            case EngineeringUnits_Enum.kilovolt_ampere_hours_reactive => 243
            case EngineeringUnits_Enum.megavolt_ampere_hours_reactive => 244
            case EngineeringUnits_Enum.volt_square_hours => 245
            case EngineeringUnits_Enum.ampere_square_hours => 246
            case EngineeringUnits_Enum.joule_per_hours => 247
            case EngineeringUnits_Enum.cubic_feet_per_day => 248
            case EngineeringUnits_Enum.cubic_meters_per_day => 249
            case EngineeringUnits_Enum.watt_hours_per_cubic_meter => 250
            case EngineeringUnits_Enum.joules_per_cubic_meter => 251
            case EngineeringUnits_Enum.mole_percent => 252
            case EngineeringUnits_Enum.pascal_seconds => 253
            case EngineeringUnits_Enum.million_standard_cubic_feet_per_minute => 254
            case EngineeringUnits_Enum.standard_cubic_feet_per_day => 47808
            case EngineeringUnits_Enum.million_standard_cubic_feet_per_day => 47809
            case EngineeringUnits_Enum.thousand_cubic_feet_per_day => 47810
            case EngineeringUnits_Enum.thousand_standard_cubic_feet_per_day => 47811
            case EngineeringUnits_Enum.pounds_mass_per_day => 47812
            case EngineeringUnits_Enum.millirems => 47814
            case EngineeringUnits_Enum.millirems_per_hour => 47815
            case EngineeringUnits_Enum.degrees_lovibond => 47816
            case EngineeringUnits_Enum.alcohol_by_volume => 47817
            case EngineeringUnits_Enum.international_bittering_units => 47818
            case EngineeringUnits_Enum.european_bitterness_units => 47819
            case EngineeringUnits_Enum.degrees_plato => 47820
            case EngineeringUnits_Enum.specific_gravity => 47821
            case EngineeringUnits_Enum.european_brewing_convention => 47822
            case EngineeringUnits_Enum.reserved(x) => x
            case EngineeringUnits_Enum.non_standardized(y) => y
        }
    }

    public func toString(): String {
        match (this) {
            case EngineeringUnits_Enum.square_meters => "square_meters"
            case EngineeringUnits_Enum.square_feet => "square_feet"
            case EngineeringUnits_Enum.milliamperes => "milliamperes"
            case EngineeringUnits_Enum.amperes => "amperes"
            case EngineeringUnits_Enum.ohms => "ohms"
            case EngineeringUnits_Enum.volts => "volts"
            case EngineeringUnits_Enum.kilovolts => "kilovolts"
            case EngineeringUnits_Enum.megavolts => "megavolts"
            case EngineeringUnits_Enum.volt_amperes => "volt_amperes"
            case EngineeringUnits_Enum.kilovolt_amperes => "kilovolt_amperes"
            case EngineeringUnits_Enum.megavolt_amperes => "megavolt_amperes"
            case EngineeringUnits_Enum.volt_amperes_reactive => "volt_amperes_reactive"
            case EngineeringUnits_Enum.kilovolt_amperes_reactive => "kilovolt_amperes_reactive"
            case EngineeringUnits_Enum.megavolt_amperes_reactive => "megavolt_amperes_reactive"
            case EngineeringUnits_Enum.degrees_phase => "degrees_phase"
            case EngineeringUnits_Enum.power_factor => "power_factor"
            case EngineeringUnits_Enum.joules => "joules"
            case EngineeringUnits_Enum.kilojoules => "kilojoules"
            case EngineeringUnits_Enum.watt_hours => "watt_hours"
            case EngineeringUnits_Enum.kilowatt_hours => "kilowatt_hours"
            case EngineeringUnits_Enum.btus => "btus"
            case EngineeringUnits_Enum.therms => "therms"
            case EngineeringUnits_Enum.ton_hours => "ton_hours"
            case EngineeringUnits_Enum.joules_per_kilogram_dry_air => "joules_per_kilogram_dry_air"
            case EngineeringUnits_Enum.btus_per_pound_dry_air => "btus_per_pound_dry_air"
            case EngineeringUnits_Enum.cycles_per_hour => "cycles_per_hour"
            case EngineeringUnits_Enum.cycles_per_minute => "cycles_per_minute"
            case EngineeringUnits_Enum.hertz => "hertz"
            case EngineeringUnits_Enum.grams_of_water_per_kilogram_dry_air => "grams_of_water_per_kilogram_dry_air"
            case EngineeringUnits_Enum.percent_relative_humidity => "percent_relative_humidity"
            case EngineeringUnits_Enum.millimeters => "millimeters"
            case EngineeringUnits_Enum.meters => "meters"
            case EngineeringUnits_Enum.inches => "inches"
            case EngineeringUnits_Enum.feet => "feet"
            case EngineeringUnits_Enum.watts_per_square_foot => "watts_per_square_foot"
            case EngineeringUnits_Enum.watts_per_square_meter => "watts_per_square_meter"
            case EngineeringUnits_Enum.lumens => "lumens"
            case EngineeringUnits_Enum.luxes => "luxes"
            case EngineeringUnits_Enum.foot_candles => "foot_candles"
            case EngineeringUnits_Enum.kilograms => "kilograms"
            case EngineeringUnits_Enum.pounds_mass => "pounds_mass"
            case EngineeringUnits_Enum.tons => "tons"
            case EngineeringUnits_Enum.kilograms_per_second => "kilograms_per_second"
            case EngineeringUnits_Enum.kilograms_per_minute => "kilograms_per_minute"
            case EngineeringUnits_Enum.kilograms_per_hour => "kilograms_per_hour"
            case EngineeringUnits_Enum.pounds_mass_per_minute => "pounds_mass_per_minute"
            case EngineeringUnits_Enum.pounds_mass_per_hour => "pounds_mass_per_hour"
            case EngineeringUnits_Enum.watts => "watts"
            case EngineeringUnits_Enum.kilowatts => "kilowatts"
            case EngineeringUnits_Enum.megawatts => "megawatts"
            case EngineeringUnits_Enum.btus_per_hour => "btus_per_hour"
            case EngineeringUnits_Enum.horsepower => "horsepower"
            case EngineeringUnits_Enum.tons_refrigeration => "tons_refrigeration"
            case EngineeringUnits_Enum.pascals => "pascals"
            case EngineeringUnits_Enum.kilopascals => "kilopascals"
            case EngineeringUnits_Enum.bars => "bars"
            case EngineeringUnits_Enum.pounds_force_per_square_inch => "pounds_force_per_square_inch"
            case EngineeringUnits_Enum.centimeters_of_water => "centimeters_of_water"
            case EngineeringUnits_Enum.inches_of_water => "inches_of_water"
            case EngineeringUnits_Enum.millimeters_of_mercury => "millimeters_of_mercury"
            case EngineeringUnits_Enum.centimeters_of_mercury => "centimeters_of_mercury"
            case EngineeringUnits_Enum.inches_of_mercury => "inches_of_mercury"
            case EngineeringUnits_Enum.degrees_celsius => "degrees_celsius"
            case EngineeringUnits_Enum.degrees_kelvin => "degrees_kelvin"
            case EngineeringUnits_Enum.degrees_fahrenheit => "degrees_fahrenheit"
            case EngineeringUnits_Enum.degree_days_celsius => "degree_days_celsius"
            case EngineeringUnits_Enum.degree_days_fahrenheit => "degree_days_fahrenheit"
            case EngineeringUnits_Enum.years => "years"
            case EngineeringUnits_Enum.months => "months"
            case EngineeringUnits_Enum.weeks => "weeks"
            case EngineeringUnits_Enum.days => "days"
            case EngineeringUnits_Enum.hours => "hours"
            case EngineeringUnits_Enum.minutes => "minutes"
            case EngineeringUnits_Enum.seconds => "seconds"
            case EngineeringUnits_Enum.meters_per_second => "meters_per_second"
            case EngineeringUnits_Enum.kilometers_per_hour => "kilometers_per_hour"
            case EngineeringUnits_Enum.feet_per_second => "feet_per_second"
            case EngineeringUnits_Enum.feet_per_minute => "feet_per_minute"
            case EngineeringUnits_Enum.miles_per_hour => "miles_per_hour"
            case EngineeringUnits_Enum.cubic_feet => "cubic_feet"
            case EngineeringUnits_Enum.cubic_meters => "cubic_meters"
            case EngineeringUnits_Enum.imperial_gallons => "imperial_gallons"
            case EngineeringUnits_Enum.liters => "liters"
            case EngineeringUnits_Enum.us_gallons => "us_gallons"
            case EngineeringUnits_Enum.cubic_feet_per_minute => "cubic_feet_per_minute"
            case EngineeringUnits_Enum.cubic_meters_per_second => "cubic_meters_per_second"
            case EngineeringUnits_Enum.imperial_gallons_per_minute => "imperial_gallons_per_minute"
            case EngineeringUnits_Enum.liters_per_second => "liters_per_second"
            case EngineeringUnits_Enum.liters_per_minute => "liters_per_minute"
            case EngineeringUnits_Enum.us_gallons_per_minute => "us_gallons_per_minute"
            case EngineeringUnits_Enum.degrees_angular => "degrees_angular"
            case EngineeringUnits_Enum.degrees_celsius_per_hour => "degrees_celsius_per_hour"
            case EngineeringUnits_Enum.degrees_celsius_per_minute => "degrees_celsius_per_minute"
            case EngineeringUnits_Enum.degrees_fahrenheit_per_hour => "degrees_fahrenheit_per_hour"
            case EngineeringUnits_Enum.degrees_fahrenheit_per_minute => "degrees_fahrenheit_per_minute"
            case EngineeringUnits_Enum.no_units => "no_units"
            case EngineeringUnits_Enum.parts_per_million => "parts_per_million"
            case EngineeringUnits_Enum.parts_per_billion => "parts_per_billion"
            case EngineeringUnits_Enum.percent => "percent"
            case EngineeringUnits_Enum.percent_per_second => "percent_per_second"
            case EngineeringUnits_Enum.per_minute => "per_minute"
            case EngineeringUnits_Enum.per_second => "per_second"
            case EngineeringUnits_Enum.psi_per_degree_fahrenheit => "psi_per_degree_fahrenheit"
            case EngineeringUnits_Enum.radians => "radians"
            case EngineeringUnits_Enum.revolutions_per_minute => "revolutions_per_minute"
            case EngineeringUnits_Enum.currency1 => "currency1"
            case EngineeringUnits_Enum.currency2 => "currency2"
            case EngineeringUnits_Enum.currency3 => "currency3"
            case EngineeringUnits_Enum.currency4 => "currency4"
            case EngineeringUnits_Enum.currency5 => "currency5"
            case EngineeringUnits_Enum.currency6 => "currency6"
            case EngineeringUnits_Enum.currency7 => "currency7"
            case EngineeringUnits_Enum.currency8 => "currency8"
            case EngineeringUnits_Enum.currency9 => "currency9"
            case EngineeringUnits_Enum.currency10 => "currency10"
            case EngineeringUnits_Enum.square_inches => "square_inches"
            case EngineeringUnits_Enum.square_centimeters => "square_centimeters"
            case EngineeringUnits_Enum.btus_per_pound => "btus_per_pound"
            case EngineeringUnits_Enum.centimeters => "centimeters"
            case EngineeringUnits_Enum.pounds_mass_per_second => "pounds_mass_per_second"
            case EngineeringUnits_Enum.delta_degrees_fahrenheit => "delta_degrees_fahrenheit"
            case EngineeringUnits_Enum.delta_degrees_kelvin => "delta_degrees_kelvin"
            case EngineeringUnits_Enum.kiloohms => "kiloohms"
            case EngineeringUnits_Enum.megaohms => "megaohms"
            case EngineeringUnits_Enum.millivolts => "millivolts"
            case EngineeringUnits_Enum.kilojoules_per_kilogram => "kilojoules_per_kilogram"
            case EngineeringUnits_Enum.megajoules => "megajoules"
            case EngineeringUnits_Enum.joules_per_degree_kelvin => "joules_per_degree_kelvin"
            case EngineeringUnits_Enum.joules_per_kilogram_degree_kelvin => "joules_per_kilogram_degree_kelvin"
            case EngineeringUnits_Enum.kilohertz => "kilohertz"
            case EngineeringUnits_Enum.megahertz => "megahertz"
            case EngineeringUnits_Enum.per_hour => "per_hour"
            case EngineeringUnits_Enum.milliwatts => "milliwatts"
            case EngineeringUnits_Enum.hectopascals => "hectopascals"
            case EngineeringUnits_Enum.millibars => "millibars"
            case EngineeringUnits_Enum.cubic_meters_per_hour => "cubic_meters_per_hour"
            case EngineeringUnits_Enum.liters_per_hour => "liters_per_hour"
            case EngineeringUnits_Enum.kilowatt_hours_per_square_meter => "kilowatt_hours_per_square_meter"
            case EngineeringUnits_Enum.kilowatt_hours_per_square_foot => "kilowatt_hours_per_square_foot"
            case EngineeringUnits_Enum.megajoules_per_square_meter => "megajoules_per_square_meter"
            case EngineeringUnits_Enum.megajoules_per_square_foot => "megajoules_per_square_foot"
            case EngineeringUnits_Enum.watts_per_square_meter_degree_kelvin => "watts_per_square_meter_degree_kelvin"
            case EngineeringUnits_Enum.cubic_feet_per_second => "cubic_feet_per_second"
            case EngineeringUnits_Enum.percent_obscuration_per_foot => "percent_obscuration_per_foot"
            case EngineeringUnits_Enum.percent_obscuration_per_meter => "percent_obscuration_per_meter"
            case EngineeringUnits_Enum.milliohms => "milliohms"
            case EngineeringUnits_Enum.megawatt_hours => "megawatt_hours"
            case EngineeringUnits_Enum.kilo_btus => "kilo_btus"
            case EngineeringUnits_Enum.mega_btus => "mega_btus"
            case EngineeringUnits_Enum.kilojoules_per_kilogram_dry_air => "kilojoules_per_kilogram_dry_air"
            case EngineeringUnits_Enum.megajoules_per_kilogram_dry_air => "megajoules_per_kilogram_dry_air"
            case EngineeringUnits_Enum.kilojoules_per_degree_kelvin => "kilojoules_per_degree_kelvin"
            case EngineeringUnits_Enum.megajoules_per_degree_kelvin => "megajoules_per_degree_kelvin"
            case EngineeringUnits_Enum.newton => "newton"
            case EngineeringUnits_Enum.grams_per_second => "grams_per_second"
            case EngineeringUnits_Enum.grams_per_minute => "grams_per_minute"
            case EngineeringUnits_Enum.tons_per_hour => "tons_per_hour"
            case EngineeringUnits_Enum.kilo_btus_per_hour => "kilo_btus_per_hour"
            case EngineeringUnits_Enum.hundredths_seconds => "hundredths_seconds"
            case EngineeringUnits_Enum.milliseconds => "milliseconds"
            case EngineeringUnits_Enum.newton_meters => "newton_meters"
            case EngineeringUnits_Enum.millimeters_per_second => "millimeters_per_second"
            case EngineeringUnits_Enum.millimeters_per_minute => "millimeters_per_minute"
            case EngineeringUnits_Enum.meters_per_minute => "meters_per_minute"
            case EngineeringUnits_Enum.meters_per_hour => "meters_per_hour"
            case EngineeringUnits_Enum.cubic_meters_per_minute => "cubic_meters_per_minute"
            case EngineeringUnits_Enum.meters_per_second_per_second => "meters_per_second_per_second"
            case EngineeringUnits_Enum.amperes_per_meter => "amperes_per_meter"
            case EngineeringUnits_Enum.amperes_per_square_meter => "amperes_per_square_meter"
            case EngineeringUnits_Enum.ampere_square_meters => "ampere_square_meters"
            case EngineeringUnits_Enum.farads => "farads"
            case EngineeringUnits_Enum.henrys => "henrys"
            case EngineeringUnits_Enum.ohm_meters => "ohm_meters"
            case EngineeringUnits_Enum.siemens => "siemens"
            case EngineeringUnits_Enum.siemens_per_meter => "siemens_per_meter"
            case EngineeringUnits_Enum.teslas => "teslas"
            case EngineeringUnits_Enum.volts_per_degree_kelvin => "volts_per_degree_kelvin"
            case EngineeringUnits_Enum.volts_per_meter => "volts_per_meter"
            case EngineeringUnits_Enum.webers => "webers"
            case EngineeringUnits_Enum.candelas => "candelas"
            case EngineeringUnits_Enum.candelas_per_square_meter => "candelas_per_square_meter"
            case EngineeringUnits_Enum.degrees_kelvin_per_hour => "degrees_kelvin_per_hour"
            case EngineeringUnits_Enum.degrees_kelvin_per_minute => "degrees_kelvin_per_minute"
            case EngineeringUnits_Enum.joule_seconds => "joule_seconds"
            case EngineeringUnits_Enum.radians_per_second => "radians_per_second"
            case EngineeringUnits_Enum.square_meters_per_newton => "square_meters_per_newton"
            case EngineeringUnits_Enum.kilograms_per_cubic_meter => "kilograms_per_cubic_meter"
            case EngineeringUnits_Enum.newton_seconds => "newton_seconds"
            case EngineeringUnits_Enum.watts_per_meter_per_degree_kelvin => "watts_per_meter_per_degree_kelvin"
            case EngineeringUnits_Enum.microsiemens => "microsiemens"
            case EngineeringUnits_Enum.cubic_feet_per_hour => "cubic_feet_per_hour"
            case EngineeringUnits_Enum.us_gallons_per_hour => "us_gallons_per_hour"
            case EngineeringUnits_Enum.kilometers => "kilometers"
            case EngineeringUnits_Enum.micrometers => "micrometers"
            case EngineeringUnits_Enum.grams => "grams"
            case EngineeringUnits_Enum.milligrams => "milligrams"
            case EngineeringUnits_Enum.milliliters => "milliliters"
            case EngineeringUnits_Enum.milliliters_per_second => "milliliters_per_second"
            case EngineeringUnits_Enum.decibels => "decibels"
            case EngineeringUnits_Enum.decibels_millivolt => "decibels_millivolt"
            case EngineeringUnits_Enum.decibels_volt => "decibels_volt"
            case EngineeringUnits_Enum.millisiemens => "millisiemens"
            case EngineeringUnits_Enum.watt_hours_reactive => "watt_hours_reactive"
            case EngineeringUnits_Enum.kilowatt_hours_reactive => "kilowatt_hours_reactive"
            case EngineeringUnits_Enum.megawatt_hours_reactive => "megawatt_hours_reactive"
            case EngineeringUnits_Enum.per_mille => "per_mille"
            case EngineeringUnits_Enum.grams_per_gram => "grams_per_gram"
            case EngineeringUnits_Enum.kilograms_per_kilogram => "kilograms_per_kilogram"
            case EngineeringUnits_Enum.grams_per_kilogram => "grams_per_kilogram"
            case EngineeringUnits_Enum.milligrams_per_gram => "milligrams_per_gram"
            case EngineeringUnits_Enum.milligrams_per_kilogram => "milligrams_per_kilogram"
            case EngineeringUnits_Enum.grams_per_milliliter => "grams_per_milliliter"
            case EngineeringUnits_Enum.grams_per_liter => "grams_per_liter"
            case EngineeringUnits_Enum.milligrams_per_liter => "milligrams_per_liter"
            case EngineeringUnits_Enum.micrograms_per_liter => "micrograms_per_liter"
            case EngineeringUnits_Enum.grams_per_cubic_meter => "grams_per_cubic_meter"
            case EngineeringUnits_Enum.milligrams_per_cubic_meter => "milligrams_per_cubic_meter"
            case EngineeringUnits_Enum.micrograms_per_cubic_meter => "micrograms_per_cubic_meter"
            case EngineeringUnits_Enum.nanograms_per_cubic_meter => "nanograms_per_cubic_meter"
            case EngineeringUnits_Enum.grams_per_cubic_centimeter => "grams_per_cubic_centimeter"
            case EngineeringUnits_Enum.becquerels => "becquerels"
            case EngineeringUnits_Enum.kilobecquerels => "kilobecquerels"
            case EngineeringUnits_Enum.megabecquerels => "megabecquerels"
            case EngineeringUnits_Enum.gray => "gray"
            case EngineeringUnits_Enum.milligray => "milligray"
            case EngineeringUnits_Enum.microgray => "microgray"
            case EngineeringUnits_Enum.sieverts => "sieverts"
            case EngineeringUnits_Enum.millisieverts => "millisieverts"
            case EngineeringUnits_Enum.microsieverts => "microsieverts"
            case EngineeringUnits_Enum.microsieverts_per_hour => "microsieverts_per_hour"
            case EngineeringUnits_Enum.decibels_a => "decibels_a"
            case EngineeringUnits_Enum.nephelometric_turbidity_unit => "nephelometric_turbidity_unit"
            case EngineeringUnits_Enum.ph => "ph"
            case EngineeringUnits_Enum.grams_per_square_meter => "grams_per_square_meter"
            case EngineeringUnits_Enum.minutes_per_degree_kelvin => "minutes_per_degree_kelvin"
            case EngineeringUnits_Enum.ohm_meter_squared_per_meter => "ohm_meter_squared_per_meter"
            case EngineeringUnits_Enum.ampere_seconds => "ampere_seconds"
            case EngineeringUnits_Enum.volt_ampere_hours => "volt_ampere_hours"
            case EngineeringUnits_Enum.kilovolt_ampere_hours => "kilovolt_ampere_hours"
            case EngineeringUnits_Enum.megavolt_ampere_hours => "megavolt_ampere_hours"
            case EngineeringUnits_Enum.volt_ampere_hours_reactive => "volt_ampere_hours_reactive"
            case EngineeringUnits_Enum.kilovolt_ampere_hours_reactive => "kilovolt_ampere_hours_reactive"
            case EngineeringUnits_Enum.megavolt_ampere_hours_reactive => "megavolt_ampere_hours_reactive"
            case EngineeringUnits_Enum.volt_square_hours => "volt_square_hours"
            case EngineeringUnits_Enum.ampere_square_hours => "ampere_square_hours"
            case EngineeringUnits_Enum.joule_per_hours => "joule_per_hours"
            case EngineeringUnits_Enum.cubic_feet_per_day => "cubic_feet_per_day"
            case EngineeringUnits_Enum.cubic_meters_per_day => "cubic_meters_per_day"
            case EngineeringUnits_Enum.watt_hours_per_cubic_meter => "watt_hours_per_cubic_meter"
            case EngineeringUnits_Enum.joules_per_cubic_meter => "joules_per_cubic_meter"
            case EngineeringUnits_Enum.mole_percent => "mole_percent"
            case EngineeringUnits_Enum.pascal_seconds => "pascal_seconds"
            case EngineeringUnits_Enum.million_standard_cubic_feet_per_minute => "million_standard_cubic_feet_per_minute"
            case EngineeringUnits_Enum.standard_cubic_feet_per_day => "standard_cubic_feet_per_day"
            case EngineeringUnits_Enum.million_standard_cubic_feet_per_day => "million_standard_cubic_feet_per_day"
            case EngineeringUnits_Enum.thousand_cubic_feet_per_day => "thousand_cubic_feet_per_day"
            case EngineeringUnits_Enum.thousand_standard_cubic_feet_per_day => "thousand_standard_cubic_feet_per_day"
            case EngineeringUnits_Enum.pounds_mass_per_day => "pounds_mass_per_day"
            case EngineeringUnits_Enum.millirems => "millirems"
            case EngineeringUnits_Enum.millirems_per_hour => "millirems_per_hour"
            case EngineeringUnits_Enum.degrees_lovibond => "degrees_lovibond"
            case EngineeringUnits_Enum.alcohol_by_volume => "alcohol_by_volume"
            case EngineeringUnits_Enum.international_bittering_units => "international_bittering_units"
            case EngineeringUnits_Enum.european_bitterness_units => "european_bitterness_units"
            case EngineeringUnits_Enum.degrees_plato => "degrees_plato"
            case EngineeringUnits_Enum.specific_gravity => "specific_gravity"
            case EngineeringUnits_Enum.european_brewing_convention => "european_brewing_convention"
            case EngineeringUnits_Enum.reserved(x) => "reserved_${x}"
            case EngineeringUnits_Enum.non_standardized(y) => "non_standardized_${y}"
        }
    }

    public static func fromString(arg_str: String): EngineeringUnits_Enum {
        let normalizedName = arg_str.toAsciiLower().replace("-", "_").trimAscii()
        match (normalizedName) {
            case "square_meters" => EngineeringUnits_Enum.square_meters
            case "square_feet" => EngineeringUnits_Enum.square_feet
            case "milliamperes" => EngineeringUnits_Enum.milliamperes
            case "amperes" => EngineeringUnits_Enum.amperes
            case "ohms" => EngineeringUnits_Enum.ohms
            case "volts" => EngineeringUnits_Enum.volts
            case "kilovolts" => EngineeringUnits_Enum.kilovolts
            case "megavolts" => EngineeringUnits_Enum.megavolts
            case "volt_amperes" => EngineeringUnits_Enum.volt_amperes
            case "kilovolt_amperes" => EngineeringUnits_Enum.kilovolt_amperes
            case "megavolt_amperes" => EngineeringUnits_Enum.megavolt_amperes
            case "volt_amperes_reactive" => EngineeringUnits_Enum.volt_amperes_reactive
            case "kilovolt_amperes_reactive" => EngineeringUnits_Enum.kilovolt_amperes_reactive
            case "megavolt_amperes_reactive" => EngineeringUnits_Enum.megavolt_amperes_reactive
            case "degrees_phase" => EngineeringUnits_Enum.degrees_phase
            case "power_factor" => EngineeringUnits_Enum.power_factor
            case "joules" => EngineeringUnits_Enum.joules
            case "kilojoules" => EngineeringUnits_Enum.kilojoules
            case "watt_hours" => EngineeringUnits_Enum.watt_hours
            case "kilowatt_hours" => EngineeringUnits_Enum.kilowatt_hours
            case "btus" => EngineeringUnits_Enum.btus
            case "therms" => EngineeringUnits_Enum.therms
            case "ton_hours" => EngineeringUnits_Enum.ton_hours
            case "joules_per_kilogram_dry_air" => EngineeringUnits_Enum.joules_per_kilogram_dry_air
            case "btus_per_pound_dry_air" => EngineeringUnits_Enum.btus_per_pound_dry_air
            case "cycles_per_hour" => EngineeringUnits_Enum.cycles_per_hour
            case "cycles_per_minute" => EngineeringUnits_Enum.cycles_per_minute
            case "hertz" => EngineeringUnits_Enum.hertz
            case "grams_of_water_per_kilogram_dry_air" => EngineeringUnits_Enum.grams_of_water_per_kilogram_dry_air
            case "percent_relative_humidity" => EngineeringUnits_Enum.percent_relative_humidity
            case "millimeters" => EngineeringUnits_Enum.millimeters
            case "meters" => EngineeringUnits_Enum.meters
            case "inches" => EngineeringUnits_Enum.inches
            case "feet" => EngineeringUnits_Enum.feet
            case "watts_per_square_foot" => EngineeringUnits_Enum.watts_per_square_foot
            case "watts_per_square_meter" => EngineeringUnits_Enum.watts_per_square_meter
            case "lumens" => EngineeringUnits_Enum.lumens
            case "luxes" => EngineeringUnits_Enum.luxes
            case "foot_candles" => EngineeringUnits_Enum.foot_candles
            case "kilograms" => EngineeringUnits_Enum.kilograms
            case "pounds_mass" => EngineeringUnits_Enum.pounds_mass
            case "tons" => EngineeringUnits_Enum.tons
            case "kilograms_per_second" => EngineeringUnits_Enum.kilograms_per_second
            case "kilograms_per_minute" => EngineeringUnits_Enum.kilograms_per_minute
            case "kilograms_per_hour" => EngineeringUnits_Enum.kilograms_per_hour
            case "pounds_mass_per_minute" => EngineeringUnits_Enum.pounds_mass_per_minute
            case "pounds_mass_per_hour" => EngineeringUnits_Enum.pounds_mass_per_hour
            case "watts" => EngineeringUnits_Enum.watts
            case "kilowatts" => EngineeringUnits_Enum.kilowatts
            case "megawatts" => EngineeringUnits_Enum.megawatts
            case "btus_per_hour" => EngineeringUnits_Enum.btus_per_hour
            case "horsepower" => EngineeringUnits_Enum.horsepower
            case "tons_refrigeration" => EngineeringUnits_Enum.tons_refrigeration
            case "pascals" => EngineeringUnits_Enum.pascals
            case "kilopascals" => EngineeringUnits_Enum.kilopascals
            case "bars" => EngineeringUnits_Enum.bars
            case "pounds_force_per_square_inch" => EngineeringUnits_Enum.pounds_force_per_square_inch
            case "centimeters_of_water" => EngineeringUnits_Enum.centimeters_of_water
            case "inches_of_water" => EngineeringUnits_Enum.inches_of_water
            case "millimeters_of_mercury" => EngineeringUnits_Enum.millimeters_of_mercury
            case "centimeters_of_mercury" => EngineeringUnits_Enum.centimeters_of_mercury
            case "inches_of_mercury" => EngineeringUnits_Enum.inches_of_mercury
            case "degrees_celsius" => EngineeringUnits_Enum.degrees_celsius
            case "degrees_kelvin" => EngineeringUnits_Enum.degrees_kelvin
            case "degrees_fahrenheit" => EngineeringUnits_Enum.degrees_fahrenheit
            case "degree_days_celsius" => EngineeringUnits_Enum.degree_days_celsius
            case "degree_days_fahrenheit" => EngineeringUnits_Enum.degree_days_fahrenheit
            case "years" => EngineeringUnits_Enum.years
            case "months" => EngineeringUnits_Enum.months
            case "weeks" => EngineeringUnits_Enum.weeks
            case "days" => EngineeringUnits_Enum.days
            case "hours" => EngineeringUnits_Enum.hours
            case "minutes" => EngineeringUnits_Enum.minutes
            case "seconds" => EngineeringUnits_Enum.seconds
            case "meters_per_second" => EngineeringUnits_Enum.meters_per_second
            case "kilometers_per_hour" => EngineeringUnits_Enum.kilometers_per_hour
            case "feet_per_second" => EngineeringUnits_Enum.feet_per_second
            case "feet_per_minute" => EngineeringUnits_Enum.feet_per_minute
            case "miles_per_hour" => EngineeringUnits_Enum.miles_per_hour
            case "cubic_feet" => EngineeringUnits_Enum.cubic_feet
            case "cubic_meters" => EngineeringUnits_Enum.cubic_meters
            case "imperial_gallons" => EngineeringUnits_Enum.imperial_gallons
            case "liters" => EngineeringUnits_Enum.liters
            case "us_gallons" => EngineeringUnits_Enum.us_gallons
            case "cubic_feet_per_minute" => EngineeringUnits_Enum.cubic_feet_per_minute
            case "cubic_meters_per_second" => EngineeringUnits_Enum.cubic_meters_per_second
            case "imperial_gallons_per_minute" => EngineeringUnits_Enum.imperial_gallons_per_minute
            case "liters_per_second" => EngineeringUnits_Enum.liters_per_second
            case "liters_per_minute" => EngineeringUnits_Enum.liters_per_minute
            case "us_gallons_per_minute" => EngineeringUnits_Enum.us_gallons_per_minute
            case "degrees_angular" => EngineeringUnits_Enum.degrees_angular
            case "degrees_celsius_per_hour" => EngineeringUnits_Enum.degrees_celsius_per_hour
            case "degrees_celsius_per_minute" => EngineeringUnits_Enum.degrees_celsius_per_minute
            case "degrees_fahrenheit_per_hour" => EngineeringUnits_Enum.degrees_fahrenheit_per_hour
            case "degrees_fahrenheit_per_minute" => EngineeringUnits_Enum.degrees_fahrenheit_per_minute
            case "no_units" => EngineeringUnits_Enum.no_units
            case "parts_per_million" => EngineeringUnits_Enum.parts_per_million
            case "parts_per_billion" => EngineeringUnits_Enum.parts_per_billion
            case "percent" => EngineeringUnits_Enum.percent
            case "percent_per_second" => EngineeringUnits_Enum.percent_per_second
            case "per_minute" => EngineeringUnits_Enum.per_minute
            case "per_second" => EngineeringUnits_Enum.per_second
            case "psi_per_degree_fahrenheit" => EngineeringUnits_Enum.psi_per_degree_fahrenheit
            case "radians" => EngineeringUnits_Enum.radians
            case "revolutions_per_minute" => EngineeringUnits_Enum.revolutions_per_minute
            case "currency1" => EngineeringUnits_Enum.currency1
            case "currency2" => EngineeringUnits_Enum.currency2
            case "currency3" => EngineeringUnits_Enum.currency3
            case "currency4" => EngineeringUnits_Enum.currency4
            case "currency5" => EngineeringUnits_Enum.currency5
            case "currency6" => EngineeringUnits_Enum.currency6
            case "currency7" => EngineeringUnits_Enum.currency7
            case "currency8" => EngineeringUnits_Enum.currency8
            case "currency9" => EngineeringUnits_Enum.currency9
            case "currency10" => EngineeringUnits_Enum.currency10
            case "square_inches" => EngineeringUnits_Enum.square_inches
            case "square_centimeters" => EngineeringUnits_Enum.square_centimeters
            case "btus_per_pound" => EngineeringUnits_Enum.btus_per_pound
            case "centimeters" => EngineeringUnits_Enum.centimeters
            case "pounds_mass_per_second" => EngineeringUnits_Enum.pounds_mass_per_second
            case "delta_degrees_fahrenheit" => EngineeringUnits_Enum.delta_degrees_fahrenheit
            case "delta_degrees_kelvin" => EngineeringUnits_Enum.delta_degrees_kelvin
            case "kiloohms" => EngineeringUnits_Enum.kiloohms
            case "megaohms" => EngineeringUnits_Enum.megaohms
            case "millivolts" => EngineeringUnits_Enum.millivolts
            case "kilojoules_per_kilogram" => EngineeringUnits_Enum.kilojoules_per_kilogram
            case "megajoules" => EngineeringUnits_Enum.megajoules
            case "joules_per_degree_kelvin" => EngineeringUnits_Enum.joules_per_degree_kelvin
            case "joules_per_kilogram_degree_kelvin" => EngineeringUnits_Enum.joules_per_kilogram_degree_kelvin
            case "kilohertz" => EngineeringUnits_Enum.kilohertz
            case "megahertz" => EngineeringUnits_Enum.megahertz
            case "per_hour" => EngineeringUnits_Enum.per_hour
            case "milliwatts" => EngineeringUnits_Enum.milliwatts
            case "hectopascals" => EngineeringUnits_Enum.hectopascals
            case "millibars" => EngineeringUnits_Enum.millibars
            case "cubic_meters_per_hour" => EngineeringUnits_Enum.cubic_meters_per_hour
            case "liters_per_hour" => EngineeringUnits_Enum.liters_per_hour
            case "kilowatt_hours_per_square_meter" => EngineeringUnits_Enum.kilowatt_hours_per_square_meter
            case "kilowatt_hours_per_square_foot" => EngineeringUnits_Enum.kilowatt_hours_per_square_foot
            case "megajoules_per_square_meter" => EngineeringUnits_Enum.megajoules_per_square_meter
            case "megajoules_per_square_foot" => EngineeringUnits_Enum.megajoules_per_square_foot
            case "watts_per_square_meter_degree_kelvin" => EngineeringUnits_Enum.watts_per_square_meter_degree_kelvin
            case "cubic_feet_per_second" => EngineeringUnits_Enum.cubic_feet_per_second
            case "percent_obscuration_per_foot" => EngineeringUnits_Enum.percent_obscuration_per_foot
            case "percent_obscuration_per_meter" => EngineeringUnits_Enum.percent_obscuration_per_meter
            case "milliohms" => EngineeringUnits_Enum.milliohms
            case "megawatt_hours" => EngineeringUnits_Enum.megawatt_hours
            case "kilo_btus" => EngineeringUnits_Enum.kilo_btus
            case "mega_btus" => EngineeringUnits_Enum.mega_btus
            case "kilojoules_per_kilogram_dry_air" => EngineeringUnits_Enum.kilojoules_per_kilogram_dry_air
            case "megajoules_per_kilogram_dry_air" => EngineeringUnits_Enum.megajoules_per_kilogram_dry_air
            case "kilojoules_per_degree_kelvin" => EngineeringUnits_Enum.kilojoules_per_degree_kelvin
            case "megajoules_per_degree_kelvin" => EngineeringUnits_Enum.megajoules_per_degree_kelvin
            case "newton" => EngineeringUnits_Enum.newton
            case "grams_per_second" => EngineeringUnits_Enum.grams_per_second
            case "grams_per_minute" => EngineeringUnits_Enum.grams_per_minute
            case "tons_per_hour" => EngineeringUnits_Enum.tons_per_hour
            case "kilo_btus_per_hour" => EngineeringUnits_Enum.kilo_btus_per_hour
            case "hundredths_seconds" => EngineeringUnits_Enum.hundredths_seconds
            case "milliseconds" => EngineeringUnits_Enum.milliseconds
            case "newton_meters" => EngineeringUnits_Enum.newton_meters
            case "millimeters_per_second" => EngineeringUnits_Enum.millimeters_per_second
            case "millimeters_per_minute" => EngineeringUnits_Enum.millimeters_per_minute
            case "meters_per_minute" => EngineeringUnits_Enum.meters_per_minute
            case "meters_per_hour" => EngineeringUnits_Enum.meters_per_hour
            case "cubic_meters_per_minute" => EngineeringUnits_Enum.cubic_meters_per_minute
            case "meters_per_second_per_second" => EngineeringUnits_Enum.meters_per_second_per_second
            case "amperes_per_meter" => EngineeringUnits_Enum.amperes_per_meter
            case "amperes_per_square_meter" => EngineeringUnits_Enum.amperes_per_square_meter
            case "ampere_square_meters" => EngineeringUnits_Enum.ampere_square_meters
            case "farads" => EngineeringUnits_Enum.farads
            case "henrys" => EngineeringUnits_Enum.henrys
            case "ohm_meters" => EngineeringUnits_Enum.ohm_meters
            case "siemens" => EngineeringUnits_Enum.siemens
            case "siemens_per_meter" => EngineeringUnits_Enum.siemens_per_meter
            case "teslas" => EngineeringUnits_Enum.teslas
            case "volts_per_degree_kelvin" => EngineeringUnits_Enum.volts_per_degree_kelvin
            case "volts_per_meter" => EngineeringUnits_Enum.volts_per_meter
            case "webers" => EngineeringUnits_Enum.webers
            case "candelas" => EngineeringUnits_Enum.candelas
            case "candelas_per_square_meter" => EngineeringUnits_Enum.candelas_per_square_meter
            case "degrees_kelvin_per_hour" => EngineeringUnits_Enum.degrees_kelvin_per_hour
            case "degrees_kelvin_per_minute" => EngineeringUnits_Enum.degrees_kelvin_per_minute
            case "joule_seconds" => EngineeringUnits_Enum.joule_seconds
            case "radians_per_second" => EngineeringUnits_Enum.radians_per_second
            case "square_meters_per_newton" => EngineeringUnits_Enum.square_meters_per_newton
            case "kilograms_per_cubic_meter" => EngineeringUnits_Enum.kilograms_per_cubic_meter
            case "newton_seconds" => EngineeringUnits_Enum.newton_seconds
            case "watts_per_meter_per_degree_kelvin" => EngineeringUnits_Enum.watts_per_meter_per_degree_kelvin
            case "microsiemens" => EngineeringUnits_Enum.microsiemens
            case "cubic_feet_per_hour" => EngineeringUnits_Enum.cubic_feet_per_hour
            case "us_gallons_per_hour" => EngineeringUnits_Enum.us_gallons_per_hour
            case "kilometers" => EngineeringUnits_Enum.kilometers
            case "micrometers" => EngineeringUnits_Enum.micrometers
            case "grams" => EngineeringUnits_Enum.grams
            case "milligrams" => EngineeringUnits_Enum.milligrams
            case "milliliters" => EngineeringUnits_Enum.milliliters
            case "milliliters_per_second" => EngineeringUnits_Enum.milliliters_per_second
            case "decibels" => EngineeringUnits_Enum.decibels
            case "decibels_millivolt" => EngineeringUnits_Enum.decibels_millivolt
            case "decibels_volt" => EngineeringUnits_Enum.decibels_volt
            case "millisiemens" => EngineeringUnits_Enum.millisiemens
            case "watt_hours_reactive" => EngineeringUnits_Enum.watt_hours_reactive
            case "kilowatt_hours_reactive" => EngineeringUnits_Enum.kilowatt_hours_reactive
            case "megawatt_hours_reactive" => EngineeringUnits_Enum.megawatt_hours_reactive
            case "per_mille" => EngineeringUnits_Enum.per_mille
            case "grams_per_gram" => EngineeringUnits_Enum.grams_per_gram
            case "kilograms_per_kilogram" => EngineeringUnits_Enum.kilograms_per_kilogram
            case "grams_per_kilogram" => EngineeringUnits_Enum.grams_per_kilogram
            case "milligrams_per_gram" => EngineeringUnits_Enum.milligrams_per_gram
            case "milligrams_per_kilogram" => EngineeringUnits_Enum.milligrams_per_kilogram
            case "grams_per_milliliter" => EngineeringUnits_Enum.grams_per_milliliter
            case "grams_per_liter" => EngineeringUnits_Enum.grams_per_liter
            case "milligrams_per_liter" => EngineeringUnits_Enum.milligrams_per_liter
            case "micrograms_per_liter" => EngineeringUnits_Enum.micrograms_per_liter
            case "grams_per_cubic_meter" => EngineeringUnits_Enum.grams_per_cubic_meter
            case "milligrams_per_cubic_meter" => EngineeringUnits_Enum.milligrams_per_cubic_meter
            case "micrograms_per_cubic_meter" => EngineeringUnits_Enum.micrograms_per_cubic_meter
            case "nanograms_per_cubic_meter" => EngineeringUnits_Enum.nanograms_per_cubic_meter
            case "grams_per_cubic_centimeter" => EngineeringUnits_Enum.grams_per_cubic_centimeter
            case "becquerels" => EngineeringUnits_Enum.becquerels
            case "kilobecquerels" => EngineeringUnits_Enum.kilobecquerels
            case "megabecquerels" => EngineeringUnits_Enum.megabecquerels
            case "gray" => EngineeringUnits_Enum.gray
            case "milligray" => EngineeringUnits_Enum.milligray
            case "microgray" => EngineeringUnits_Enum.microgray
            case "sieverts" => EngineeringUnits_Enum.sieverts
            case "millisieverts" => EngineeringUnits_Enum.millisieverts
            case "microsieverts" => EngineeringUnits_Enum.microsieverts
            case "microsieverts_per_hour" => EngineeringUnits_Enum.microsieverts_per_hour
            case "decibels_a" => EngineeringUnits_Enum.decibels_a
            case "nephelometric_turbidity_unit" => EngineeringUnits_Enum.nephelometric_turbidity_unit
            case "ph" => EngineeringUnits_Enum.ph
            case "grams_per_square_meter" => EngineeringUnits_Enum.grams_per_square_meter
            case "minutes_per_degree_kelvin" => EngineeringUnits_Enum.minutes_per_degree_kelvin
            case "ohm_meter_squared_per_meter" => EngineeringUnits_Enum.ohm_meter_squared_per_meter
            case "ampere_seconds" => EngineeringUnits_Enum.ampere_seconds
            case "volt_ampere_hours" => EngineeringUnits_Enum.volt_ampere_hours
            case "kilovolt_ampere_hours" => EngineeringUnits_Enum.kilovolt_ampere_hours
            case "megavolt_ampere_hours" => EngineeringUnits_Enum.megavolt_ampere_hours
            case "volt_ampere_hours_reactive" => EngineeringUnits_Enum.volt_ampere_hours_reactive
            case "kilovolt_ampere_hours_reactive" => EngineeringUnits_Enum.kilovolt_ampere_hours_reactive
            case "megavolt_ampere_hours_reactive" => EngineeringUnits_Enum.megavolt_ampere_hours_reactive
            case "volt_square_hours" => EngineeringUnits_Enum.volt_square_hours
            case "ampere_square_hours" => EngineeringUnits_Enum.ampere_square_hours
            case "joule_per_hours" => EngineeringUnits_Enum.joule_per_hours
            case "cubic_feet_per_day" => EngineeringUnits_Enum.cubic_feet_per_day
            case "cubic_meters_per_day" => EngineeringUnits_Enum.cubic_meters_per_day
            case "watt_hours_per_cubic_meter" => EngineeringUnits_Enum.watt_hours_per_cubic_meter
            case "joules_per_cubic_meter" => EngineeringUnits_Enum.joules_per_cubic_meter
            case "mole_percent" => EngineeringUnits_Enum.mole_percent
            case "pascal_seconds" => EngineeringUnits_Enum.pascal_seconds
            case "million_standard_cubic_feet_per_minute" => EngineeringUnits_Enum.million_standard_cubic_feet_per_minute
            case "standard_cubic_feet_per_day" => EngineeringUnits_Enum.standard_cubic_feet_per_day
            case "million_standard_cubic_feet_per_day" => EngineeringUnits_Enum.million_standard_cubic_feet_per_day
            case "thousand_cubic_feet_per_day" => EngineeringUnits_Enum.thousand_cubic_feet_per_day
            case "thousand_standard_cubic_feet_per_day" => EngineeringUnits_Enum.thousand_standard_cubic_feet_per_day
            case "pounds_mass_per_day" => EngineeringUnits_Enum.pounds_mass_per_day
            case "millirems" => EngineeringUnits_Enum.millirems
            case "millirems_per_hour" => EngineeringUnits_Enum.millirems_per_hour
            case "degrees_lovibond" => EngineeringUnits_Enum.degrees_lovibond
            case "alcohol_by_volume" => EngineeringUnits_Enum.alcohol_by_volume
            case "international_bittering_units" => EngineeringUnits_Enum.international_bittering_units
            case "european_bitterness_units" => EngineeringUnits_Enum.european_bitterness_units
            case "degrees_plato" => EngineeringUnits_Enum.degrees_plato
            case "specific_gravity" => EngineeringUnits_Enum.specific_gravity
            case "european_brewing_convention" => EngineeringUnits_Enum.european_brewing_convention
            case _s where _s.startsWith("reserved_") =>
                let _numStr = _s.removePrefix("reserved_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EngineeringUnits_Enum.reserved(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _n where _n.startsWith("non_standardized_") =>
                let _numStr = _n.removePrefix("non_standardized_")
                try {
                    let _num_Option = UInt32.tryParse(_numStr)
                    match (_num_Option) {
                        case None => throw EncodeException("转换错误.输入字符串为无效标签")
                        case Some(x) => EngineeringUnits_Enum.non_standardized(x)
                    }
                } catch (e: Exception) {
                    throw EncodeException("转换错误.输入字符串为无效标签")
                }
            case _ => throw EncodeException("转换错误.输入字符串为无效标签")
        }
    }
}

/*
--ISO_16484_5_2022_Page_902
--21.6 Base Types

BACnetEngineeringUnits ::= ENUMERATED {  -- See below for numerical order -- Acceleration
 meters-per-second-per-second (166),
 --Area
 square-meters (0),
 square-centimeters (116),
 square-feet (1),
 square-inches (115),
 --Currency
 currency1 (105),
 currency2 (106),
 currency3 (107),
 currency4 (108),
 currency5 (109),
 currency6 (110),
 currency7 (111),
 currency8 (112),
 currency9 (113),
 currency10 (114),
 --Electrical
 milliamperes (2),
 amperes (3),
 amperes-per-meter (167),
 amperes-per-square-meter (168),
 ampere-square-meters (169),
 decibels (199),
 decibels-millivolt (200),
 decibels-volt (201),
 farads (170),
 henrys (171),
 ohms (4),
 ohm-meter-squared-per-meter (237),
 ohm-meters (172),
 milliohms (145),
 kiloohms (122),
 megaohms (123),
 microsiemens (190),
 millisiemens (202),
 siemens (173),
 siemens-per-meter (174),
 teslas (175),
 volts (5),
 millivolts (124),
 kilovolts (6),
 megavolts (7),
 volt-amperes (8),
 kilovolt-amperes (9),
 megavolt-amperes (10),
 volt-amperes-reactive (11),
 kilovolt-amperes-reactive (12),
 megavolt-amperes-reactive (13),
 volts-per-degree-kelvin (176),
 volts-per-meter (177),
 degrees-phase (14),
 power-factor (15),
 webers (178),
 --Energy
 ampere-seconds  (238),
 volt-ampere-hours  (239), -- i.e. VAh
 kilovolt-ampere-hours  (240),
 megavolt-ampere-hours  (241),
 volt-ampere-hours-reactive  (242), -- i.e. varh
 kilovolt-ampere-hours-reactive  (243),
 megavolt-ampere-hours-reactive  (244),
 volt-square-hours  (245),
 ampere-square-hours  (246),
 joules (16),
 kilojoules (17),
 kilojoules-per-kilogram (125),
 megajoules (126),
 watt-hours (18),
 kilowatt-hours (19),
 megawatt-hours (146),
 watt-hours-reactive (203),
 kilowatt-hours-reactive (204),
 megawatt-hours-reactive (205),
 btus (20),
 kilo-btus (147),
 mega-btus (148),
 therms (21),
 ton-hours (22),
 --Enthalpy
 joules-per-kilogram-dry-air (23),
 kilojoules-per-kilogram-dry-air (149),
 megajoules-per-kilogram-dry-air (150),
 btus-per-pound-dry-air (24),
 btus-per-pound (117),
 --Entropy
 joules-per-degree-kelvin (127),
 kilojoules-per-degree-kelvin (151),
 megajoules-per-degree-kelvin (152),
 joules-per-kilogram-degree-kelvin (128),
 -- Force
 newton (153),
 --Frequency
 cycles-per-hour (25),
 cycles-per-minute (26),
 hertz (27),
 kilohertz (129),
 megahertz (130),
 per-hour (131),
 --Humidity
 grams-of-water-per-kilogram-dry-air (28),
 percent-relative-humidity (29),
 --Length
 micrometers (194),
 millimeters (30),
 centimeters (118),
 kilometers (193),
 meters (31),
 inches (32),
 feet (33),
 --Light
 candelas (179),
 candelas-per-square-meter (180),
 watts-per-square-foot (34),
 watts-per-square-meter (35),
 lumens (36),
 luxes (37),
 foot-candles (38),
 --Mass
 milligrams (196),
 grams (195),
 kilograms (39),
 pounds-mass (40),
 tons (41),
 --Mass Flow
 grams-per-second (154),
 grams-per-minute (155),
 kilograms-per-second (42),
 kilograms-per-minute (43),
 kilograms-per-hour (44),
 pounds-mass-per-second (119),
 pounds-mass-per-minute (45),
 pounds-mass-per-hour (46),
 tons-per-hour (156),
 --Power
 milliwatts (132),
 watts (47),
 kilowatts (48),
 megawatts (49),
 btus-per-hour (50),
 kilo-btus-per-hour (157),
 joule-per-hours  (247),
 horsepower (51),
 tons-refrigeration (52),
 --Pressure
 pascals (53),
 hectopascals (133),
 kilopascals (54),
 millibars (134),
 bars (55),
 pounds-force-per-square-inch (56),
 millimeters-of-water 206),
 centimeters-of-water (57),
 inches-of-water (58),
 millimeters-of-mercury (59),
 centimeters-of-mercury (60),
 inches-of-mercury (61),
 --Temperature
 degrees-celsius (62),
 degrees-kelvin (63),
 degrees-kelvin-per-hour (181),
 degrees-kelvin-per-minute (182),
 degrees-fahrenheit (64),
 degree-days-celsius (65),
 degree-days-fahrenheit (66),
 delta-degrees-fahrenheit (120),
 delta-degrees-kelvin (121),
 --Time
 years (67),
 months (68),
 weeks (69),
 days (70),
 hours (71),
 minutes (72),
 seconds (73),
 hundredths-seconds (158),
 milliseconds (159),
 --Torque
 newton-meters (160),
 --Velocity
 millimeters-per-second (161),
 millimeters-per-minute (162),
 meters-per-second (74),
 meters-per-minute (163),
 meters-per-hour (164),
 kilometers-per-hour (75),
 feet-per-second (76),
 feet-per-minute (77),
 miles-per-hour (78),
 --Volume
 cubic-feet (79),
 cubic-meters (80),
 imperial-gallons (81),
 milliliters (197),
 liters (82),
 us-gallons (83),
 --Volumetric Flow
 cubic-feet-per-second (142),
 cubic-feet-per-minute (84),
 million-standard-cubic-feet-per-minute (254),
 cubic-feet-per-hour (191),
 cubic-feet-per-day  (248),
 standard-cubic-feet-per-day (47808),
 million-standard-cubic-feet-per-day (47809),
 thousand-cubic-feet-per-day (47810),
 thousand-standard-cubic-feet-per-day (47811),
 pounds-mass-per-day (47812),
 cubic-meters-per-second (85),
 cubic-meters-per-minute (165),
 cubic-meters-per-hour (135),
 cubic-meters-per-day  (249),
 imperial-gallons-per-minute (86),
 milliliters-per-second (198),
 liters-per-second (87),
 liters-per-minute (88),
 liters-per-hour (136),
 us-gallons-per-minute (89),
 us-gallons-per-hour (192),
 --Other
 degrees-angular (90),
 degrees-celsius-per-hour (91),
 degrees-celsius-per-minute (92),
 degrees-fahrenheit-per-hour (93),
 degrees-fahrenheit-per-minute (94),
 joule-seconds (183),
 kilograms-per-cubic-meter (186),
 kilowatt-hours-per-square-meter (137),
 kilowatt-hours-per-square-foot (138),
 watt-hours-per-cubic-meter  (250),
 joules-per-cubic-meter  (251),
 megajoules-per-square-meter (139),
 megajoules-per-square-foot (140),
 mole-percent  (252),
 no-units (95),
 newton-seconds (187),
 newtons-per-meter 188),
 parts-per-million (96),
 parts-per-billion (97),
 pascal-seconds  (253),
 percent (98),
 percent-obscuration-per-foot (143),
 percent-obscuration-per-meter (144),
 percent-per-second (99),
 per-minute (100),
 per-second (101),
 psi-per-degree-fahrenheit (102),
 radians (103),
 radians-per-second (184),
 revolutions-per-minute (104),
 square-meters-per-newton (185),
 watts-per-meter-per-degree-kelvin (189),
 watts-per-square-meter-degree-kelvin (141),
 per-mille (207),
 grams-per-gram (208),
 kilograms-per-kilogram (209),
 grams-per-kilogram (210),
 milligrams-per-gram (211),
 milligrams-per-kilogram (212),
 grams-per-milliliter (213),
 grams-per-liter (214),
 milligrams-per-liter (215),
 micrograms-per-liter (216),
 grams-per-cubic-meter (217),
 milligrams-per-cubic-meter (218),
 micrograms-per-cubic-meter (219),
 nanograms-per-cubic-meter (220),
 grams-per-cubic-centimeter (221),
 becquerels (222),
 kilobecquerels (223),
 megabecquerels (224),
 gray (225),
 milligray (226),
 microgray (227),
 sieverts (228),
 millisieverts (229),
 microsieverts (230),
 microsieverts-per-hour (231),
 millirems (47814),
 millirems-per-hour (47815),
 decibels-a (232),
 nephelometric-turbidity-unit (233),
 pH (234),
 grams-per-square-meter (235),
 minutes-per-degree-kelvin (236),
 degrees-lovibond (47816),
 alcohol-by-volume (47817),
 international-bittering-units  (47818),
 european-bitterness-units (47819),
 degrees-plato (47820),
 specific-gravity (47821),
 european-brewing-convention (47822)
-- Numerical Order Reference
 -- see square-meters  (0),
 -- see square-feet  (1),
 -- see milliamperes  (2),
 -- see amperes  (3),
 -- see ohms  (4),
 -- see volts  (5),
 -- see kilovolts  (6),
 -- see megavolts  (7),
 -- see volt-amperes  (8),
 -- see kilovolt-amperes  (9),
 -- see megavolt-amperes  (10),
 -- see volt-amperes-reactive  (11),
 -- see kilovolt-amperes-reactive  (12),
 -- see megavolt-amperes-reactive  (13),
 -- see degrees-phase  (14),
 -- see power-factor  (15),
 -- see joules  (16),
 -- see kilojoules  (17),
 -- see watt-hours  (18),
 -- see kilowatt-hours  (19),
 -- see btus  (20),
 -- see therms  21),
 -- see ton-hours  (22),
 -- see joules-per-kilogram-dry-air  (23),
 -- see btus-per-pound-dry-air  (24),
 -- see cycles-per-hour  (25),
 -- see cycles-per-minute  (26),
 -- see hertz  (27),
 -- see grams-of-water-per-kilogram-dry-air (28),
 -- see percent-relative-humidity  (29),
 -- see millimeters  (30),
 -- see meters  (31),
 -- see inches  (32),
 -- see feet  (33),
 -- see watts-per-square-foot  (34),
 -- see watts-per-square-meter  (35),
 -- see lumens  (36),
 -- see luxes  (37),
 -- see foot-candles  (38),
 -- see kilograms  (39),
 -- see pounds-mass  (40),
 -- see tons  (41),
 -- see kilograms-per-second  (42),
 -- see kilograms-per-minute  (43),
 -- see kilograms-per-hour  (44),
 -- see pounds-mass-per-minute  (45),
 -- see pounds-mass-per-hour  (46),
 -- see watts  (47),
 -- see kilowatts  (48),
 -- see megawatts  (49),
 -- see btus-per-hour  (50),
 -- see horsepower  (51),
 -- see tons-refrigeration  (52),
 -- see pascals  (53),
 -- see kilopascals  (54),
 -- see bars  (55),
 -- see pounds-force-per-square-inch  (56),
 -- see centimeters-of-water  (57),
 -- see inches-of-water  (58),
 -- see millimeters-of-mercury  (59),
 -- see centimeters-of-mercury  (60),
 -- see inches-of-mercury  (61),
 -- see degrees-celsius  (62),
 -- see degrees-kelvin  (63),
 -- see degrees-fahrenheit  (64),
 -- see degree-days-celsius  (65),
 -- see degree-days-fahrenheit  (66),
 -- see years  (67),
 -- see months  (68),
 -- see weeks  (69),
 -- see days  (70),
 -- see hours  (71),
 -- see minutes  (72),
 -- see seconds  (73),
 -- see meters-per-second  (74),
 -- see kilometers-per-hour  (75),
 -- see feet-per-second  (76),
 -- see feet-per-minute  (77),
 -- see miles-per-hour  (78),
 -- see cubic-feet  (79),
 -- see cubic-meters  (80),
 -- see imperial-gallons  (81),
 -- see liters  (82),
 -- see us-gallons  (83),
 -- see cubic-feet-per-minute  (84),
 -- see cubic-meters-per-second  (85),
 -- see imperial-gallons-per-minute  (86),
 -- see liters-per-second  (87),
 -- see liters-per-minute  (88),
 -- see us-gallons-per-minute  (89),
 -- see degrees-angular  (90),
 -- see degrees-celsius-per-hour  (91),
 -- see degrees-celsius-per-minute  (92),
 -- see degrees-fahrenheit-per-hour  (93),
 -- see degrees-fahrenheit-per-minute  (94),
 -- see no-units  (95),
 -- see parts-per-million  (96),
 -- see parts-per-billion  (97),
 -- see percent  (98),
 -- see percent-per-second  (99),
 -- see per-minute  (100),
 -- see per-second  (101),
 -- see psi-per-degree-fahrenheit  (102),
 -- see radians  (103),
 -- see revolutions-per-minute  (104),
 -- see currency1  (105),
 -- see currency2  (106),
 -- see currency3  (107),
 -- see currency4  (108),
 -- see currency5  (109),
 -- see currency6  (110),
 -- see currency7  (111),
 -- see currency8  (112),
 -- see currency9  (113),
 -- see currency10  (114),
 -- see square-inches  (115),
 -- see square-centimeters  (116),
 -- see btus-per-pound  (117),
 -- see centimeters  (118),
 -- see pounds-mass-per-second  (119),
 -- see delta-degrees-fahrenheit  (120),
 -- see delta-degrees-kelvin  (121),
 -- see kilohms  (122),
 -- see megohms  (123),
 -- see millivolts  (124),
 -- see kilojoules-per-kilogram  (125),
 -- see megajoules  (126),
 -- see joules-per-degree-kelvin  (127),
 -- see joules-per-kilogram-degree-kelvin (128),
 -- see kilohertz  (129),
 -- see megahertz  (130),
 -- see per-hour  (131),
 -- see milliwatts  (132),
 -- see hectopascals  (133),
 -- see millibars  (134),
 -- see cubic-meters-per-hour  (135),
 -- see liters-per-hour  (136),
 -- see kilowatt-hours-per-square-meter (137),
 -- see kilowatt-hours-per-square-foot (138),
 -- see megajoules-per-square-meter  (139),
 -- see megajoules-per-square-foot  (140),
 -- see watts-per-square-meter-degree-kelvin (141),
 -- see cubic-feet-per-second  (142),
 -- see percent-obscuration-per-foot  (143),
 -- see percent-obscuration-per-meter  (144),
 -- see milliohms  (145),
 -- see megawatt-hours  (146),
 -- see kilo-btus  (147),
 -- see mega-btus  (148),
 -- see kilojoules-per-kilogram-dry-air (149),
 -- see megajoules-per-kilogram-dry-air (150),
 -- see kilojoules-per-degree-kelvin  (151),
 -- see megajoules-per-degree-kelvin  (152),
 -- see newton  (153),
 -- see grams-per-second  (154),
 -- see grams-per-minute  (155),
 -- see tons-per-hour  (156),
 -- see kilo-btus-per-hour  (157),
 -- see hundredths-seconds  (158),
 -- see milliseconds  (159),
 -- see newton-meters  (160),
 -- see millimeters-per-second  (161),
 -- see millimeters-per-minute  (162),
 -- see meters-per-minute  (163),
 -- see meters-per-hour  (164),
 -- see cubic-meters-per-minute  (165),
 -- see meters-per-second-per-second  (166),
 -- see amperes-per-meter  (167),
 -- see amperes-per-square-meter  (168),
 -- see ampere-square-meters  (169),
 -- see farads  (170),
 -- see henrys  (171),
 -- see ohm-meters  (172),
 -- see siemens  (173),
 -- see siemens-per-meter  (174),
 -- see teslas  (175),
 -- see volts-per-degree-kelvin  (176),
 -- see volts-per-meter  (177),
 -- see webers  (178),
 -- see candelas  (179),
 -- see candelas-per-square-meter  (180),
 -- see degrees-kelvin-per-hour  (181),
 -- see degrees-kelvin-per-minute  (182),
 -- see joule-seconds  (183),
 -- see radians-per-second  (184),
 -- see square-meters-per-newton  (185),
 -- see kilograms-per-cubic-meter  (186),
 -- see newton-seconds  (187),
 -- see newtons-per-meter  (188),
 -- see watts-per-meter-per-degree-kelvin (189),
 -- see micro-siemens  (190),
 -- see cubic-feet-per-hour  (191),
 -- see us-gallons-per-hour  (192),
 -- see kilometers  (193),
 -- see micrometers  (194),
 -- see grams  (195),
 -- see milligrams  (196),
 -- see milliliters  (197),
 -- see milliliters-per-second  (198),
 -- see decibels  (199),
 -- see decibels-millivolt  (200),
 -- see decibels-volt  (201),
 -- see millisiemens  (202),
 -- see watt-hours-reactive  (203),
 -- see kilowatt-hours-reactive  (204),
 -- see megawatt-hours-reactive  (205),
 -- see millimeters-of-water  (206),
 -- see per-mille  (207),
 -- see grams-per-gram  (208),
 -- see kilograms-per-kilogram  (209),
 -- see grams-per-kilogram  (210),
 -- see milligrams-per-gram  (211),
 -- see milligrams-per-kilogram  (212),
 -- see grams-per-milliliter  (213),
 -- see grams-per-liter  (214),
 -- see milligrams-per-liter  (215),
 -- see micrograms-per-liter  (216),
 -- see grams-per-cubic-meter  (217),
 -- see milligrams-per-cubic-meter  (218),
 -- see micrograms-per-cubic-meter  (219),
 -- see nanograms-per-cubic-meter  (220),
 -- see grams-per-cubic-centimeter  (221),
 -- see becquerels  (222),
 -- see kilobecquerels  (223),
 -- see megabecquerels  (224),
 -- see gray  (225),
 -- see milligray  (226),
 -- see microgray  (227),
 -- see sieverts  (228),
 -- see millisieverts  (229),
 -- see microsieverts  (230),
 -- see microsieverts-per-hour  (231),
 -- see decibels-a  (232),
 -- see nephelometric-turbidity-unit  (233),
 -- see pH  (234),
 -- see grams-per-square-meter  (235),
 -- see minutes-per-degree-kelvin  (236),
 -- see ohm-meter-squared-per-meter   (237),
 -- see ampere-seconds   (238),
 -- see volt-ampere-hours   (239),
 -- see kilovolt-ampere-hours   (240),
 -- see megavolt-ampere-hours   (241),
 -- see volt-ampere-hours-reactive   (242),
 -- see kilovolt-ampere-hours-reactive  (243),
 -- see megavolt-ampere-hours-reactive  (244),
 -- see volt-square-hours   (245),
 -- see ampere-square-hours  (246),
 -- see joule-per-hours   (247),
 -- see cubic-feet-per-day   (248),
 -- see cubic-meters-per-day   (249),
  -- see watt-hours-per-cubic-meter  (250),
 -- see joules-per-cubic-meter   (251),
 -- see mole-percent   (252),
 -- see pascal-seconds   (253),
 -- see million-standard-cubic-feet-per-minute (254),
 -- see standard-cubic-feet-per-day  (47808),
 -- see million-standard-cubic-feet-per-day  (47809),
 -- see thousand-cubic-feet-per-day  (47810),
 -- see thousand-standard-cubic-feet-per-day (47811),
 -- see pounds-mass-per-day  (47812),
 -- see millirems  (47814),
 -- see millirems-per-hour  (47815),
 -- see degrees-lovibond  (47816),
 -- see alcohol-by-volume  (47817),
 -- see international-bittering-units  (47818),
 -- see european-bitterness-units  (47819),
 -- see degrees-plato  (47820),
 -- see specific-gravity  (47821),
 -- see european-brewing-convention  (47822)
 ...
 }
 -- Enumerated values 0-255 and 47808-49999 are reserved for definition by ASHRAE. Enumerated values
 -- 256-47807 and 50000-65535 may be used by others subject to the procedures and constraints described
 -- in Clause 23.
--ISO_16484_5_2022_Page_913
*/
